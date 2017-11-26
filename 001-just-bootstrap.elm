module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)


bootstrap =
    node "link"
        [ rel "stylesheet", href "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" ]
        []


card : String -> Html msg
card imgSrc =
    div [ class "card", style [ ( "width", "20rem" ) ] ]
        [ img [ class "card-img-top", src imgSrc, alt "Card image cap" ]
            []
        , div [ class "card-body" ]
            [ h4 [ class "card-title" ]
                [ text "Card title" ]
            , p [ class "card-text" ]
                [ text "Some quick example text to build on the card title and make up the bulk of the card's content." ]
            , a [ href "#", class "btn btn-primary" ]
                [ text "Go somewhere" ]
            ]
        ]


main : Html msg
main =
    body
        []
        [ bootstrap
        , text
            "Hello, World!"
        , button [ class "btn btn-primary" ]
            [ text "Primary" ]
        , card "https://static.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg"
        ]
