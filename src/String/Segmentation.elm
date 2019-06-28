module String.Segmentation exposing (graphemes)

import Parser exposing ((|=), Parser, Step(..), loop)
import String.Segmentation.CR as CR
import String.Segmentation.LF as LF


graphemes : String -> Result (List Parser.DeadEnd) (List String)
graphemes input =
    Parser.run (loop [] graphemesLoop) input


graphemesLoop : List String -> Parser (Step (List String) (List String))
graphemesLoop current =
    Parser.oneOf
        [ cons current (Parser.token "\u{000D}\n")
        , cons current CR.parser
        , cons current LF.parser
        , Parser.map (\_ -> Done (List.reverse current)) Parser.end
        ]


cons : List String -> Parser a -> Parser (Step (List String) (List String))
cons rest parser =
    parser
        |> Parser.getChompedString
        |> Parser.map (\new -> Loop (new :: rest))
