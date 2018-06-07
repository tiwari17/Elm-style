module Components.Button.Stories exposing (..)

import UIExplorer exposing (renderStories)
import Components.Button.Index exposing (render, ButtonProps)


stories : List ( String, ButtonProps )
stories =
    [ ( "PrimaryLarge", { label = "Primary Button", buttonType = "Primary", buttonSize = "Large" } )
    , ( "SuccessSmall", { label = "Success", buttonType = "Success", buttonSize = "Small" } )
    , ( "ErrorMid", { label = "Error", buttonType = "Error", buttonSize = "Mid" } )
    ]


viewStories =
    renderStories render stories
