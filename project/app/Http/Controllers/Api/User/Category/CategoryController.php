<?php

namespace App\Http\Controllers\Api\User\Category;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Product;
use App\Models\Subcategory;
use App\Models\Childcategory;
use Illuminate\Support\Facades\Validator;
class CategoryController extends Controller
{
/**
     * Show Categories
     **/
    public function show_category()
    {
        $cat=Category::all();
        return $this->apiResponse(200,'data',$cat);
    }
    /**
     * Show Category with Sub Categories
     **/
    public function category_sub(Request $request)
    {
        $rules=[
            'category'=>'required'
        ];
        $validator=Validator::make($request->all(),$rules);
        if($validator->fails())
        {
            return $this->apiResponse(422,'message',$validator->errors());
        }
        $category=$request->category;
        $sub_categories = Category::with('subs')
                                    ->where('slug',$category)
                                    ->orWhere('name',$category)
                                    ->orWhere('id',$category)
                                    ->get();
        if(!$sub_categories->first())
        {
            return $this->apiResponse(404,'message','Invalid Category');
        }
        return $this->apiResponse(200,'data',$sub_categories);
    }

}
