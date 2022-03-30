module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Events exposing (onClick)


main =
    Browser.sandbox
        { init = "Welcome"
        , view = view
        , update = update
        }


type Msg
    = Surprise
    | Reset


view data =
    div []
        [ text (data ++ " ")
        , button [ onClick Surprise ] [ text "Surprise" ]
        , button [ onClick Reset ] [ text "Reset" ]
        ]


update msg data =
    case msg of
        Surprise ->
            "Happy birthday!"

        Reset ->
            "Welcome"
