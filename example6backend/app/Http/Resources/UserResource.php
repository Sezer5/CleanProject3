<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'email ' => $this->email,
            'password' => $this->password,
            'address' => $this->address,
            'phone' => $this->phone,
            'profile_completed' => $this->profile_completed,
            'profile_image' => $this->profile_image,
        ];
    }
}
