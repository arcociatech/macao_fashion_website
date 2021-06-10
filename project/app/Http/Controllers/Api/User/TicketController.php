<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use App\Classes\GeniusMailer;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\AdminUserConversation;
use App\Models\AdminUserMessage;
use App\Models\Generalsetting;
use App\Models\Notification;
use App\Models\Pagesetting;
use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Validator;
class TicketController extends Controller
{
    /**
     * Add Ticket & Dispute
     * Admin User Contact
     **/
    public function AddTicket(Request $request)
    {
        $rules = [
            'subject' => 'required',
            'message' => 'required',
            'type' => 'required',
            'order' => 'required',
            'user_email'=>'required'
        ];
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return $this->apiResponse(422, 'message', $validator->errors());
        }
        /**
         * Sending Email
         */
        $user=Auth::user();
        $gs = Generalsetting::findOrFail(1);
        $subject = $request->subject;
        $to = Pagesetting::find(1)->contact_email;
        $from = $request->user_email;
        $msg = "Email: ".$from."\nMessage: ".$request->message;
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
        /**
         * Check The Type of User
         **/
        $type=Str::lower($request->type);
        if($type == 'ticket'){
            /**
             * Check Conversation exit or not
             **/
            $conv = AdminUserConversation::where('type','=','ticket')
                                        ->where('user_id','=',$user->id)
                                        ->where('subject','=',$request->subject)
                                        ->first();
        }
        elseif($type=='dispute'){
            $conv = AdminUserConversation::where('type','=','dispute')
                                        ->where('user_id','=',$user->id)
                                        ->where('subject','=',$request->subject)
                                        ->first();
             }
        else{
            return $this->apiResponse(404,'message','Invalid Type');
        }
             /**
              * If Conversation_id Already exit then start chating
              **/
        if(isset($conv)){
        $msg = new AdminUserMessage();
        $msg->conversation_id = $conv->id;
        $msg->message = $request->message;
        $msg->user_id = $user->id;
        $msg->save();
        $message='Successfully Added';
        return $this->apiResponse(200,'message',$message);
    }
    /**
     * If Conversatio_id Not Exit
     */
    else{
        $message = new AdminUserConversation();
        $message->subject = $request->subject;
        $message->user_id= $user->id;
        $message->message = $request->message;
        $message->order_number = $request->order;
        $message->type = $type;
        $message->save();

        $msg = new AdminUserMessage();
        $msg->conversation_id = $message->id;
        $msg->message = $request->message;
        $msg->user_id = $user->id;
        $msg->save();
        $message='Successfully Added';
        return $this->apiResponse(200,'message',$message);
            }

    }
    /**
     * Tickect_Dispute Index page
     **/
    public function index(Request $request)
    {
        $rules = [
            'type' => 'required',
        ];
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return $this->apiResponse(422, 'message', $validator->errors());
        }
        $user=Auth::user();
        $type=Str::lower($request->type);
        $find=AdminUserConversation::where('user_id',$user->id)
                                    ->first();
        if($find)
        {
            if($type == 'ticket'){
                $conv = AdminUserConversation::where('type','=','ticket')
                                            ->where('user_id','=',$user->id)
                                            ->get([
                                                'subject',
                                                'message',
                                                'created_at'
                                            ]);
                return $this->apiResponse(200,'data',$conv);
            }
            else{
                $conv = AdminUserConversation::where('type','=','dispute')
                                            ->where('user_id','=',$user->id)
                                            ->get([
                                                'subject',
                                                'message',
                                                'created_at'
                                            ]);
                    return $this->apiResponse(200,'data',$conv);
                 }
        }
        else
        {
            $conv="Not Found";
            return $this->apiResponse(404,'data',$conv);
        }
    }
    /**
     * Ticket_dispute Delete
     */
    public function delete(Request $request)
    {
        $rules = [
            'type' => 'required',
        ];
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return $this->apiResponse(422, 'message', $validator->errors());
        }
        $user=Auth::user();
        $type=Str::lower($request->type);
        $con_id=$request->con_id;
        if($type=='ticket')
        {
            $con=AdminUserConversation::where('type','ticket')
                                        ->where('id',$con_id)
                                        ->delete();
            $msg=AdminUserMessage::where('conversation_id',$con_id)
                                ->delete();
            if($con||$msg)
            {
                $message='Successfully Deleted';
                return $this->apiResponse(200,'message',$message);
            }
            else{
                $message='Not Found';
                return $this->apiResponse(404,'message',$message);
            }
        }
        else{
                $con=AdminUserConversation::where('type','dispute')
                                            ->where('id',$con_id)
                                            ->delete();
                $msg=AdminUserMessage::where('conversation_id',$con_id)
                                    ->delete();
                if($con||$msg)
                {
                    $message='Successfully Deleted';
                    return $this->apiResponse(200,'message',$message);
                }
                else{
                    $message='Not Found';
                    return $this->apiResponse(404,'message',$message);
                }
        }
    }
}
