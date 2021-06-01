<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Models\Episode;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {
        // $comment = Comment::where('id_episode', $id)->get();

        $comment = Comment::join('users', 'users.id', '=', 'comments.id_user')
            ->where('id_episode', $id)
            ->get(['users.name', 'users.profile_image', 'comments.comment']);

        $response = [
            'message' => 'success',
            'data' => $comment
        ];
        return response()->json($response, 200);
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
            'comment' => 'required'
        ]);

        $comment = Comment::create([
            'id_episode' => (int)$id,
            'id_user' => $request->user()->id,
            'comment' => $request->comment
        ]);

        $response = [
            'message' => 'Comment successfully added',
            'data' => $comment
        ];

        return response()->json($response, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function show(Comment $comment)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Comment $comment)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function destroy(Comment $comment)
    {
        //
    }
}
