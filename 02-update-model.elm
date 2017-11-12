module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)


imageUrl =
    "https://static.pexels.com/photos/126407/pexels-photo-126407.jpeg"


main =
    beginnerProgram
        { model = 400
        , view = view
        , update = update
        }


update : msg -> Int -> Int
update msg model =
    model


view : Int -> Html msg
view model =
    div
        []
        [ h1 [] [ text "This is my cat" ]
        , img
            [ src imageUrl
            , width model
            ]
            []
        , button [] [ text "click" ]
        ]
