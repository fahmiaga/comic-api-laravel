<?php

namespace App\Http\Controllers;

use App\Models\Comic;
use App\Models\Rate;
use Illuminate\Http\Request;


class RatingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, $id)
    {
        $request->validate([
            'rating' => 'required'
        ]);
        $user_id = $request->user()->id;

        $user = Rate::where('user_id', $user_id)->first();


        if ($user) {
            $response = [
                'message' => 'User already gived a rate',
                'status' => 405
            ];
            return response()->json($response, 405);
        }

        $rating = Rate::create([
            'rating' => intval($request->rating),
            'comic_id' => intval($id),
            'user_id' => $user_id

        ]);

        $totalRate  = Rate::where('comic_id', $id)->get()->avg('rating');
        $rating = round($totalRate, 1);

        Comic::where('id', $id)->update([
            'rating' => $rating,
        ]);

        $response = [
            'message' => 'Rating Successfully added',
            'status' => 201,
            'data' => $rating
        ];

        return response()->json($response, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
