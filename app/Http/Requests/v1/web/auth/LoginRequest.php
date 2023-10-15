<?php

namespace App\Http\Requests\v1\web\auth;

use App\Http\Requests\BaseRequest;
use Illuminate\Contracts\Validation\ValidationRule;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Exceptions\HttpResponseException;

class LoginRequest extends BaseRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, ValidationRule|array|string>
     */
    public function rules(): array
    {
        return [
            'username' => ['required', 'email'],
            'password' => ['required'],
        ];
    }

    public function messages()
    {
        return [
            'username.required' => '用户名不能为空',
            'username.email' => '请输入正确的邮箱地址'
        ];
    }
}
