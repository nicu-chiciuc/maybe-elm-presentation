module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)


imageUrl =
    "https://static.pexels.com/photos/126407/pexels-photo-126407.jpeg"


main : Html msg
main =
    div
        []
        [ h1 [] [ text "This is my cat" ]
        , img
            [ src imageUrl
            , width 200
            ]
            []
        , button [] [ text "click" ]
        ]
