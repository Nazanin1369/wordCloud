module WordCloud where

import Html exposing (div, button, text, span, p, img)
import Html.Events exposing (onClick)
import Signal.Time exposing (..)
import Html.Attributes
import StartApp.Simple exposing (start)
import List
import Card
import Debug exposing (log)
import String
import Random
import Array



main =
  start { model = init, view = view, update = update }


type alias Model = {
   words: List Word Model
}
