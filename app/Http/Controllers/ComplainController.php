<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Complain;
use CRUDBooster;

class ComplainController extends Controller
{
    public function index()
    {
        return CRUDBooster::authAPI();
        $complain = Complain::all();
        return response()->json($complain, 200);
    }

    public function show($id)
    {
        return Complain::find($id);
    }

    public function store(Request $request)
    {
        $complain = Complain::create($request->all());

        return response()->json($complain, 201);
    }

    public function update(Request $request, $id)
    {
        $Complain = Complain::findOrFail($id);
        $Complain->update($request->all());

        return response()->json($Complain, 200);
    }

    public function delete(Request $request, $id)
    {
        $Complain = Complain::findOrFail($id);
        $Complain->delete();

        return response()->json(null, 204);
    }
}
