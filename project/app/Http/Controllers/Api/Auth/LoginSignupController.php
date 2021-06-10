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
use Illuminate\Support\Facades\Hash;

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
                }

                if (Auth::guard('web')->user()->ban == 1) {
                    Auth::guard('web')->logout();
                    return $this->apiResponse(422, 'message', 'Your Account Has Been Banned.');
<<<<<<< HEAD
                }
                if (!empty($request->all())) {
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
                }
                // Login as User
                $user = Auth::user();
                $message = 'Logged in successfully';
                $data['user'] = $user;
                $data['token'] = $user->createToken('myApp')->accessToken;
                return $this->apiResponse(200, 'data', $data, '',  $message);
=======
                }
                // Login as User
                if (!empty($request->all())) {

                    $user = Auth::user();
                    $message = 'Logged in successfully';
                    $data['user'] = $user;
                    $data['token'] = $user->createToken('myApp')->accessToken;
                    DB::commit();
                    return $this->apiResponse(200, 'data', $data, '', $message);
                }
>>>>>>> 05aece33c75946d182d523d00f45aeea44c8388f
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
            'password' => 'required|confirmed',
<<<<<<< HEAD
            'phone'=>'required',
            'address'=>'required'
=======
            'name' => 'required',
            'phone' => 'required',
            'address' => 'required',
>>>>>>> 05aece33c75946d182d523d00f45aeea44c8388f
        ];
        // check validation
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return $this->apiResponse(422, 'message', $validator->errors());
        }
        // validation end
        try {
            DB::beginTransaction();
            $gs = Generalsetting::findOrFail(1);
<<<<<<< HEAD
            $user = new User();
            $input = $request->all();
            $input['password'] = bcrypt($request['password']);
            $token = md5(time() . $request->name . $request->email);
            $input['verification_link'] = $token;
            $input['affilate_code'] = md5($request->name . $request->email);

=======
            $input = $request->all();
            $input['password'] = bcrypt($request['password']);
            $token = md5(time() . $request->name . $request->email);
            $input['verification_link'] = $token;
            $input['affilate_code'] = md5($request->name . $request->email);
            $user = new User();
            // Storing user in user table
>>>>>>> 05aece33c75946d182d523d00f45aeea44c8388f
            $user->fill($input)->save();
            /**
             * Storing Customer in POS
             *
             **/
            $pos = DB::connection('pos_macaofashion');
<<<<<<< HEAD
=======

>>>>>>> 05aece33c75946d182d523d00f45aeea44c8388f
            $pos_contacts['mobile'] = $user->phone;
            $pos_contacts['email'] = $user->email;
            $pos_contacts['type'] = 'customer';
            $pos_contacts['business_id'] = 1;
            $pos_contacts['created_by'] = 1;

            $pos_contacts['name'] = $user->name;

            $pos_contacts['credit_limit'] = null;
            $pos->table('contacts')->insert($pos_contacts);
            // send varification email
            if ($gs->is_verification_email == 1) {
                $to = $request->email;
                $subject = 'Verify your email address.';
                $msg = "Dear Customer,<br> We noticed that you need to verify your email address. <a href=" . url('user/register/verify/' . $token) . ">Simply click here to verify. </a>";
                //Sending Email To Customer
                if ($gs->is_smtp == 1) {
                    $data = [
                        'to' => $to,
                        'subject' => $subject,
                        'body' => $msg,
                    ];

                    $mailer = new GeniusMailer();
                    // $mailer->sendCustomMail($data);
                    if ($mailer->sendCustomMail($data)) {
                        $message = "Registered Successfully, We need to verify your email address. We have sent an email to ' . $to . ' to verify your email address. Please click link in that email to continue.";
                        $dat['user'] = $user;
                        // $message = '';
                        $data['token'] = $user->createToken('myApp')->accessToken;
                        DB::commit();
                    }
                } else {
                    $headers = "From: " . $gs->from_name . "<" . $gs->from_email . ">";
                    if (mail($to, $subject, $msg, $headers)) {
                        $message = " Registered Successfully , We need to verify your email address. We have sent an email to ' . $to . ' to verify your email address. Please click link in that email to continue.";
                        $dat['user'] = $user;
                        $message = ', ';
                        $data['token'] = $user->createToken('myApp')->accessToken;
                        DB::commit();
                    }
                }
            }
            // when user register
            else {

                $user->email_verified = 'Yes';
                $user->update();
                $notification = new Notification();
                $notification->user_id = $user->id;
                $notification->save();
                $dat['user'] = $user;
                $message = 'Already Registered';
                $data['token'] = $user->createToken('myApp')->accessToken;
                DB::commit();
            }

<<<<<<< HEAD
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
            if($mailer->sendCustomMail($data))
                {

                    $dat['user'] = $user;
                    $message = 'Registered Successfully, We need to verify your email address. We have sent an email to '.$to.' to verify your email address. Please click link in that email to continue.';
                    $dat['token'] = $user->createToken('myApp')->accessToken;
                    DB::commit();
                }
            }
                else
                {
                $headers = "From: ".$gs->from_name."<".$gs->from_email.">";
                    if(mail($to,$subject,$msg,$headers))
                    {
                        $dat['user'] = $user;
                        $message = 'Registered Successfully, We need to verify your email address. We have sent an email to '.$to.' to verify your email address. Please click link in that email to continue.';
                        $dat['token'] = $user->createToken('myApp')->accessToken;
                        DB::commit();
                    }
                }
            }
            else {

            $user->email_verified = 'Yes';
            $user->update();
            $notification = new Notification();
            $notification->user_id = $user->id;
            $notification->save();
            $dat['user'] = $user;
            $message = 'Already Registered';
            $dat['token'] = $user->createToken('myApp')->accessToken;
            DB::commit();

            }
=======
>>>>>>> 05aece33c75946d182d523d00f45aeea44c8388f
            return $this->apiResponse(200, 'data', $dat, '', $message);
        } catch (\Exception $ex) {
            DB::rollback();
            return $this->apiResponse(422, 'message', $ex->getMessage());
        }
    }
    /**
     * EDit Profile
     **/
    public function edit(Request $request)
    {
        $login_user=Auth::user();
        $user_id=$login_user->id;
        $user=User::find($user_id);
        $user->name=$request->name;
        $user->city=$request->city;
        $user->address=$request->name;
        $user->phone=$request->phone;
        $user->country=$request->country;
        if ($file = $request->file('photo'))
        {
            $name = time().str_replace(' ', '', $file->getClientOriginalName());
            $file->move('assets/images/users/',$name);
            if($user->photo != null)
            {
                if (file_exists(public_path().'/assets/images/users/'.$user->photo)) {
                    unlink(public_path().'/assets/images/users/'.$user->photo);
                }
            }
        $user['photo'] = $name;
        }
        $user->save();
        $msg = 'Successfully updated your profile';
        return $this->apiResponse(200,'msg',$msg);
    }
    /**
     * Reset Password
     **/
    public function reset(Request $request)
    {
        $login_user=Auth::user();
        dd($login_user);
        $user=User::find($login_user->id);

        if($request->cpass)
        {
            if (Hash::check($request->cpass, $user->password)){
                if ($request->newpass == $request->renewpass){
                    $input['password'] = Hash::make($request->newpass);
                }else{
                    $msg = 'Confirm password does not match';
                    return $this->apiResponse(422,'error',$msg);
                }
            }else{
                $msg = 'Current password Does not match.';
                return $this->apiResponse(422,'error',$msg);
            }
        }
        $user->update($input);
        $msg = 'Successfully change your passwprd';
        return $this->apiResponse(200,'message',$msg);
    }

}
