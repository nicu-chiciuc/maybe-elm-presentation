module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


type Mesaj
    = IncreaseImage
    | ResetImage
    | DecreaseImage


imageUrl =
    "https://static.pexels.com/photos/126407/pexels-photo-126407.jpeg"


main =
    beginnerProgram
        { model = initialModel
        , view = view
        , update = update
        }


initialModel =
    500


update : Mesaj -> Int -> Int
update msg model =
    case msg of
        IncreaseImage ->
            model + 50

        DecreaseImage ->
            model - 50

        ResetImage ->
            initialModel


view : Int -> Html Mesaj
view model =
    div
        []
        [ h1 [] [ text "This is my cat" ]
        , p []
            [ button [ onClick DecreaseImage ] [ text "small" ]
            , button [ onClick ResetImage ] [ text "x" ]
            , button [ onClick IncreaseImage ] [ text "big" ]
            ]
        , img
            [ src imageUrl
            , width model
            ]
            []
        ]
