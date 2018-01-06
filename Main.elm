module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


main =
    Html.program
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }



-- MODEL


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



-- UPDATE


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ header
        , body
        ]



{--
-- HEADER
--}


header : Html Msg
header =
    div
        [ style
            [ ( "text-align", "center" )
            , ( "padding", "10px" )
            , ( "border-bottom", "5px solid #C4C4C4" )
            ]
        ]
        [ nav []
            [ headerLink "Home"
            , headerLink "About"
            , headerLink "Photo Gallery"
            , headerLink "Video"
            , headerLink "Contact"
            ]
        ]


headerLink : String -> Html Msg
headerLink title =
    p
        [ style
            [ ( "display", "inline-block" )
            , ( "margin", "10px" )
            ]
        ]
        [ text title ]



{--
-- BODY
--}


body : Html Msg
body =
    div []
        [ titlePage
        , parallax "noelibricks.webp"
        , aboutMePage
        , parallaxVid "noeliloop.mp4"
        , photoGallery
        , contactPage
        ]



{--
-- TITLE
--}


titlePage =
    div
        [ style
            [ ( "color", "white" )
            , ( "height", "700px" )
            , ( "background-color", "black" )
            , ( "background-image", """url("noeliflying.png")""" )
            , ( "background-size", "cover" )
            ]
        ]
        [ h1
            [ style
                [ ( "margin", "0px" )
                , ( "font-family", "GlossAndBloom" )
                ]
            ]
            [ text "Noeli Acoba" ]
        , p
            [ style
                [ ( "margin", "0px" )
                , ( "font-family", "LibreBaskerville" )
                ]
            ]
            [ text "Circus Artist" ]
        ]



{--
-- ABOUT ME
--}


aboutMePage =
    div
        [ style
            [ ( "color", "black" )
            , ( "height", "700px" )
            , ( "background-color", "white" )
            ]
        ]
        [ h1
            [ style
                [ ( "margin", "0px" )
                ]
            ]
            [ text "About Me" ]
        , p [] [ text "Noeli Acoba was a college student when she became captivated with circus. With her background in competitive figure skating, she quickly realized her true love for creating and performing new feats in the air. After graduating UC Davis with a degree in Biotechnology, she became a circus artist and never turned back." ]
        , p [] [ text "Noeli has trained aerial rope and silks under both Julia Grace and Paper Doll Militia’s Co-Artistic Director, Rain Anya. She was accepted into and attended Cirque School LA’s Cirque Intensive for Emerging Artists under the mentorship of its founder, Cirque du Soleil veteran Aloysia Gavre." ]
        , p [] [ text "Noeli was the Apprentice Mentorship Program (AMP) Student for 2017 and a member of the Pre-Professional Troupe at Kinetic Theory Circus Arts in Los Angeles, California. She trained full-time in her specialty (aerial rope), as well as single-point and static trapeze, basic acrobatics, dance, and physical theatre. At Kinetic Theory, she was mentored by renowned circus performer & instructor, Eric Newton (Cirque du Soleil & Cirque Eloize)." ]
        , p [] [ text "She is also the Arts Administrator for the international aerial-theatre company Paper Doll Militia." ]
        , p [] [ text "Equipped with the knowledge of diverse West Coast aerial styles, Noeli intricately blends static moments and dynamic movement within her innovative acts. Delivering raw, compelling storytelling through unique choreography, Noeli is a powerful force to be reckoned with." ]
        , p [] [ text "Click here for Noeli's CV" ]
        ]



{--
-- PHOTO GALLERY
--}


photoGallery =
    div
        [ style
            [ ( "color", "black" )
            , ( "height", "700px" )
            , ( "background-color", "white" )
            ]
        ]
        [ h1
            [ style
                [ ( "margin", "0px" )
                ]
            ]
            [ text "Photo Gallery" ]
        , p [] [ text "Photos here" ]
        , p [] [ text "Videos here" ]
        ]



{--
-- CONTACT PAGE
--}


contactPage =
    div
        [ style
            [ ( "color", "black" )
            , ( "height", "700px" )
            , ( "background-color", "white" )
            ]
        ]
        [ h1
            [ style
                [ ( "margin", "0px" )
                ]
            ]
            [ text "Contact" ]
        , p [] [ text "For booking and press inquiries, please complete this form" ]
        , p [] [ text "form here" ]
        ]



{--
-- HELPER FUNCTIONS
--}


parallax : String -> Html Msg
parallax image =
    div
        [ style
            [ ( "background-image", """url(" """ ++ image ++ """ ")""" )
            , ( "min-height", "500px" )
            , ( "background-attachment", "fixed" )
            , ( "background-position", "center" )
            , ( "background-repeat", "no-repeat" )
            , ( "background-size", "cover" )
            ]
        ]
        []


parallaxVid : String -> Html Msg
parallaxVid video =
    div
        [ style
            [ ( "height", "400px" )
            , ( "overflow", "hidden" )
            ]
        ]
        [ node "video"
            [ style
                [ ( "width", "100%" )
                , ( "min-height", "300px" )
                ]
            , autoplay True
            , loop True
            , attribute "muted" "true"
            ]
            [ source
                [ src video
                , style
                    [ ( "type", "video/mp4" )
                    ]
                ]
                []
            , text "Your browser does not support the video tag"
            ]
        ]



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
