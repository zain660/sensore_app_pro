<?php

namespace App\Http\Controllers\Api\User\Payment;

use App\Http\Controllers\Controller;
use App\Models\Currency;
use App\Models\Deposit;
use App\Models\PaymentGateway;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class SslController extends Controller
{
    public function store(Request $request)
    {
        $data = PaymentGateway::whereKeyword('sslcommerz')->first();
        if (!$request->has('deposit_number')) {
            return response()->json(['status' => false, 'data' => [], 'error' => 'Invalid Request']);
        }

        $deposit_number = $request->deposit_number;
        $order = Deposit::where('deposit_number', $deposit_number)->first();
        $curr = Currency::where('name', '=', $order->currency_code)->first();
        if ($curr->name != "BDT") {
            return redirect()->back()->with('unsuccess', 'Please Select BDT Currency For Sslcommerz .');
        }

        $item_amount = $order->amount * $order->currency_value;
        $txnid = "SSLCZ_TXN_" . uniqid();
        $order->amount = round($item_amount / $order->currency_value, 2);
        $order['method'] = $request->method;
        $order['txnid'] = $txnid;

        $order->update();
        $paydata = $data->convertAutoData();

        $post_data = array();
        $post_data['store_id'] = $paydata['store_id'];
        $post_data['store_passwd'] = $paydata['store_password'];
        $post_data['total_amount'] = $item_amount;
        $post_data['currency'] = $curr->name;
        $post_data['tran_id'] = $txnid;
        $post_data['success_url'] = action('Api\User\Payment\SslController@notify');
        $post_data['fail_url'] = route('user.deposit.send', $order->deposit_number);
        $post_data['cancel_url'] = route('user.deposit.send', $order->deposit_number);
        # $post_data['multi_card_name'] = "mastercard,visacard,amexcard";  # DISABLE TO DISPLAY ALL AVAILABLE

        # CUSTOMER INFORMATION
        // $post_data['cus_name'] = $order['customer_name'];
        // $post_data['cus_email'] = $order['customer_email'];
        // $post_data['cus_add1'] = $order['customer_address'];
        // $post_data['cus_city'] = $order['customer_city'];
        // $post_data['cus_state'] = '';
        // $post_data['cus_postcode'] = $order['customer_zip'];
        // $post_data['cus_country'] = $order['customer_country'];
        // $post_data['cus_phone'] = '';
        // $post_data['cus_fax'] = '';

        # REQUEST SEND TO SSLCOMMERZ
        if ($paydata['sandbox_check'] == 1) {
            $direct_api_url = "https://sandbox.sslcommerz.com/gwprocess/v3/api.php";
        } else {
            $direct_api_url = "https://securepay.sslcommerz.com/gwprocess/v3/api.php";
        }
        $handle = curl_init();
        curl_setopt($handle, CURLOPT_URL, $direct_api_url);
        curl_setopt($handle, CURLOPT_TIMEOUT, 30);
        curl_setopt($handle, CURLOPT_CONNECTTIMEOUT, 30);
        curl_setopt($handle, CURLOPT_POST, 1);
        curl_setopt($handle, CURLOPT_POSTFIELDS, $post_data);
        curl_setopt($handle, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($handle, CURLOPT_SSL_VERIFYPEER, false); # KEEP IT FALSE IF YOU RUN FROM LOCAL PC

        $content = curl_exec($handle);

        $code = curl_getinfo($handle, CURLINFO_HTTP_CODE);

        if ($code == 200 && !(curl_errno($handle))) {
            curl_close($handle);
            $sslcommerzResponse = $content;
        } else {
            curl_close($handle);
            return redirect()->back()->with('unsuccess', "FAILED TO CONNECT WITH SSLCOMMERZ API");
            exit;
        }

        # PARSE THE JSON RESPONSE
        $sslcz = json_decode($sslcommerzResponse, true);

        if (isset($sslcz['GatewayPageURL']) && $sslcz['GatewayPageURL'] != "") {

            # THERE ARE MANY WAYS TO REDIRECT - Javascript, Meta Tag or Php Header Redirect or Other
            # echo "<script>window.location.href = '". $sslcz['GatewayPageURL'] ."';</script>";
            echo "<meta http-equiv='refresh' content='0;url=" . $sslcz['GatewayPageURL'] . "'>";
            # header("Location: ". $sslcz['GatewayPageURL']);
            exit;
        } else {
            return redirect()->back()->with('unsuccess', "JSON Data parsing error!");

        }

    }

    public function notify(Request $request)
    {

        $input = $request->all();
        $order = Deposit::where('txnid', $input['tran_id'])->first();
        $user = \App\Models\User::findOrFail($order->user_id);
        $user->balance = $user->balance + ($order->amount);
        $user->save();
        if ($input['status'] == 'VALID') {
            $order->method = 'Stripe';
            $order->status = 1;
            $order->update();

            if ($order->status == 1) {
                $transaction = new \App\Models\Transaction;
                $transaction->txn_number = Str::random(3) . substr(time(), 6, 8) . Str::random(3);
                $transaction->user_id = $order->user_id;
                $transaction->amount = $order->amount;
                $transaction->user_id = $order->user_id;
                $transaction->currency_sign = $order->currency;
                $transaction->currency_code = $order->currency_code;
                $transaction->currency_value = $order->currency_value;
                $transaction->method = $order->method;
                $transaction->txnid = $order->txnid;
                $transaction->details = 'Payment Deposit';
                $transaction->type = 'plus';
                $transaction->save();
            }

            return redirect(route('user.success', 1));
        } else {
            return redirect(route('user.success', 0));
        }
    }
}
