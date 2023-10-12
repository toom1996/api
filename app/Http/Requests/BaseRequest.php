<?php

namespace App\Http\Requests;

use Illuminate\Contracts\Validation\Validator;
use Illuminate\Http\Exceptions\HttpResponseException;

class BaseRequest extends \Illuminate\Foundation\Http\FormRequest
{
    public int $code = 1001;

    protected function failedValidation(Validator $validator): void
    {
        $data = [
            'code' => $this->code,
            'msg' => $validator->errors()->first(),
        ];

        throw new HttpResponseException(response()->json($data));
    }
}
