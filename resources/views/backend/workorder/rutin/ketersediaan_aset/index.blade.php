@extends('crudbooster::admin_template')
@section('content')
  <!-- Your html goes here -->
  <p><a title='Return' href='{{g("return_url")}}'><i class='fa fa-chevron-circle-left '></i>
                        &nbsp; {{trans("crudbooster.form_back_to_list",['module'=>CRUDBooster::getCurrentModule()->name])}}</a></p>
<div class='panel panel-default'>
    <div class='panel-heading'>Data SLA Aset</div>
    <div class='panel-body'>
    <table class='table table-striped table-bordered'>
        <thead>
            <tr>
                <th>Nama</th>
                <th>Alamat</th>
            </tr>
        </thead>
        <tbody>
        {{$result}}
            @foreach($result as $row)
            <tr>
                <td>{{$row->nama}}</td>
                <td>{{$row->alamat}}</td>
                <td>
                <!-- To make sure we have read access, wee need to validate the privilege -->
                @if(CRUDBooster::isUpdate() && $button_edit)
                <a class='btn btn-success btn-sm' href='{{CRUDBooster::mainpath("edit/$row->id")}}'><i class='fa fa-pencil'></i> Edit</a>
                @endif
                
                @if(CRUDBooster::isDelete() && $button_edit)
               <a href="javascript:void(0)" class='btn btn-danger btn-sm' onclick='swal({   
                title: "Are you sure ?",   
                text: "You will not be able to recover this record data!",   
                type: "warning",   
                showCancelButton: true,   
                confirmButtonColor: "#ff0000",   
                confirmButtonText: "Yes!",  
                cancelButtonText: "No",  
                closeOnConfirm: false }, 
                function(){  location.href="{{CRUDBooster::mainpath("delete/$row->id")}}" });'><i class='fa fa-trash'></i> Delete</a>
               
                @endif
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>

        <!-- ADD A PAGINATION -->
        <p>{!! urldecode(str_replace("/?","?",$result->appends(Request::all())->render())) !!}</p>

    </div>
</div>
@endsection