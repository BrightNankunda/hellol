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
  <div class="card">
    <div class="card-body">
      <div class="row">
          <div class="w-100">
            <div class="text-sucess">Hello {{session('result.CustomerName')}}, your payment for {{session('result.InvoiceValue')}} {{session('result.Currency')}} is successful<div>
          </div>
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
