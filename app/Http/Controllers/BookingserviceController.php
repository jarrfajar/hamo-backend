<?php

namespace App\Http\Controllers;

use App\Http\Resources\BookingServiceResource;
use App\Models\Transaction;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class BookingserviceController extends Controller
{
    public function index()
    {
        $transaction = Transaction::with('service', 'category', 'user')->where('penjual_id', Auth::id())->get();

        return new BookingServiceResource(true, 'All Transaction', $transaction);
    }

    public function update(Request $request, $id) {
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
        return new BookingServiceResource(true, 'All Transaction', $transaction);
    }
}
