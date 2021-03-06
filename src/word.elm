module Word (Model, initialModel, update, view) where

import Html exposing (div, button, text)
import Html.Events exposing (onClick)
import Html.Attributes
import StartApp.Simple exposing (start)


type alias Model =
  {
  freq: Int,
  value: String
}

initialModel: String -> Int -> Model
initialModel val num =
  { value = val,
    freq = num
  }

view : Model -> Html.Html
view model =
  div [Html.Attributes.class "wordWrapper"] [
    Html.span [] [ text Model.value ]
  ]

update: Model -> Model
update action model =
  model
