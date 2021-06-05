<?php

namespace App\Http\Controllers;

use App\Models\Genre;
use Illuminate\Http\Request;

class GenreController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $genre = Genre::all();

        $response = [

            'message' => 'success',
            'status' => 200,
            'data' => $genre
        ];

        return response()->json($response, 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $request->validate([
            'genre' => 'required'
        ]);

        $genre = Genre::create([
            'genre' => $request->genre
        ]);

        $response = [
            'message' => 'genre successfully added',
            'status' => 201,
            'data' => $genre
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

        $request->validate([
            'genre' => 'required'
        ]);

        $genreId = Genre::find($id);

        $genre =  $genreId->update([
            'genre' => $request->genre
        ]);

        $response = [
            'message' => 'genre successfully added',
            'status' => 201,
            'data' => $genre
        ];

        return response()->json($response, 201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Genre::destroy($id);

        $response = [
            'message' => 'Genre successfully deleted',
            'status' => 201,

        ];

        return response()->json($response, 200);
    }
}
