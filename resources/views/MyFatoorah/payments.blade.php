@extends('layouts.app')

@section('content')
<!-- Content Header (Page header) -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <!-- /.col -->
    </div><!-- /.row -->
  </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->
<div class="content">
  @include('flash::message')
  <div class="card">
    <div class="card-body">
      <div class="row">
          <table class="table table-light table-striped w-100">
            <thead class="thead-dark">
               <tr>
                  <th>USER ID</th>
                  <th>INVOICE VALUE</th>
                  <th>GATEWAY</th>
                  <th>CURRENCY</th>
                  <th>ACTIONS</th>
               </tr>
            </thead>
            <tbody>
            @foreach($payments as $payment) 
               <tr>
                  <td>{{$payment->client_id}}</td>
                  <td>{{$payment->InvoiceValue}}</td>
                  <td>{{$payment->PaymentGateway}}</td>
                  <td>{{$payment->Currency}}</td>

                  <td class="d-flex justify-content-around">
                  <a type="button" class="btn btn-primary" href="{{url('/mfpayments/'.$payment->id)}}"><i class="fa fa-eye"></i></a>
                  {!! Form::open(['url' => ['mfpayments', $payment->id], 'method' => 'delete']) !!}
                     {!! Form::button('<i class="fa fa-trash"></i>', [
                     'type' => 'submit',
                     'class' => 'btn btn-link text-danger',
                     'onclick' => "return confirm('Are you sure?')"
                     ]) !!}
                     {!! Form::close() !!}
                  </td>
               </tr>
            @endforeach
            </tbody>
          </table>
        </div>
      </div>
  </div>
</div>
@endsection

@push('scripts')
  <script type="text/javascript">
    $("#printOrder").on("click",function () {
      window.print();
    });
  </script>
@endpush