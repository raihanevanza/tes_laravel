<?php

namespace App\Http\Resources;

use GuzzleHttp\Client;
use Illuminate\Http\Resources\Json\JsonResource;

class CserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'products_id' => $this->products_id,
            'code' => $this->code,
            'name' => $this->name,
        ];
    }
}
