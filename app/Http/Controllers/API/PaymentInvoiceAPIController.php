<?php

namespace App\Http\Controllers\API;


use App\Models\PaymentInvoice;
use Basel\MyFatoorah\MyFatoorah;
use Exception;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

/**
 * Class PaymentController
 * @package App\Http\Controllers\API
 */
class PaymentInvoiceAPIController extends Controller
{
    public $myfatoorah;

    public function __construct()
    {
        $this->myfatoorah = MyFatoorah::getInstance(true);
    }

    public function allPayments(Request $request)
    {
       
        $payments = PaymentInvoice::all();

        return $this->sendResponse($payments->toArray(), 'MyFatoorah Payments retrieved successfully');
    }

    public function index()
    {
        try {

            $result = $this->myfatoorah->sendPayment(
                
                // customer name
                auth()->user()->name || (auth()->user()->firstName.' '.auth()->user()->lastName),
                request()->unitPrice * request()->quantity,
                [
                    //     'MobileCountryCode',
                    'CustomerMobile' => auth()->user()->phone,
                    'CustomerEmail'=>auth()->user()->email,
                    //     'Language' =>"AR",
                    'CustomerReference' => auth()->user()->id.time(),  //orderID
                    'UserDefinedField' => auth()->user()->id, //clientID
                        // 'ExpireDate',
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
                return $this->sendResponse($result['Data']['InvoiceURL'], 'Thats is the success url');
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
                // dd($result['Data']);
                return $this->sendResponse($result['Data']->toArray(), 'Payment completed Successfully');
            }
        }
    }

    public function show($id)
    {
        $payment = PaymentInvoice::where('id', $id)->first();

        if (empty($payment)) {
            return $this->sendError('Payment not found');
        }

        return $this->sendResponse($payment->toArray(), 'Payment retrieved successfully');
    }

    public function failCallback(Request $request)
    {

        if (array_key_exists('paymentId', $request->all())) {
            $result = $this->myfatoorah->getPaymentStatus('paymentId', $request->paymentId);

            if ($result && $result['IsSuccess'] == true && $result['Data']['InvoiceStatus'] == "Pending") {

                // Logic after fail
                $error = end($result['Data']['InvoiceTransactions'])['Error'];
                // dd($error);
                return $this->sendError($error);
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

    public function destroy($id)
    {
        $payment = PaymentInvoice::where('id', $id)->first();
        if (empty($payment)) {
            return $this->sendError('Payment not found');
        }

        $payment->delete($id);

        return response()->json(['response' => 'Payment deleted successfully']);
    }

}
