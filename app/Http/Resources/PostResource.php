<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use GuzzleHttp\Client;

class PostResource extends JsonResource
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
        // dd($this->classes);
        $classTable = new UserResource($this->classes);
        $classMajor;
        foreach ($clientes['data'] as $major) {
            if ($major['id'] == $classTable['id']) {
                $classTable['id'] = $classTable['id'];
                $classTable['name'] = $major['name'];
            }
        }
        
         
        return 
        [
            'id' => $this->id,
            'name' => $this->student->name,
            'umur' => $this->student->umur,
            'no_hp' => $this->student->phone_number,
            'email' => $this->student->email,
            'class' => $classTable
        ];
    }
}
