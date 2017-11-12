module Main exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


type Mesaj
    = MăreșteImaginea
    | Обратно


imageUrl =
    "https://static.pexels.com/photos/126407/pexels-photo-126407.jpeg"


main =
    beginnerProgram
        { model = initialModel
        , view = view
        , update = update
        }


initialModel =
    200


update : Mesaj -> Int -> Int
update msg model =
    case msg of
        MăreșteImaginea ->
            model + 50

        Обратно ->
            initialModel


view : Int -> Html Mesaj
view model =
    div
        []
        [ h1 [] [ text "This is my cat" ]
        , p []
            [ button [ onClick MăreșteImaginea ] [ text "mărește" ]
            , button [ onClick Обратно ] [ text "x" ]
            ]
        , img
            [ src imageUrl
            , width model
            ]
            []
        ]
