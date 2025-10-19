<?php

namespace App\Http\Controllers\clients;

use App\Http\Controllers\Controller;
use App\Models\clients\Tours;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class MyTourController extends Controller
{
    private $tours;

    public function __construct()
    {
        parent::__construct(); // Nếu parent::__construct không tồn tại thì bỏ dòng này
        $this->tours = new Tours();
    }

    public function index()
    {
        $title = 'Tours đã đặt';
        $userId = $this->getUserId();

        $myTours = $this->user->getMyTours($userId);

        if ($userId) {
            $tourIds = [];

            try {
                $apiUrl = 'http://127.0.0.1:5555/api/user-recommendations';
                $response = Http::get($apiUrl, [
                    'user_id' => $userId
                ]);

                if ($response->successful()) {
                    $tourIds = $response->json('recommended_tours') ?? [];
                    $tourIds = array_slice($tourIds, 0, 2);
                } else {
                    $tourIds = [];
                }
            } catch (\Exception $e) {
                $tourIds = [];
                Log::error('Lỗi khi gọi API liên quan: ' . $e->getMessage());
            }

            $toursPopular = $this->tours->toursRecommendation($tourIds);
        } else {
            $toursPopular = $this->tours->toursPopular(6);
        }

        return view('clients.my-tours', compact('title', 'myTours', 'toursPopular'));
    }
}
