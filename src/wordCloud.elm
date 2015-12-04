module WordCloud where

import Html exposing (div, button, text, span, p, img)
import Html.Events exposing (onClick)
import Html.Attributes
import StartApp.Simple exposing (start)
import List
import Word
import Debug exposing (log)
import String
import Random
import Array



main =
  start { model = init, view = view, update = update }


type alias Model = {
   words: List Word Model
}

init: Model
init =
  {
    words = [Word.initialModel("Apple" 10)]
  }


view: Signal.Address Action -> Model -> Html.Html
view address model =
  div [Html.Attributes.class "cloudContainer"]
        [
          div [Html.Attributes.style  [("width", "300px")]]
          (List.map (\cModel -> Word.view (Signal.forwardTo address (Do cModel.id)) cModel) model.words)
        ]




update: Action -> Model -> Model
update action model =
      model
