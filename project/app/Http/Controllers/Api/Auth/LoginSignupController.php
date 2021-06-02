<?php

namespace App\Http\Controllers\Api\Auth;

use App\Classes\GeniusMailer;
use App\Http\Controllers\Controller;
use App\Models\Generalsetting;
use App\Models\Notification;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class LoginSignupController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware('auth:api');
    // }
    /**
     * Login
     *
     * @param \Illuminate\Http\Request $request
     * @return JsonResponse
     */
    public function login(Request $request)
    {
        $rules = [
            'email'   => 'required|email',
            'password' => 'required'
        ];

        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails()) {
            return $this->apiResponse(422, 'message', $validator->errors());
        }
        //--- Validation Section Ends
        try {
            DB::beginTransaction();

            // Attempt to log the user in
            if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
                // if successful, then redirect to their intended location

                // Check If Email is verified or not
                if (Auth::guard('web')->user()->email_verified == 'No') {
                    Auth::guard('web')->logout();
                    return $this->apiResponse(422, 'message', 'Your Email is not Verified!');
                    // return response()->json(array('errors' => [ 0 => 'Your Email is not Verified!' ]));
                }

                if (Auth::guard('web')->user()->ban == 1) {
                    Auth::guard('web')->logout();
                    return $this->apiResponse(422, 'message', 'Your Account Has Been Banned.');
                    // return response()->json(array('errors' => [ 0 => 'Your Account Has Been Banned.' ]));
                }

                // Login Via Modal
                if (!empty($request->modal)) {
                    // Login as Vendor
                    if (!empty($request->vendor)) {
                        if (Auth::guard('web')->user()->is_vendor == 2) {
                            return response()->json(route('vendor-dashboard'));
                        } else {
                            return response()->json(route('user-package'));
                        }
                    }
                    // Login as User
                    $user = Auth::user();
                    $message = 'Logged in successfully';
                    $data['user'] = $user;
                    $data['token'] = $user->createToken('myApp')->accessToken;
                    DB::commit();
                    return $this->apiResponse(200, 'data', $data, '', $message);
                    // return response()->json(url("/"));
                    // return response()->json(1);
                }
                // Login as User
                // return $this->apiResponse(200, 'data', $data,'', $message);
                $user = Auth::user();
                $message = 'Logged in successfully';
                $data['user'] = $user;
                $data['token'] = $user->createToken('myApp')->accessToken;
                return $this->apiResponse(200, 'data', $data, '',  $message);
                //   return response()->json(route('user-dashboard'));
            } else {
                return $this->apiResponse(401, 'message', trans('auth.failed'));
            }

            // if unsuccessful, then redirect back to the login with the form data
            // return $this->apiResponse(422, 'message', 'Credentials Doesn\'t Match !');
            // return response()->json(array('errors' => [ 0 => 'Credentials Doesn\'t Match !' ]));

        } catch (\Exception $ex) {
            DB::rollback();
            return $this->apiResponse(422, 'message', $ex->getMessage());
        }
    }
    /**
     * Register
     *
     * @param \Illuminate\Http\Request $request
     * @return JsonResponse
     */
    public function register(Request $request)
    {
        $rules = [
            'name' => 'required',
            'email'   => 'required|email|unique:users',
            'password' => 'required|confirmed'
        ];
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return $this->apiResponse(422, 'message', $validator->errors());
        }
        try {
            DB::beginTransaction();
            // $gs = Generalsetting::findOrFail(1);
            $user = new User();
            $input = $request->all();
            $input['password'] = bcrypt($request['password']);
            $token = md5(time() . $request->name . $request->email);
            $input['verification_link'] = $token;
            $input['affilate_code'] = md5($request->name . $request->email);
            // if(!empty($request->vendor))
            //   {
            // 		//--- Validation Section
            // 		$rules = [
            // 			'shop_name' => 'unique:users',
            // 			'shop_number'  => 'max:10'
            // 				];
            // 		$customs = [
            // 			'shop_name.unique' => 'This Shop Name has already been taken.',
            // 			'shop_number.max'  => 'Shop Number Must Be Less Then 10 Digit.'
            // 		];

            // 		$validator = Validator::make($request->all(), $rules, $customs);
            // 		if ($validator->fails()) {
            //             return $this->apiResponse(422, 'message', $validator->errors());
            // 		}
            // 		$input['is_vendor'] = 1;

            //   }

            $user->fill($input)->save();
            /**
             * Storing Customer in POS
             *
             **/
            $pos = DB::connection('pos_macaofashion');
            // $input = $request->only([
            //     'discount', 'bonus_points', 'barcode',
            //     'name', 'tax_number', 'pay_term_number', 'pay_term_type', 'mobile', 'landline', 'alternate_number', 'city', 'state', 'country', 'landmark', 'customer_group_id', 'contact_id', 'custom_field1', 'custom_field2', 'custom_field3', 'custom_field4', 'email'
            // ]);
            $pos_contacts['mobile'] = 'vivo';
            $pos_contacts['email'] = $user->email;
            $pos_contacts['type'] = 'customer';
            $pos_contacts['business_id'] = 1;
            $pos_contacts['created_by'] = 1;

            $pos_contacts['name'] = $user->name;

            $pos_contacts['credit_limit'] = null;
            $pos->table('contacts')->insert($pos_contacts);

            // if($gs->is_verification_email == 1)
            // {
            // $to = $request->email;
            // $subject = 'Verify your email address.';
            // $msg = "Dear Customer,<br> We noticed that you need to verify your email address. <a href=".url('user/register/verify/'.$token).">Simply click here to verify. </a>";
            // //Sending Email To Customer
            // if($gs->is_smtp == 1)
            // {
            // $data = [
            //     'to' => $to,
            //     'subject' => $subject,
            //     'body' => $msg,
            // ];

            // $mailer = new GeniusMailer();
            // $mailer->sendCustomMail($data);
            // }
            // else
            // {
            // $headers = "From: ".$gs->from_name."<".$gs->from_email.">";
            // mail($to,$subject,$msg,$headers);
            // }
            // // return $this->apiResponse(200, 'data', $data,'', $message);
            // return response()->json('We need to verify your email address. We have sent an email to '.$to.' to verify your email address. Please click link in that email to continue.');
            // }
            // else {

            // $user->email_verified = 'Yes';
            // $user->update();
            // $notification = new Notification();
            // $notification->user_id = $user->id;
            // $notification->save();
            // Auth::guard('web')->login($user);
            // return response()->json(1);
            // }

            $data['user'] = $user;
            $message = 'Registered Successfully';
            $data['token'] = $user->createToken('myApp')->accessToken;
            DB::commit();
            return $this->apiResponse(200, 'data', $data, '', $message);
        } catch (\Exception $ex) {
            DB::rollback();
            return $this->apiResponse(422, 'message', $ex->getMessage());
        }
    }
    // public function logout(Request $request)
    // {
    //     // $user = Auth::user();
    //     // dd(1);
    //     try {
    //         DB::beginTransaction();
    //         $user = DB::table('oauth_access_tokens')
    //             ->where('user_id', Auth::user()->id)
    //             ->update([
    //                 'revoked' => 1,
    //             ]);
    //         // Auth::logout();
    //         // $user = Auth::user()->token();
    //         // $user->revoke();
    //         // $data['message'] = 'Registered Successfully';
    //         // DB::commit();
    //         return $this->apiResponse(200, 'message', 'User Logout Successfully');
    //     } catch (\Exception $ex) {
    //         DB::rollback();
    //         return $this->apiResponse(422, 'message', $ex->getMessage());
    //     }
    // }
    public function logout(Request $request)
    {
        dd(Auth::user());
        if (Auth::check()) {
            Auth::logout();
            return $this->apiResponse(200, 'message', 'User Logged Out Successfully');
        } else {
            return $this->apiResponse(401, 'message', 'Please Login Before Performing This Action');
        }
    }
}
