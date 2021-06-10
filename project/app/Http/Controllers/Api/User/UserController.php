<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Order;
use App\Models\User;
use Illuminate\Support\Facades\Validator;
class UserController extends Controller
{
 /**
  * User Account Information
  **/
    public function account_info(Request $request)
    {
        $user=Auth::user();
        $find=User::find($user->id);
        if($find)
        {
            $user=User::where('id',$user->id)
                    ->get([
                        'email',
                        'phone',
                        'fax',
                        'city',
                        'zip',
                        'address'
                    ]);
            return $this->apiResponse(200,'data',$user);
        }
        else{
            return $this->apiResponse(404,'message','Not Found');
        }
    }
    /**
     * User Balance Info
     **/
    public function balance(Request $request)
    {
        $user=Auth::user();
        $find=User::find($user->id);
        if($find)
        {
            $user=User::where('id',$user->id)
                        ->first();
            $income=round($user->affilate_income,2);
            return $this->apiResponse(200,'affilate_income',$income);
        }
        else{
            return $this->apiResponse(404,'message','Not Found');
        }

    }
    /**
     * User Total Orders
     **/
    public function total_orders(Request $request)
    {
        $user=Auth::user();
        $find=Order::where('user_id','=',$user->id)
                    ->first();
        if($find)
        {
            $orders=Order::where('user_id','=',$user->id)
                        ->count();
            return $this->apiResponse(200,'Total_Orders',$orders);
        }
        else{
            return $this->apiResponse(404,'message','Not Found');
        }
    }
    /**
     * Total  Pending Orders
     **/
    public function pending_orders(Request $request)
    {
        $user=Auth::user();
        $find=Order::where('user_id','=',$user->id)
                    ->first();
        if($find)
        {
            $orders=Order::where('user_id','=',$user->id)
                        ->where('status','pending')
                        ->count();
            return $this->apiResponse(200,'Pending_Orders',$orders);
        }
        else{
            return $this->apiResponse(404,'message','Not Found');
        }
    }
    /**
     * Recent Orders
    **/
    public function recent_orders(Request $request)
    {
        $user=Auth::user();
        $find=Order::where('user_id','=',$user->id)
                    ->first();
        if($find)
        {
            $order=Order::where('user_id','=',$user->id)
                        ->get([
                            'order_number',
                            'created_at',
                            'pay_amount',
                            'currency_sign',
                            'currency_value',
                            'status'
                        ]);
        return $this->apiResponse(200,'data',$order);
        }
        else{
            return $this->apiResponse(404,'message','Not Found');
        }
    }
}
