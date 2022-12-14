<?php

namespace App\Http\Controllers;

use App\Models\Transaction;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ConfirmController extends Controller
{
    public function index()
    {
        $transaction = Transaction::with('service', 'category', 'user')->where('user_id', Auth::id())->where('status', 'Upcoming')->where('confirm', '=', null)->get();
        return response()->json([
            'data' => $transaction,
        ]);
    }

    public function update(Request $request, $id)
    {
        // $transaction = Transaction::find($id)->update([
        //     'confirm' => $request->confirm,
        // ]);
        if ($request->status) {
            $transaction = Transaction::find($id)->update([
                'status' => $request->status,
                'confirm' => $request->confirm,
            ]);
        } else {
            $transaction = Transaction::find($id)->update([
                'confirm' => $request->confirm,
            ]);
        }
        

        return response()->json([
            'data' => $transaction,
        ]);
    }
}
