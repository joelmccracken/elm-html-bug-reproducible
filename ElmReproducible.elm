module ElmReproducible exposing(main)

import Html.App as App
import Html exposing (text, div, textarea, button)
import Html.Events exposing (onClick)


type alias Model =
  { results : String }


main =
  App.beginnerProgram
    { model = init
    , view = view
    , update = update
    }


init : Model
init = { results = "init value" }


view model =
  div []
    [ textarea [] []
    , button [ onClick Check ] [ text "Check"]
    , div [] [text model.results]
    ]


type Msg
  = Check


update : Msg -> Model -> Model
update msg model =
  case msg of
    Check -> { model | results = "the check results" }
