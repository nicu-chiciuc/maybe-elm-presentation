module Main exposing (main)

import Html exposing (Html, text)


type PoateNumar
    = FaraNumar
    | Numarul Int


num : PoateNumar
num =
    Numarul 987


textAfisat : PoateNumar -> String
textAfisat poateNum =
    case poateNum of
        FaraNumar ->
            "Nu există nici un număr"

        Numarul num ->
            "Numărul este " ++ (toString num)


main =
    text (textAfisat num)
