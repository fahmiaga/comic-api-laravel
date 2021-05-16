<?php

namespace App\Http\Controllers;

use App\Models\Episode;
use App\Models\Image;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class ImageController extends Controller
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
        if (!$request->hasFile('image')) {
            return response()->json([
                'message' => 'image not found'
            ], 404);
        }
        $images = [];

        $episode = Episode::where('id_episode', $id)->first();
        $nameEps = Str::of($episode->name)->slug('-');
        foreach ($request->file('image') as $image) {
            $name = $episode->slug . '-' . $nameEps . '-' . time() . rand(1, 100) . '.' . $image->extension();
            $image->move(public_path('images/comic-images'), $name);
            $images[] = $name;

            Image::create([
                'image' => $name,
                'id_episode' => $id
            ]);
        }
        // $image = new Image();
        // $image->filenames = $images;
        // $image->save();

        $response = [
            'message' => 'Images successfully added',
        ];

        return response()->json($response, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Image  $image
     * @return \Illuminate\Http\Response
     */
    public function show(Image $image)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Image  $image
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Image $image)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Image  $image
     * @return \Illuminate\Http\Response
     */
    public function destroy(Image $image)
    {
        //
    }
}
