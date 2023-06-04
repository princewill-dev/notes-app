<?php

namespace App\Http\Controllers;

use App\Models\Save;
use Illuminate\Http\Request;

class SaveController extends Controller
{
    function saveFunction(Request $request) {

        // This function generate a unique 4 digits code
        function generateRandomString($length = 4){
            $a = '1234567890abcdefghijklmnopqrstuvwxyz';
            $characterLength = strlen($a);
            $randomString = '';
            for($i = 0; $i < $length; $i++){
                $randomString .=$a[rand(0, $characterLength - 1)];
            }
            return $randomString;
        }
        $code = generateRandomString();

        // Validate the submitted write up
        $validateData = $request->validate([
            'writeup' => 'required|max:2000',
        ]);

        $contentdata = new Save;
        $contentdata->writeup = $validateData['writeup'];
        $contentdata->code = $code;
        $contentdata->save();

        // create session
        $request->session()->put('code', $code);

        return redirect("/")->with('success', 'Write up saved successfully');

    }

    public function findFromUrl($code) {

        $writeUp = Save::where('code', $code)->first();

        if ($writeUp) {
            // If the write-up exists, display it
            return view('show', compact('writeUp'));
        } else {
            // If the write-up does not exist, display an error message
            $errorMessage = 'The note does not exist.';
            return view('error', compact('errorMessage'));

        }

    }


    public function findWriteupFunction(Request $request){
        // Validate the form input
        $request->validate([
            'code' => 'required',
        ]);

        $code = $request->input('code');

        // Retrieve the write-up associated with the provided code
        $writeUp = Save::where('code', $code)->first();

        if ($writeUp) {
            // If the write-up exists, display it
            return view('show', compact('writeUp'));
        } else {
            // If the write-up does not exist, display an error message
            $errorMessage = 'Invalid code. note does not exist.';
            return view('error', compact('errorMessage'));
        }
    }










}
