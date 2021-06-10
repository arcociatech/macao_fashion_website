<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\User;
use Illuminate\Support\Facades\Validator;
class ViewOrderController extends Controller
{
    /**
     * View Orders
     **/
    public function view_order(Request $request)
    {
        $rules=[
            'order_id'=>'required'
        ];
        $validator=Validator::make($request->all(),$rules);
        if($validator->fails())
        {
            return $this->apiResponse(422,'message',$validator->errors());
        }
        $order_id = $request->order_id;
        $find=Order::where('id',$order_id)
                    ->first();
        if($find)
        {
            $order=Order::where('id',$order_id)
                        ->get();
            return $this->apiResponse(200,'data',$order);
        }
        else{
            return $this->apiResponse(404,'message','Not Found');
        }
    }
}
