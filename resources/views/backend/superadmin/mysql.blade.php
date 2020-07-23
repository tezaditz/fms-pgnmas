<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')

<div class='panel panel-default'>
    <div class='panel-heading'>Table View</div>
    <div class='panel-body'>
    
    <input type="hidden" id="csrftoken" name="csrftoken" value="{{ csrf_token() }}">
    <div class='form-group header-group-0 ' id='form-group-aset_id' style="">
        <div class="col-sm-10">
            <select name="table_db" id="table_db" class="form-control">
            <option value="">-- Choose Table</option>
            @foreach($table as $value)
                <option value="{{ $value }}">{{ $value }}</option>
            @endforeach
            </select>
            <div class="text-danger">
            </div>
            <p class='help-block'></p>
        </div>
    </div>
    <input type="hidden" id='csrf_token' name='csrf_token' value = '{{ csrf_token() }}'>
    <table id='table-result' name='table-result' class='table table-striped'> 
        <thead>
            <tr></tr>
        </thead>
        <tbody>

        </tbody>
    </table>
    
    </div>
</div>

<div class='panel panel-default'>
    <div class='panel-heading'>Upload File</div>
    <div class='panel-body'>
    <form method='post' action="/pgnmas/sa/upload" enctype="multipart/form-data" class='form-horizontal'>
    {{ csrf_field() }}
    <div class='form-group header-group-0 ' id='form-group-aset_id' style="">
        <label class='control-label col-sm-2'>Path Controller
        </label>
        <div class="col-sm-10">
        <input type='text' id="pathFile" title="pathFile" required   class='form-control' name="pathFile" value= "{{ app_path('Http\Controllers') }}"/>
        </div>
    </div>

    <div class='form-group header-group-0 ' id='form-group-aset_id' style="">
        <label class='control-label col-sm-2'>File Update Controller
        </label>
        <div class="col-sm-10">
        <input type='file' id="file" title="file" required   class='form-control' name="file" multiple/>
        </div>
    </div>

    <div class='form-group header-group-0 ' id='form-group-aset_id' style="">
        <label class='control-label col-sm-2'>Path View
        </label>
        <div class="col-sm-10">
        <input type='text' id="path_for_view" title="pathFile" required   class='form-control' name="path_for_view" value= "{{ resource_path() }}"/>
        </div>
    </div>

    <div class='form-group header-group-0 ' id='form-group-aset_id' style="">
        <label class='control-label col-sm-2'>File Update View
        </label>
        <div class="col-sm-10">
        <input type='file' id="file_for_view" title="file_for_view" required   class='form-control' name="file_for_view" multiple/>
        </div>
    </div>
    <input type="submit" name="submit" value='Save' class='btn btn-success'>

    </form>
    </div>
</div>

<div class='panel panel-default'>
    <div class='panel-heading'>Upload File</div>
    <div class='panel-body'>
    <form method='post' action="/pgnmas/sa/execute_sql" enctype="multipart/form-data" class='form-horizontal'>
    {{ csrf_field() }}
    <div class='form-group header-group-0 ' id='form-group-aset_id' style="">
        <div class="col-sm-10">
        
        </div>
    </div>
    <input type="submit" name="submit" value='Execute' class='btn btn-success'>

    </form>
    </div>
</div>

<div class='panel panel-default'>
    <div class='panel-heading'>SQL Script</div>
    <div class='panel-body'>
    <form method='post' action="/pgnmas/sa/execute_sql" enctype="multipart/form-data" class='form-horizontal'>
    {{ csrf_field() }}
    <div class='form-group header-group-0 ' id='form-group-aset_id' style="">
        <div class="col-sm-10">
        <textarea name="sqlscript" id="sqlscript" cols="200" rows="10"></textarea>
        </div>
    </div>
    <input type="submit" name="submit" value='Execute' class='btn btn-success'>

    </form>
    </div>
</div>

<div class='panel panel-default'>
    <div class='panel-heading'>Backup</div>
    <div class='panel-body'>
    
    <div class='form-group header-group-0 ' id='form-group-aset_id' style="">
        <div class="col-sm-10">
        <a href="{{ route('backupsql') }}" class='btn btn-xs btn-success'> <i class='fa fa-download'></i> </a>
        
        
        </div>
    </div>

    
    
    </div>
</div>


@endsection