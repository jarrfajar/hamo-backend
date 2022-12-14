<?php

namespace App\Http\Controllers;

use App\Http\Requests\TransactionPostRequest;
use App\Http\Resources\TransactionResource;
use App\Models\Comment;
use App\Models\Transaction;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class TransactionController extends Controller
{
    public function index()
    {
        $transaction = Transaction::with('service', 'category', 'user')->where('user_id', Auth::id())->get();

        return new TransactionResource(true, 'All Transaction', $transaction);
    }

    public function store(TransactionPostRequest $request)
    {
        $invoice = 'INVOICE' . '-' . date('Ymd') . '-' . str_pad(Transaction::count() + 1, 4, '0', STR_PAD_LEFT);

        $transaction = Transaction::create([
            'invoice' => $invoice,
            'service_id' => $request->service_id,
            'category_id' => $request->category_id,
            'user_id' => $request->user_id,
            'date' => $request->date,
            'time' => $request->time,
            'hours' => $request->hours,
            'description' => $request->description,
            'address' => $request->address,
            'amount' => $request->amount,
            'status' => $request->status,
            'penjual_id' => $request->penjual_id,
        ]);

        return new TransactionResource(true, 'Transaction Berhasil Ditambahkan!', $transaction);
    }

    public function show($id)
    {
        $transaction = Transaction::where('id', $id)->with('service', 'category', 'user')->get();

        return new TransactionResource(true, 'Transaction!', $transaction);
    }

    public function update(Request $request, $id)
    {
        if ($request->rating) {
            $transaction = Transaction::find($id)->update([
                'status' => $request->status,
            ]);
            if ($request->description) {
                Comment::create([
                   'user_id' => $request->user_id,
                   'service_id' => $request->service_id,
                   'description' => $request->description,
                   'rating' => $request->rating,
                ]);
            } else {
                Comment::create([
                    'user_id' => $request->user_id,
                    'service_id' => $request->service_id,
                    'rating' => $request->rating,
                ]);
            }
        } else {
            $transaction = Transaction::find($id)->update([
                'status' => $request->status,
            ]);
        }



        return new TransactionResource(true, 'Transaction!', $transaction);
    }
}
