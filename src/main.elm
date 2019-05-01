import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


main : Program () Model Msg
main = 
    Browser.sandbox
        {   init = init
        ,   update = update
        ,   view = view
        }

type Msg =
    Input String

type alias Model =
    {   input : String
    ,   output : List String
    ,   link : String
    }


init : Model
init = 
    {   input = ""
    ,   output = []
    ,   link = ""
    }


update : Msg -> Model -> Model
update msg model =
    case msg of
        Input input ->
            { model
                | input = input
                -- , output = createResult msg
                , link = createLink input
            }


-- createResult : String -> 
-- createResult jisho msg  =

createLink : String -> String
createLink input = 
    "https://www.google.com/search?q=" ++ input



view : Model -> Html Msg
view model =
    div [ id "wrap" ]
        [ section [ id "textarea" ]
            [ h1 [ id "nyuryoku" ]
                [ input [ id "input", type_ "text", onInput Input, value model.input ]
                    []
                ]
            , a [ id "guguru", href model.link ]
                [ text "ぐぐる" ]
            ]
        , section [ id "result" ]
            []
        ]