module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import List exposing (..)


type Mesaj
    = IncreaseImage Int
    | ResetImage Int


type alias Model =
    List CatModel


type alias CatModel =
    { id : Int
    , imgSrc : String
    , width : Int
    }


imageUrl =
    "https://static.pexels.com/photos/126407/pexels-photo-126407.jpeg"


main =
    beginnerProgram
        { model = initialModel
        , view = view
        , update = update
        }


initialModel : Model
initialModel =
    [ { id = 0
      , imgSrc = "https://static.pexels.com/photos/126407/pexels-photo-126407.jpeg"
      , width = 200
      }
    ]


update : Mesaj -> Model -> Model
update msg model =
    case msg of
        IncreaseImage id ->
            let
                updateCat : CatModel -> CatModel
                updateCat cat =
                    if cat.id == id then
                        { cat | width = cat.width + 50 }
                    else
                        cat
            in
                List.map updateCat model

        ResetImage id ->
            let
                resetCat : CatModel -> CatModel
                resetCat cat =
                    if cat.id == id then
                        { cat | width = 200 }
                    else
                        cat
            in
                List.map resetCat model


view : Model -> Html Mesaj
view model =
    div
        []
        [ h1 [] [ text "This is my cat" ]
        , div []
            (List.map
                viewCat
                model
            )
        ]


viewCat : CatModel -> Html Mesaj
viewCat cat =
    div []
        [ img [ src cat.imgSrc, width cat.width ] []
        , button [ onClick <| ResetImage cat.id ] [ text "x" ]
        , button [ onClick <| IncreaseImage cat.id ] [ text "big" ]
        ]
