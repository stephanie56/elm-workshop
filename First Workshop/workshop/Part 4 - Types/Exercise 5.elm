-- Write type annotations using type aliases where it makes sense


module Exercise5 exposing (..)

import Html exposing (Html, beginnerProgram, button, div, text)
import Html.Events exposing (onClick)


type alias Model =


type alias Msg =

model =
    0


update msg model =
    case msg.operation of
        "Increment" ->
            model + msg.amount

        "Decrement" ->
            model - msg.amount

        _ ->
            model



-- Helpful hint: view: ??? -> Html ???

view model =
    div []
        [ div [] [ model |> toString |> text ]
        , button [ onClick { operation = "Increment", amount = 2 } ] [ text "Increment 2" ]
        , button [ onClick { operation = "Decrement", amount = 2 } ] [ text "Decerement 2" ]
        ]



-- Don't worry about this one


main =
    beginnerProgram { model = model, view = view, update = update }
