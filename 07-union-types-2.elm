module Main exposing (main)

import Html exposing (Html, text)


type UserAge
    = Unknown
    | Age Int


num : UserAge
num =
    Age 987


textAfisat : UserAge -> String
textAfisat poateNum =
    case poateNum of
        Unknown ->
            "User didn't reveal his age"

        Age num ->
            "User's age is " ++ (toString num)


main =
    text (textAfisat num)
