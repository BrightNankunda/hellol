<!-- Id Field -->
<div class="form-group row col-6">
  {!! Form::label('id', 'ID:', ['class' => 'col-3 control-label text-right']) !!}
  <div class="col-9">
    <p>{!! $payment->id !!}</p>
  </div>
</div>

<!--Unit Price Field -->
<div class="form-group row col-6">
  {!! Form::label('PaymentGateway', 'PaymentGateway:', ['class' => 'col-3 control-label text-right']) !!}
  <div class="col-9">
    <p>{!! $payment->PaymentGateway !!}</p>
  </div>
</div>
<!--Value Field -->
<div class="form-group row col-6">
  {!! Form::label('InvoiceValue', 'InvoiceValue:', ['class' => 'col-3 control-label text-right']) !!}
  <div class="col-9">
    <p>{!! $payment->InvoiceValue !!}</p>
  </div>
</div>
<!--Value Field -->
<div class="form-group row col-6">
  {!! Form::label('InvoiceStatus', 'InvoiceStatus:', ['class' => 'col-3 control-label text-right']) !!}
  <div class="col-9">
    <p>{!! $payment->InvoiceStatus !!}</p>
  </div>
</div>

<div class="form-group row col-6">
  {!! Form::label('CardNumber', 'Card ID:', ['class' => 'col-3 control-label text-right']) !!}
  <div class="col-9">
    <p>{!! $payment->CardNumber !!}</p>
  </div>
</div>

<!-- Created At Field -->
<div class="form-group row col-6">
  {!! Form::label('created_at', 'Created At:', ['class' => 'col-3 control-label text-right']) !!}
  <div class="col-9">
    <p>{!! $payment->created_at !!}</p>
  </div>
</div>

<!-- Updated At Field -->
<div class="form-group row col-6">
  {!! Form::label('updated_at', 'Updated At:', ['class' => 'col-3 control-label text-right']) !!}
  <div class="col-9">
    <p>{!! $payment->updated_at !!}</p>
  </div>
</div>

