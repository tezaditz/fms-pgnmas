<!-- First you need to extend the CB layout -->
@extends('crudbooster::admin_template')
@section('content')
<div class="statistic-row row">
    <div class="col-md-3">
        <div class='border-box'>
            <div class='small-box bg-red'>
                <div class='inner inner-box'>
                    <h3>{{ $open }}</h3>
                    <p>Complain Open</p>
                    
                </div>
                <div class='icon'>
                    <i class='fa fa-gears'></i>
                </div>
                
            </div>
        </div>
    </div>
    <div class="col-md-3">
        <div class='border-box'>
            <div class='small-box bg-blue'>
                <div class='inner inner-box'>
                    <h3>{{ $progress }}</h3>
                    <p>On Progess</p>
                    
                </div>
                <div class='icon'>
                    <i class='fa fa-gears'></i>
                </div>
                
            </div>
        </div>
    </div>
    <div class="col-md-3">
        <div class='border-box'>
            <div class='small-box bg-yellow'>
                <div class='inner inner-box'>
                    <h3>{{ $outstanding }}</h3>
                    <p>Out Standing</p>
                   
                </div>
                <div class='icon'>
                    <i class='fa fa-gears'></i>
                </div>
                
            </div>
        </div>
    </div>
    <div class="col-md-3">
        <div class='border-box'>
            <div class='small-box bg-green'>
                <div class='inner inner-box'>
                    <h3>{{ $done }}</h3>
                    <p>Complete</p>
                   
                </div>
                <div class='icon'>
                    <i class='fa fa-gears'></i>
                </div>
               
            </div>
        </div>
    </div>

</div>


<div class="row">
    <div class = "col-md-6">
        <div class="panel panel-default">
            <div class="panel panel-heading">
               Penggunaaan Listrik
            </div>
            <div class="panel panel-body">
            {!! $listrik->html() !!}
            </div>
        </div>
    </div>
    <div class = "col-md-6">
        <div class="panel panel-default">
            <div class="panel panel-heading">
               Penggunaaan Solar
            </div>
            <div class="panel panel-body">
            {!! $solar->html() !!}
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class = "col-md-6">
        <div class="panel panel-default">
            <div class="panel panel-heading">
               Penggunaaan Air Sumur
            </div>
            <div class="panel panel-body">
            {!! $sumur->html() !!}
            </div>
        </div>
    </div>
    <div class = "col-md-6">
        <div class="panel panel-default">
            <div class="panel panel-heading">
               Penggunaaan Air PAM
            </div>
            <div class="panel panel-body">
            {!! $pam->html() !!}
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class = "col-md-6">
        <div class="panel panel-default">
            <div class="panel panel-heading">
               Penggunaaan Limbah Kering
            </div>
            <div class="panel panel-body">
            {!! $kering->html() !!}
            </div>
        </div>
    </div>
    <div class = "col-md-6">
        <div class="panel panel-default">
            <div class="panel panel-heading">
               Penggunaaan Limbah Basah
            </div>
            <div class="panel panel-body">
            {!! $basah->html() !!}
            </div>
        </div>
    </div>
</div>

{!! Charts::scripts() !!}
{!! $listrik->script() !!}
{!! $solar->script() !!}
{!! $sumur->script() !!}
{!! $pam->script() !!}
{!! $kering->script() !!}
{!! $basah->script() !!}
@endsection