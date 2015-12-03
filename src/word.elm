module Word (Model)

import Html exposing (div, button, text)
import Html.Events exposing (onClick)
import Html.Attributes
import StartApp.Simple exposing (start)


type alias Model =
  {
  size: Int
}
