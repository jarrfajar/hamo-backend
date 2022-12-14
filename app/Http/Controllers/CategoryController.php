<?php

namespace App\Http\Controllers;

use App\Http\Requests\category\StoreCategoryRequest as CategoryStoreCategoryRequest;
use App\Http\Resources\CategoryResource;
use App\Models\Category;
use Illuminate\Support\Facades\Storage;


class CategoryController extends Controller
{
    public function index()
    {
       // $category = Category::latest()->paginate(5);
        $category = Category::with('services')->get();

        return new CategoryResource(true, 'List Data category', $category);
    }

    public function store(CategoryStoreCategoryRequest $request)
    {

        $image = $request->file('img');
        $image->storeAs('public/category', $image->hashName());

        $category = Category::create([
            'name' => $request->name,
            'img' =>  'storage/service/'.$image->hashName(),
            // 'img' =>  $image->hashName()
        ]);

        return new CategoryResource(true, 'Data Post Berhasil Ditambahkan!', $category);
    }

    public function show(Category $category)
    {
        // return new CategoryResource(true, 'Data Post Ditemukan!', $category);
        $id = $category->id;
        $category = Category::with('services')->where('id', $id)->get();

        return new CategoryResource(true, 'Category Ditemukan!', $category);
    }

    public function update(CategoryStoreCategoryRequest $request, Category $category)
    {
        if ($request->hasFile('img')) {
            $image = $request->file('img');
            $image->storeAs('public/category', $image->hashName());

            Storage::delete('public/category/' . $category->img);

            $category->update([
                'img'     => $image->hashName(),
                'name'     => $request->name,
            ]);
        } else {
            $category->update([
                'name'     => $request->name,
            ]);
        }

        return new CategoryResource(true, 'Data Post Berhasil Diubah!', $category);
    }

    public function destroy(Category $category)
    {
        Storage::delete('public/category/'.$category->img);
        $category->delete();

        return new CategoryResource(true, 'Data Post Berhasil Dihapus!', null);
    }
}
