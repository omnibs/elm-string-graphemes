module String.Segmentation.Data.CR exposing (chars, match, parser)

{-| Hey, this module was generated automatically. Please don't edit it.

Run `make src/String/Segmentation/Data/CR.elm` instead!

-}

import Parser exposing (Parser)
import String.Segmentation.RangeSet as RangeSet exposing (RangeSet)
import String.Segmentation.RangeSet.Range as Range exposing (Range)


parser : Parser ()
parser =
    Parser.chompIf match


match : Char -> Bool
match c =
    RangeSet.member c chars


chars : RangeSet Char
chars =
    RangeSet.fromList points


points : List (Range Char)
points =
    List.map Range.point
        [ '\u{000D}' -- Cc       <control-000D>
        ]
