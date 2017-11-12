module Main exposing (main)

import Html exposing (Html, text)


type PoateNumar
    = FaraNumar
    | Numarul Int


num : PoateNumar
num =
    FaraNumar


textAfisat : PoateNumar -> String
textAfisat poateNum =
    "test"


main =
    text (textAfisat num)
