<?php

namespace App\Http\Controllers\User;

use App\Models\Notification;
use App\Models\SocialProvider;
use App\Models\Socialsetting;
use App\Models\User;
use App\Http\Controllers\Controller;
use Auth;
use Config;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Socialite;

class SocialRegisterController extends Controller
{

    public function __construct()
    {
      $link = Socialsetting::findOrFail(1);
      Config::set('services.google.client_id', $link->gclient_id);
      Config::set('services.google.client_secret', $link->gclient_secret);
      Config::set('services.google.redirect', url('/auth/google/callback'));
      Config::set('services.facebook.client_id', $link->fclient_id);
      Config::set('services.facebook.client_secret', $link->fclient_secret);
      $url = url('/auth/facebook/callback');
      $url = preg_replace("/^http:/i", "https:", $url);
      Config::set('services.facebook.redirect', $url);
    }

    public function redirectToProvider($provider)
    {
        return Socialite::driver($provider)->redirect();
    }

    public function handleProviderCallback($provider)
    {
        try
        {
            $socialUser = Socialite::driver($provider)->user();
        }
        catch(\Exception $e)
        {
            return redirect('/');
        }
        //check if we have logged provider
        $socialProvider = SocialProvider::where('provider_id',$socialUser->getId())->first();
        if(!$socialProvider)
        {

            if(User::where('email',$socialUser->email)->exists())
            {
                $auser = User::where('email',$socialUser->email)->first();
                Auth::guard('web')->login($auser);
                return redirect()->route('user-dashboard');
            }
            //create a new user and provider
            $user = new User;
            $user->email = $socialUser->email;
            $user->name = $socialUser->name;
            $user->photo = $socialUser->avatar_original;
            $user->email_verified = 'Yes';
            $user->is_provider = 1;
            $user->affilate_code = $socialUser->name.$socialUser->email;
            $user->affilate_code = md5($user->affilate_code);
            $user->save();

            /**
             * Storing Customer in POS
             *
             **/
            $pos = DB::connection('pos_macaofashion');
            // $input = $request->only([
            //     'discount', 'bonus_points', 'barcode',
            //     'name', 'tax_number', 'pay_term_number', 'pay_term_type', 'mobile', 'landline', 'alternate_number', 'city', 'state', 'country', 'landmark', 'customer_group_id', 'contact_id', 'custom_field1', 'custom_field2', 'custom_field3', 'custom_field4', 'email'
            // ]);
            // $pos_contacts['mobile'] = $user-;
            $pos_contacts['email'] = $user->email;
            $pos_contacts['type'] = 'customer';
            $pos_contacts['business_id'] = 1;
            $pos_contacts['created_by'] = 1;

            $pos_contacts['name'] = $user->name;

            $pos_contacts['credit_limit'] = null;
            $pos->table('contacts')->insert($pos_contacts);

            $user->socialProviders()->create(
                ['provider_id' => $socialUser->getId(), 'provider' => $provider]
            );
            $notification = new Notification;
            $notification->user_id = $user->id;
            $notification->save();

        }
        else
        {


            if(User::where('email',$socialUser->email)->exists())
            {
                $auser = User::where('email',$socialUser->email)->first();
                Auth::guard('web')->login($auser);
                return redirect()->route('user-dashboard');
            }

            $user = $socialProvider->user;
        }

        Auth::guard('web')->login($user);
        return redirect()->route('user-dashboard');

    }
}
