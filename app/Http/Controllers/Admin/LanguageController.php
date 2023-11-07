<?php

namespace App\Http\Controllers\Admin;

use App\Models\Language;
use Datatables;
use Illuminate\Http\Request;

use Illuminate\Support\Str;
use Validator;

class LanguageController extends AdminBaseController
{
    //*** JSON Request
    public function datatables()
    {
        $datas = Language::latest('id')->get();
        //--- Integrating This Collection Into Datatables
        return Datatables::of($datas)
            ->addColumn('action', function (Language $data) {
                $delete = $data->id == 1 ? '' : '<a href="javascript:;" data-href="' . route('admin-lang-delete', $data->id) . '" data-toggle="modal" data-target="#confirm-delete" class="delete"><i class="fas fa-trash-alt"></i></a>';
                $default = $data->is_default == 1 ? '<a><i class="fa fa-check"></i> ' . __('Default') . '</a>' : '<a class="status" data-href="' . route('admin-lang-st', ['id1' => $data->id, 'id2' => 1]) . '">' . __('Set Default') . '</a>';
                return '<div class="action-list"><a href="' . route('admin-lang-edit', $data->id) . '"> <i class="fas fa-edit"></i>' . __('Edit') . '</a><a href="' . route('admin-lang-export', $data->id) . '"> <i class="fas fa-download"></i>' . __('Export') . '</a>' . $delete . $default . '</div>';
            })
            ->rawColumns(['action'])
            ->toJson(); //--- Returning Json Data To Client Side
    }

    public function index()
    {
        return view('admin.language.index');
    }

    public function create()
    {
        return view('admin.language.create');
    }

    public function import()
    {
        return view('admin.language.import');
    }

    //*** POST Request
    public function store(Request $request)
    {

        //--- Validation Section
        $rules = ['language' => 'unique:languages'];
        $customs = ['language.unique' => 'This language has already been taken.'];
        $validator = Validator::make($request->all(), $rules, $customs);
        if ($validator->fails()) {
            return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }
        //--- Validation Section Ends

        //--- Logic Section
        $new = null;
        $input = $request->all();
        $data = new Language();
        $data->language = $input['language'];
        $name = time() . Str::random(8);
        $data->name = $name;
        $data->file = $name . '.json';
        $data->rtl = $input['rtl'];
        $data->save();
        unset($input['_token']);
        unset($input['language']);
        $keys = $request->keys;
        $values = $request->values;
        foreach (array_combine($keys, $values) as $key => $value) {
            $n = str_replace("_", " ", $key);
            $new[$n] = $value;
        }
        $mydata = json_encode($new);
        file_put_contents(public_path() . '/project/resources/lang/' . $data->file, $mydata);
        //--- Logic Section Ends

        //--- Redirect Section
        $msg = __('New Data Added Successfully.');
        return response()->json($msg);
        //--- Redirect Section Ends
    }

    //*** POST Request
    public function importStore(Request $request)
    {

        //--- Validation Section
        $rules = [
            'csvfile' => 'required|mimes:csv,txt',
        ];

        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails()) {
            return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }
        //--- Validation Section Ends

        //--- Logic Section

        $filename = '';
        if ($file = $request->file('csvfile')) {
            $filename = time() . '-' . str_replace(' ', '', $file->getClientOriginalName());
            $file->move('assets/temp_files', $filename);
        }

        $new = null;
        $input = $request->all();
        $data = new Language();
        $data->language = $input['language'];
        $name = time() . Str::random(8);
        $data->name = $name;
        $data->file = $name . '.json';
        $data->rtl = $input['rtl'];
        $data->save();
        unset($input['_token']);
        unset($input['language']);

        $file = fopen(public_path('assets/temp_files/' . $filename), "r");
        $i = 1;
        $keys = array();
        $values = array();
        while (($line = fgetcsv($file)) !== false) {
            if ($i != 1) {
                if (!empty($line[0])) {
                    $keys[] = $line[0];
                    $values[] = mb_convert_encoding($line[1], 'UTF-8', 'UTF-8');
                }
            }
            $i++;
        }
        fclose($file);

        foreach (array_combine($keys, $values) as $key => $value) {
            $new[$key] = $value;
        }
        $mydata = json_encode($new);
        file_put_contents(public_path() . '/project/resources/lang/' . $data->file, $mydata);
        $files = glob('assets/temp_files/*'); //get all file names
        foreach ($files as $file) {
            if (is_file($file)) {
                unlink($file);
            }
            //delete file
        }

        //--- Logic Section Ends

        //--- Redirect Section
        $msg = __('Data Imported Successfully.');
        return response()->json($msg);
        //--- Redirect Section Ends
    }

    //*** GET Request
    public function edit($id)
    {
        $data = Language::findOrFail($id);
        $data_results = file_get_contents(public_path() . '/project/resources/lang/' . $data->file);
        $lang = json_decode($data_results, true);
        return view('admin.language.edit', compact('data', 'lang'));
    }

    //*** GET Request
    public function export($id)
    {
        $data = Language::findOrFail($id);
        $data_results = file_get_contents(public_path() . '/project/resources/lang/' . $data->file);
        $lang = json_decode($data_results, true);
        $files = glob('assets/temp_files/*'); //get all file names
        foreach ($files as $file) {
            if (is_file($file)) {
                unlink($file);
            }
            //delete file
        }
        $f = fopen('assets/temp_files/language.csv', "w");
        $hline[0] = 'Main Languages';
        $hline[1] = 'Translations';
        fputcsv($f, $hline);
        foreach ($lang as $key => $value) {
            $line[0] = $key;
            $line[1] = mb_convert_encoding($value, 'UTF-8', 'UTF-8');
            fputcsv($f, $line);
        }
        fclose($f);

        return response()->download(public_path('assets/temp_files/language.csv'));
    }

    //*** POST Request
    public function update(Request $request, $id)
    {

        //--- Validation Section
        $rules = ['language' => 'unique:languages,language,' . $id];
        $customs = ['language.unique' => 'This language has already been taken.'];
        $validator = Validator::make($request->all(), $rules, $customs);
        if ($validator->fails()) {
            return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }
        //--- Validation Section Ends

        //--- Logic Section
        $new = null;
        $input = $request->all();
        $data = Language::findOrFail($id);
        if (file_exists(public_path() . '/project/resources/lang/' . $data->file)) {
            unlink(public_path() . '/project/resources/lang/' . $data->file);
        }
        $data->language = $input['language'];
        $data->rtl = $input['rtl'];
        $data->update();
        unset($input['_token']);
        unset($input['language']);
        $keys = $request->keys;
        $values = $request->values;
        foreach (array_combine($keys, $values) as $key => $value) {
            $n = str_replace("_", " ", $key);
            $new[$n] = $value;
        }
        $mydata = json_encode($new);
        file_put_contents(public_path() . '/project/resources/lang/' . $data->file, $mydata);
        //--- Logic Section Ends

        //--- Redirect Section
        $msg = __('Data Updated Successfully.');
        return response()->json($msg);
        //--- Redirect Section Ends
    }

    public function status($id1, $id2)
    {
        $data = Language::findOrFail($id1);
        $data->is_default = $id2;
        $data->update();
        $data = Language::where('id', '!=', $id1)->update(['is_default' => 0]);
        //--- Redirect Section
        $msg = __('Data Updated Successfully.');
        return response()->json($msg);
        //--- Redirect Section Ends
    }

    //*** GET Request Delete
    public function destroy($id)
    {
        if ($id == 1) {
            return __("You don't have access to remove this language.");
        }
        $data = Language::findOrFail($id);
        if ($data->is_default == 1) {
            return __("You can not remove default language.");
        }
        if (file_exists(public_path() . '/project/resources/lang/' . $data->file)) {
            unlink(public_path() . '/project/resources/lang/' . $data->file);
        }

        $data->delete();
        //--- Redirect Section
        $msg = __('Data Deleted Successfully.');
        return response()->json($msg);
        //--- Redirect Section Ends
    }
}
