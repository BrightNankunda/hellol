<?php

namespace App\Http\Controllers;

use App\Models\PaymentInvoice;
use Basel\MyFatoorah\MyFatoorah;
use Exception;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Flash;

class MyFatoorahController extends Controller
{
    public $myfatoorah;

    public function __construct()
    {
        $this->myfatoorah = MyFatoorah::getInstance(true);
    }

    /**
     * All payments made via the MyFatoorah gate way
     */
    public function allPayments()
    {
        $payments =PaymentInvoice::all();
        return view('MyFatoorah.payments')->with('payments', $payments);
    }

    /**
     * All User payments made via the MyFatoorah gate way
     */
    // public function allUserPayments()
    // {
    //     $userpayments =PaymentInvoice::where('CustomerReference', auth()->user()->id)->all();
    //     return redirect('/userpayments')->with('userpayments', $userpayments);

    // }

    public function index()
    {
        // dd( auth()->user()->email, request()->itemName, request()->quantity, request()->unitPrice );
        try {

            $result = $this->myfatoorah->sendPayment(
                
                // customer name
                auth()->user()->name,
                request()->unitPrice * request()->quantity,

                [
                    //     'MobileCountryCode',
                    'CustomerMobile' => "56562123544",
                    // auth::user()->phone
                    //     'CustomerEmail',
                    'CustomerEmail'=>auth()->user()->email,
                    //     'Language' =>"AR",
                    'CustomerReference' => auth()->user()->id,  //orderID
                    // 'CustomerCivilId' => "321",
                    'UserDefinedField' => auth()->user()->id, //clientID
                    //     'ExpireDate',
                    //     'CustomerAddress',
                    "InvoiceItems" => [
                        [
                            "ItemName" => request()->itemName,
                            "Quantity" => request()->quantity,
                            "UnitPrice" => request()->unitPrice
                        ]
                    ]
                ]
            );
            if ($result && $result['IsSuccess'] == true) {
                return redirect($result['Data']['InvoiceURL']);
            }

            ///handel else there error
            //  "paymentType": "card",
            // "card": {"Number":"5123450000000008",
            //     "expiryMonth":"05",
            //     "expiryYear":"21",
            //     "securityCode":"100"},
            // "saveToken": false}';
        } catch (Exception $e) {
            echo $e->getMessage();
            // echo $e->getResponse()->getBody()->getContents();

            //    dd($e  ,$e->getResponse()->getBody()->getContents() );
        }
    }

    public function successCallback(Request $request)
    {

        //  "paymentId" => "060641960331928262"
        //   "Id" => "060641960331928262"

        if (array_key_exists('paymentId', $request->all())) {
            $result = $this->myfatoorah->getPaymentStatus('paymentId', $request->paymentId);

            if ($result && $result['IsSuccess'] == true && $result['Data']['InvoiceStatus'] == "Paid") {

                // Logic after success
                $this->createInvoice($result['Data']);
                // dd($result['Data']['InvoiceItems'][0]['ItemName']);
                return view('MyFatoorah.success')->with(['ItemName'=>$result['Data']['InvoiceItems'][0]['ItemName']])->with(['InvoiceDisplayValue'=>$result['Data']['InvoiceDisplayValue']])->with(['CustomerName'=>$result['Data']['CustomerName']])->with(['user'=> auth()->user()]);
            }
        }
    }

    public function failCallback(Request $request)
    {

        if (array_key_exists('paymentId', $request->all())) {
            $result = $this->myfatoorah->getPaymentStatus('paymentId', $request->paymentId);

            if ($result && $result['IsSuccess'] == true && $result['Data']['InvoiceStatus'] == "Pending") {

                // Logic after fail
                $error = end($result['Data']['InvoiceTransactions'])['Error'];
               
                return view('MyFatoorah.failure')->with('error', $error);
            }
        }
    }

    public function createInvoice($request)
    {
        $paymentarray = array_merge($request, end($request['InvoiceTransactions']));
        $paymentarray['order_id'] = $paymentarray['CustomerReference'];
        $paymentarray['client_id'] = $paymentarray['UserDefinedField'];

        $PaymentInvoice = PaymentInvoice::create($paymentarray);
    }
    public function show($id)
    {
        $payment = PaymentInvoice::where('id', $id)->first();
        if (empty($payment)) {
            Flash::error('Payment not found');

            return redirect('/payments');
        }

        return view('MyFatoorah.show')->with('payment', $payment);
    }

    public function destroy($id)
    {
        $payment = PaymentInvoice::where('id', $id)->first();
        if (empty($payment)) {
            Flash::error('Payment not found');

            return redirect('/mfpayments');
        }

        $payment->delete($id);

        Flash::success(__('lang.deleted_successfully',['operator' => __('lang.payment')]));

        return redirect('/mfpayments');
    }
}
