module String.Segmentation.Matchers.LF exposing (match)


match : Char -> Bool
match char =
    let
        c =
            Char.toCode char
    in
    c == 10
