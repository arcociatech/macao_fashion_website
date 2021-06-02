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
                if(Auth::guard('web')->user()->email_verified == 'No')
                {
                    Auth::guard('web')->logout();
                    return $this->apiResponse(422, 'message', 'Your Email is not Verified!');
                    // return response()->json(array('errors' => [ 0 => 'Your Email is not Verified!' ]));
                }

                if(Auth::guard('web')->user()->ban == 1)
                {
                    Auth::guard('web')->logout();
                    return $this->apiResponse(422, 'message', 'Your Account Has Been Banned.');
                    // return response()->json(array('errors' => [ 0 => 'Your Account Has Been Banned.' ]));
                }

                // Login Via Modal
                if(!empty($request->modal))
                {
                    // Login as Vendor
                    if(!empty($request->vendor))
                    {
                        if(Auth::guard('web')->user()->is_vendor == 2)
                        {
                            return response()->json(route('vendor-dashboard'));
                        }
                        else {
                            return response()->json(route('user-package'));
                        }
                }
                // Login as User
                $user = Auth::user();
                $message = 'Logged in successfully';
                $data['user'] = $user;
                $data['token'] = $user->createToken('myApp')->accessToken;
                DB::commit();
                return $this->apiResponse(200, 'data', $data,'', $message);
                // return response()->json(url("/"));
                // return response()->json(1);
                }
                // Login as User
                // return $this->apiResponse(200, 'data', $data,'', $message);
                return response()->json(url("/"));
            //   return response()->json(route('user-dashboard'));
            }else {
                return $this->apiResponse(401, 'message', trans('auth.failed'));
            }

        // if unsuccessful, then redirect back to the login with the form data
            // return $this->apiResponse(422, 'message', 'Credentials Doesn\'t Match !');
            // return response()->json(array('errors' => [ 0 => 'Credentials Doesn\'t Match !' ]));

        }catch (\Exception $ex) {
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
        dd(1);
        $rules = [
            'email'   => 'required|email|unique:users',
            'password' => 'required|confirmed'
        ];
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return $this->apiResponse(422, 'message', $validator->errors());
        }
        try {
            DB::beginTransaction();
            $gs = Generalsetting::findOrFail(1);
            $user = new User();
	        $input = $request->all();
	        $input['password'] = bcrypt($request['password']);
	        $token = md5(time().$request->name.$request->email);
	        $input['verification_link'] = $token;
	        $input['affilate_code'] = md5($request->name.$request->email);
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

            $pos_contacts['mobile'] = $user->phone;
            $pos_contacts['email'] = $user->email;
            $pos_contacts['type'] = 'customer';
            $pos_contacts['business_id'] = 1;
            $pos_contacts['created_by'] = 1;

            $pos_contacts['name'] = $user->name;

            $pos_contacts['credit_limit'] = null;
            $pos->table('contacts')->insert($pos_contacts);

	        if($gs->is_verification_email == 1)
	        {
                $to = $request->email;
                $subject = 'Verify your email address.';
                $msg = "Dear Customer,<br> We noticed that you need to verify your email address. <a href=".url('user/register/verify/'.$token).">Simply click here to verify. </a>";
                //Sending Email To Customer
                if($gs->is_smtp == 1)
                {
                    $data = [
                        'to' => $to,
                        'subject' => $subject,
                        'body' => $msg,
                    ];

                    $mailer = new GeniusMailer();
                    $mailer->sendCustomMail($data);
                }
                else
                {
                    $headers = "From: ".$gs->from_name."<".$gs->from_email.">";
                    mail($to,$subject,$msg,$headers);
                }
                // return $this->apiResponse(200, 'data', $data,'', $message);
                    return response()->json('We need to verify your email address. We have sent an email to '.$to.' to verify your email address. Please click link in that email to continue.');
                }
                else {

                    $user->email_verified = 'Yes';
                    $user->update();
                    $notification = new Notification();
                    $notification->user_id = $user->id;
                    $notification->save();
                    Auth::guard('web')->login($user);
                    return response()->json(1);
                }

                $data['user'] = $user;
                $message = 'Registered Successfully';
                $data['token'] = $user->createToken('myApp')->accessToken;
                DB::commit();
                return $this->apiResponse(200, 'data', $data,'', $message);
        }catch (\Exception $ex) {
            DB::rollback();
            return $this->apiResponse(422, 'message', $ex->getMessage());
        }
    }
}
