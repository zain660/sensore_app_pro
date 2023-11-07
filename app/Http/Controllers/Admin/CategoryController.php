<?php

namespace App\Http\Controllers\Admin;

use App\Models\Category;
use Illuminate\Http\Request;
use Validator;
use Datatables;

class CategoryController extends AdminBaseController
{
    //*** JSON Request
    public function datatables()
    {
        $datas = Category::latest('id')->get();
        //--- Integrating This Collection Into Datatables
        return Datatables::of($datas)
            ->addColumn('status', function (Category $data) {
                $class = $data->status == 1 ? 'drop-success' : 'drop-danger';
                $s = $data->status == 1 ? 'selected' : '';
                $ns = $data->status == 0 ? 'selected' : '';
                return '<div class="action-list"><select class="process select droplinks ' . $class . '"><option data-val="1" value="' . route('admin-cat-status', ['id1' => $data->id, 'id2' => 1]) . '" ' . $s . '>' . __("Activated") . '</option><option data-val="0" value="' . route('admin-cat-status', ['id1' => $data->id, 'id2' => 0]) . '" ' . $ns . '>' . __("Deactivated") . '</option>/select></div>';
            })
            ->editColumn('is_featured', function (Category $data) {
                $class = $data->is_featured == 1 ? 'drop-success' : 'drop-danger';
                $s = $data->is_featured == 1 ? 'selected' : '';
                $ns = $data->is_featured == 0 ? 'selected' : '';
                return '<div class="action-list"><select class="process select droplinks ' . $class . '"><option data-val="1" value="' . route('admin-cat-featured', ['id1' => $data->id, 'id2' => 1]) . '" ' . $s . '>' . __("Activated") . '</option><option data-val="0" value="' . route('admin-cat-featured', ['id1' => $data->id, 'id2' => 0]) . '" ' . $ns . '>' . __("Deactivated") . '</option>/select></div>';
            })
            ->addColumn('attributes', function (Category $data) {
                $buttons = '<div class="action-list"><a data-href="' . route('admin-attr-createForCategory', $data->id) . '" class="attribute" data-toggle="modal" data-target="#attribute"> <i class="fas fa-edit"></i>' . __("Create") . '</a>';
                if ($data->attributes()->count() > 0) {
                    $buttons .= '<a href="' . route('admin-attr-manage', $data->id) . '?type=category' . '" class="edit"> <i class="fas fa-edit"></i>' . __("Manage") . '</a>';
                }
                $buttons .= '</div>';

                return $buttons;
            })
            ->addColumn('action', function (Category $data) {
                return '<div class="action-list"><a data-href="' . route('admin-cat-edit', $data->id) . '" class="edit" data-toggle="modal" data-target="#modal1"> <i class="fas fa-edit"></i>' . __('Edit') . '</a><a href="javascript:;" data-href="' . route('admin-cat-delete', $data->id) . '" data-toggle="modal" data-target="#confirm-delete" class="delete"><i class="fas fa-trash-alt"></i></a></div>';
            })
            ->rawColumns(['status', 'attributes', 'action','is_featured'])
            ->toJson(); //--- Returning Json Data To Client Side
    }

    public function index()
    {
        return view('admin.category.index');
    }

    public function create()
    {
        return view('admin.category.create');
    }
    //*** POST Request
    public function store(Request $request)
    {
        //--- Validation Section
        $rules = [
            
            'slug' => 'unique:categories|regex:/^[a-zA-Z0-9\s-]+$/',
            'image' => 'required|mimes:jpeg,jpg,png,svg'
        ];
        $customs = [
            
            'slug.unique' => __('This slug has already been taken.'),
            'slug.regex' => __('Slug Must Not Have Any Special Characters.'),
            'image.required' => __('Banner Image is required.'),
            'image.mimes' => __('Banner Image Type is Invalid.')
        ];
        $validator = Validator::make($request->all(), $rules, $customs);

        if ($validator->fails()) {
            return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }
        //--- Validation Section Ends

        //--- Logic Section
        $data = new Category();
        $input = $request->all();
        if ($file = $request->file('photo')) {
            $name = \PriceHelper::ImageCreateName($file);
            $file->move('assets/images/categories', $name);
            $input['photo'] = $name;
        }
        if ($file = $request->file('image')) {
            $name = \PriceHelper::ImageCreateName($file);
            $file->move('assets/images/categories', $name);
            $input['image'] = $name;
        }

        $data->fill($input)->save();
        //--- Logic Section Ends

        //--- Redirect Section
        $msg = __('New Data Added Successfully.');
        return response()->json($msg);
        //--- Redirect Section Ends
    }

    //*** GET Request
    public function edit($id)
    {
        $data = Category::findOrFail($id);
        return view('admin.category.edit', compact('data'));
    }

    //*** POST Request
    public function update(Request $request, $id)
    {
        //--- Validation Section
        $rules = [
            
            'slug' => 'unique:categories,slug,' . $id . '|regex:/^[a-zA-Z0-9\s-]+$/',
            'image' => 'mimes:jpeg,jpg,png,svg'
        ];
        $customs = [
            
            'slug.unique' => __('This slug has already been taken.'),
            'slug.regex' => __('Slug Must Not Have Any Special Characters.'),
            'image.mimes' => __('Banner Image Type is Invalid.')
        ];
        $validator = Validator::make($request->all(), $rules, $customs);

        if ($validator->fails()) {
            return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }
        //--- Validation Section Ends

        //--- Logic Section
        $data = Category::findOrFail($id);
        $input = $request->all();
        if ($file = $request->file('photo')) {
            $name = \PriceHelper::ImageCreateName($file);
            $file->move('assets/images/categories', $name);
            if ($data->photo != null) {
                if (file_exists(public_path() . '/assets/images/categories/' . $data->photo)) {
                    unlink(public_path() . '/assets/images/categories/' . $data->photo);
                }
            }
            $input['photo'] = $name;
        }
        if ($file = $request->file('image')) {
            $name = \PriceHelper::ImageCreateName($file);
            $file->move('assets/images/categories', $name);
            $input['image'] = $name;
        }


        $data->update($input);
        //--- Logic Section Ends

        //--- Redirect Section
        $msg = __('Data Updated Successfully.');
        return response()->json($msg);
        //--- Redirect Section Ends
    }

    //*** GET Request Status
    public function status($id1, $id2)
    {
        $data = Category::findOrFail($id1);
        $data->status = $id2;
        $data->update();
        //--- Redirect Section
        $msg = __('Status Updated Successfully.');
        return response()->json($msg);
        //--- Redirect Section Ends
    }

    //*** GET Request Status
    public function featured($id1, $id2)
    {
        $data = Category::findOrFail($id1);
        $data->is_featured  = $id2;
        $data->update();
        //--- Redirect Section
        $msg = __('Status Updated Successfully.');
        return response()->json($msg);
        //--- Redirect Section Ends
    }


    //*** GET Request Delete
    public function destroy($id)
    {
        $data = Category::findOrFail($id);

        if ($data->attributes->count() > 0) {
            //--- Redirect Section
            $msg = __('Remove the Attributes first !');
            return response()->json($msg);
            //--- Redirect Section Ends
        }

        if ($data->subs->count() > 0) {
            //--- Redirect Section
            $msg = __('Remove the subcategories first !');
            return response()->json($msg);
            //--- Redirect Section Ends
        }
        if ($data->products->count() > 0) {
            //--- Redirect Section
            $msg = __('Remove the products first !');
            return response()->json($msg);
            //--- Redirect Section Ends
        }

     
        if (file_exists(public_path() . '/assets/images/categories/' . $data->image)) {
            unlink(public_path() . '/assets/images/categories/' . $data->image);
        }
        $data->delete();
        //--- Redirect Section
        $msg = __('Data Deleted Successfully.');
        return response()->json($msg);
        //--- Redirect Section Ends
    }
}
