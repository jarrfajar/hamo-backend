<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\ServiceRequest;
use App\Http\Resources\ServiceResource;
use App\Models\Favorite;
use App\Models\Service;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class ServiceController extends Controller
{
    public function index()
    {
        $service = Service::with('user','category','favorite','comments.user')->get();

        return new ServiceResource(true, 'list data service', $service);
    }

    public function test()
    {
        $service = Service::with('category')->get();

        return view('welcome',['service' => $service]);
    }

    public function store(ServiceRequest $request)
    {

        $image = $request->file('image');
        $image->storeAs('public/service', $image->hashName());

        $service = service::create([
            'title' => $request->title,
            'image' =>  'storage/service/' . $image->hashName(),
            'user_id' => $request->user_id,
            // 'image' =>  $img,
            'category_id' => $request->category_id,
            'description' => $request->description,
            'price' => $request->price,
        ]);

        return new ServiceResource(true, 'service Berhasil Ditambahkan!', $service);
    }

    public function show(Service $service)
    {
        // Auth::user()->favorites
        $id = $service->id;
        $service = Service::with('user','category','favorite','comments.user')->where('id', $id)->get();

        return new ServiceResource(true, 'service Ditemukan!', $service);
    }

    public function update(ServiceRequest $request, Service $service)
    {
        if ($request->hasFile('image')) {
            $image = $request->file('image');

            $slice = Str::after($service->image, 'storage/service/');
            Storage::delete('public/service/' . $slice);

            $image->storeAs('public/service', $image->hashName());

            $service->update([
                'title' => $request->title,
                // 'image'     => $image->hashName(),
                'image' =>  'storage/service/' . $image->hashName(),
                'category_id' => $request->category_id,
                'description' => $request->description,
                'price' => $request->price,
            ]);
        } else {
            $service->update([
                'title' => $request->title,
                'category_id' => $request->category_id,
                'description' => $request->description,
                'price' => $request->price,
            ]);
        }

        return new ServiceResource(true, 'service Berhasil Diubah!', $service);
    }

    public function destroy(Service $service)
    {
        Storage::delete('public/service/' . $service->image);
        $service->delete();

        return new ServiceResource(true, 'service Berhasil Dihapus!', null);
    }
}
