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

-- 【view】から受け取る値の型定義
type Msg =
    Input String

-- 【model】の内容の型(エイリアス)定義
type alias Model =
    {   input : String
    ,   output : List String
    ,   link : String
    }

-- 【model】の定義(初期値も)
init : Model
init = 
    {   input = ""
    ,   output = []
    ,   link = ""
    }

-- 【update】の定義
update : Msg -> Model -> Model
update msg model =
    case msg of
        Input input ->
            { model
                | input = input
                -- , output = createResult jisho input
                , link = createLink input
            }


-- createResult : String -> 
-- createResult jisho input =

-- 入力値と文字列足し算してぐぐるリンク作成する関数定義
createLink : String -> String
createLink input = 
    "https://www.google.com/search?q=" ++ input


-- 【view】の定義
view : Model -> Html Msg
view model =
    div [ id "wrap" ]
        [ section [ id "textarea" ]
            [ h1 [ id "nyuryoku" ]
                -- 入力されればInputで【update】に伝える
                [ input [ id "input", type_ "text", onInput Input ]
                    []
                ]
            -- ぐぐるリンクは【model】から参照
            , a [ id "guguru", href model.link ]
                [ text "ぐぐる" ]
            ]
        , section [ id "result" ]
            []
        ]