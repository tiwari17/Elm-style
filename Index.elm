module Components.Button.Index exposing (..)

import Html exposing (Html, text, button)
import Html.Attributes exposing (style)


type alias ButtonProps =
    { label : String, buttonType : String, buttonSize : String }


styles =
    { base =
        [ ( "-webkit-box-align", "center" )
        , ( "align-items", "center" )
        , ( "-webkit-box-pack", "center" )
        , ( "justify-content", "center" )
        , ( "cursor", "pointer" )
        , ( "font-family", "inherit" )
        , ( "font-size", "16px" )
        , ( "font-weight", "400" )
        , ( "opacity", "1" )
        , ( "height", "44px" )
        , ( "color", "white" )
        , ( "fill", "white" )
        , ( "border-style", "none" )
        , ( "outline", "none" )
        , ( "text-decoration", "none" )
        , ( "padding", "0px 18px" )
        , ( "border-radius", "4px" )
        ]
    }


applyColor buttonType baseStyle =
    let
        buttoncolor =
            if buttonType == "Primary" then
                "#4a90e2"
            else if buttonType == "Success" then
                "#39b54a"
            else if buttonType == "Error" then
                "#f85359"
            else
                "#4a90e2"
    in
        baseStyle ++ [ ( "backgroundColor", buttoncolor ) ]


buttonStyle : ButtonProps -> Html.Attribute msg
buttonStyle model =
    style
        (styles.base
            |> applyColor model.buttonType
            |> applySize model.buttonSize
        )


applySize buttonSize baseStyle =
    let
        buttonWidth =
            if buttonSize == "Large" then
                "200px"
            else if buttonSize == "Small" then
                "70px"
            else if buttonSize == "Mid" then
                "130px"
            else
                "200px"
    in
        baseStyle ++ [ ( "min-width", buttonSize ) ]




render : ButtonProps -> Html msg
render model =
    button
        [ buttonStyle model ]
        [ text model.label ]
