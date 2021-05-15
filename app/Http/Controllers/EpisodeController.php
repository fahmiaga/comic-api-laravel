<?php

namespace App\Http\Controllers;

use App\Models\Comic;
use App\Models\Episode;
use Illuminate\Http\Request;

class EpisodeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {
        $episode = Episode::where('id_comic', $id)->get();

        $response = [
            'message' => 'success',
            'data' => $episode
        ];
        return response($response, 200);
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
            'name' => 'required'
        ]);

        $id_check = Comic::find($id);
        if (!$id_check) {
            $response = [
                'message' => 'Comic not found'
            ];
            return response($response, 404);
        }

        $episode = Episode::create([
            'name' => $request->name,
            'id_comic' => $id
        ]);
        $response = [
            'message' => 'Episode successfully added',
            'data' => $episode
        ];

        return response($response, 201);
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
        $request->validate([
            'name' => 'required'
        ]);

        $episode = Episode::where('id_episode', $id)->update([
            'name' => $request->name,
        ]);

        $episodeRes = Episode::where('id_episode', $id)->first();
        $response = [
            'message' => 'Episode successfully Update',
            'data' => $episodeRes
        ];

        return response($response, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Episode::where('id_episode', $id)->delete();

        $response = [
            'message' => 'Episode successfully deleted'
        ];

        return response($response, 200);
    }
}
