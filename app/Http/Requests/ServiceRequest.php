<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Exceptions\HttpResponseException;
use Illuminate\Contracts\Validation\Validator;

class ServiceRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'title' => 'required|min:3|max:20',
            'image' => 'required|image|mimes:jpg,png,jpeg,gif,svg|max:2048',
            'category_id' => 'required|max:20',
            'user_id' => 'required|max:10',
            'description' => 'required|min:5',
            'price' => 'required|min:3|max:20',
        ];
    }

    public function failedValidation(Validator $validator)
    {
        throw new HttpResponseException(response()->json([
            'success'   => false,
            'message'   => 'validation errors',
            'data'      => $validator->errors()
        ]));
    }
}
