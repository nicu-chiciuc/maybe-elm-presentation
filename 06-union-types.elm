module Main exposing (main)

import Html exposing (Html, text)


type UserAge
    = Unknown
    | Age Int


num : UserAge
num =
    Unknown


textAfisat : UserAge -> String
textAfisat poateNum =
    "test"


main =
    text (textAfisat num)
