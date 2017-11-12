module Main exposing (main)

import Html exposing (Html, text)
import List exposing (..)


someNums : List Int
someNums =
    [ 43, 22, 100 ]


primulNumar : Int
primulNumar =
    case head someNums of
        Just n ->
            n

        Nothing ->
            0


main =
    text ("Primul numar este " ++ toString primulNumar)
