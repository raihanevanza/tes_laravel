<?php

namespace App\Http\Resources;

use GuzzleHttp\Client;
use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        $client = new Client();

        $res = $client->request('GET', 'https://www.eannov8.com/career/case/getMajor.json');
        $result = $res->getBody();
        $clientes = json_decode($result, true);
        $classMajor;
        foreach ($clientes['data'] as $major) {
            if ($this->id == $major['id']) {
                $classMajor['id'] = $this->id;
                $classMajor['title'] = $this->title;
                $classMajor['major'] = $major['name'];
            }
        }

        return $classMajor;
    }
}
