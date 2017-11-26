module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import List exposing (..)


bootstrap =
    node "link"
        [ rel "stylesheet", href "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" ]
        []


type Mesaj
    = IncreaseImage Int
    | DecreaseImage Int
    | ResetImage Int


type alias Model =
    List CatModel


type alias CatModel =
    { id : Int
    , imgSrc : String
    , width : Int
    }


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
    , { id = 1
      , imgSrc = "http://www.catster.com/wp-content/uploads/2017/06/small-kitten-meowing.jpg"
      , width = 200
      }
    , { id = 2
      , imgSrc = "https://www.cats.org.uk/uploads/images/featurebox_sidebar_kids/grief-and-loss.jpg"
      , width = 200
      }
    , { id = 3
      , imgSrc = "http://www.catster.com/wp-content/uploads/2017/08/Pixiebob-cat.jpg"
      , width = 200
      }
    ]


update : Mesaj -> Model -> Model
update msg model =
    case msg |> Debug.log "a" of
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

        DecreaseImage id ->
            let
                updateCat : CatModel -> CatModel
                updateCat cat =
                    if cat.id == id then
                        { cat | width = cat.width - 50 }
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
        [ bootstrap
        , h1 [] [ text "This is my cat" ]
        , div []
            (List.map
                viewCoolCat
                model
            )
        ]


viewCat : CatModel -> Html Mesaj
viewCat cat =
    div []
        [ img [ src cat.imgSrc, width cat.width ] []
        , button [ onClick <| DecreaseImage cat.id ] [ text "small" ]
        , button [ onClick <| ResetImage cat.id ] [ text "x" ]
        , button [ onClick <| IncreaseImage cat.id ] [ text "big" ]
        ]


viewCoolCat : CatModel -> Html Mesaj
viewCoolCat cat =
    div
        [ class "card"
        , style
            [ ( "width", (toString cat.width) ++ "px" )
            , ( "float", "left" )
            ]
        ]
        [ img
            [ class "card-img-top"
            , src cat.imgSrc
            ]
            []
        , div [ class "card-block" ]
            [ h4 [ class "card-title" ]
                [ text "Card title" ]
            , p [ class "card-text" ]
                [ text "Some quick example text to build on the card title and make up the bulk of the card's content." ]
            , div [ class "btn-group" ]
                [ button
                    [ class "btn btn-secondary"
                    , onClick <| DecreaseImage cat.id
                    ]
                    [ text "Small" ]
                , button
                    [ class "btn btn-secondary"
                    , onClick <| ResetImage cat.id
                    ]
                    [ text "X" ]
                , button
                    [ class "btn btn-secondary"
                    , onClick <| IncreaseImage cat.id
                    ]
                    [ text "Big" ]
                ]
            ]
        ]
