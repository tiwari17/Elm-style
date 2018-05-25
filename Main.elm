module Main exposing (..)


import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick, onSubmit)
import StyleSheet exposing (Class(..))
import Layouts
import Style exposing (all)


main : Program Never Int Msg
main =
    Html.program
        { init = 0 ! []
        , view = view
        , update = update
        , subscriptions = (\_ -> Sub.none)
        }


type alias Model =
    Int


type Msg
    = WeDontDoAnythingHere

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        WeDontDoAnythingHere ->
            let
                _ =
                    Debug.log "style-elements" "This website doesn't actually do anything..."
            in
                ( model, Cmd.none )


{ class, classList } =
    StyleSheet.stylesheet


view : Model -> Html Msg
view model =
    div
        []
        [ Style.embed StyleSheet.stylesheet
        , Style.embed Layouts.stylesheet
        
            , Layouts.centered
                    [ button
                        [ class Buttonsmall0
                        , onClick WeDontDoAnythingHere
                        ]
                        [ text "Continue to Quiz" ]
                    ]

            , Layouts.centered
                    [ button
                        [ class Buttonsmall1
                        , onClick WeDontDoAnythingHere
                        ]
                        [ text "Continue to Quiz" ]
                    ]

            , Layouts.centered
                    [ button
                        [ class Buttonsmall2
                        , onClick WeDontDoAnythingHere
                        ]
                        [ text "Continue to Quiz" ]
                    ]

            , Layouts.centered
                    [ button
                        [ class Buttonsmall3
                        , onClick WeDontDoAnythingHere
                        ]
                        [ text "Continue to Quiz" ]
                    ]

            , Layouts.centered
                    [ button
                        [ class Buttonsmall4
                        , onClick WeDontDoAnythingHere
                        ]
                        [ text "Continue to Quiz" ]
                    ]
            , Layouts.centered
                    [ button
                        [ class Buttonsmall5
                        , onClick WeDontDoAnythingHere
                        ]
                        [ text "Continue to Quiz" ]
                    ]



            , Layouts.centered
                    [ button
                        [ class Button0
                        , onClick WeDontDoAnythingHere
                        ]
                        [ text "Continue to Quiz" ]
                    ]

            , Layouts.centered
                    [ button
                        [ class Button1
                        , onClick WeDontDoAnythingHere
                        ]
                        [ text "Continue to Quiz" ]
                    ]

            , Layouts.centered
                    [ button
                        [ class Button2
                        , onClick WeDontDoAnythingHere
                        ]
                        [ text "Continue to Quiz" ]
                    ]

            , Layouts.centered
                    [ button
                        [ class Button3
                        , onClick WeDontDoAnythingHere
                        ]
                        [ text "Continue to Quiz" ]
                    ]

            , Layouts.centered
                    [ button
                        [ class Button4
                        , onClick WeDontDoAnythingHere
                        ]
                        [ text "Continue to Quiz" ]
                    ]

            , Layouts.centered
                    [ button
                        [ class Button5
                        , onClick WeDontDoAnythingHere
                        ]
                        [ text "Continue to Quiz" ]
                    ]     
        ]
