module String.Segmentation.Data.LVT exposing (chars, match, parser)

{-| Hey, this module was generated automatically. Please don't edit it.

Run `make src/String/Segmentation/Data/LVT.elm` instead!

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
    RangeSet.fromList ranges


ranges : List (Range Char)
ranges =
    List.map (\( low, high ) -> Range.range low high)
        [ ( '각', '갛' ) -- Lo  [27] HANGUL SYLLABLE GAG..HANGUL SYLLABLE GAH
        , ( '객', '갷' ) -- Lo  [27] HANGUL SYLLABLE GAEG..HANGUL SYLLABLE GAEH
        , ( '갹', '걓' ) -- Lo  [27] HANGUL SYLLABLE GYAG..HANGUL SYLLABLE GYAH
        , ( '걕', '걯' ) -- Lo  [27] HANGUL SYLLABLE GYAEG..HANGUL SYLLABLE GYAEH
        , ( '걱', '겋' ) -- Lo  [27] HANGUL SYLLABLE GEOG..HANGUL SYLLABLE GEOH
        , ( '겍', '겧' ) -- Lo  [27] HANGUL SYLLABLE GEG..HANGUL SYLLABLE GEH
        , ( '격', '곃' ) -- Lo  [27] HANGUL SYLLABLE GYEOG..HANGUL SYLLABLE GYEOH
        , ( '곅', '곟' ) -- Lo  [27] HANGUL SYLLABLE GYEG..HANGUL SYLLABLE GYEH
        , ( '곡', '곻' ) -- Lo  [27] HANGUL SYLLABLE GOG..HANGUL SYLLABLE GOH
        , ( '곽', '괗' ) -- Lo  [27] HANGUL SYLLABLE GWAG..HANGUL SYLLABLE GWAH
        , ( '괙', '괳' ) -- Lo  [27] HANGUL SYLLABLE GWAEG..HANGUL SYLLABLE GWAEH
        , ( '괵', '굏' ) -- Lo  [27] HANGUL SYLLABLE GOEG..HANGUL SYLLABLE GOEH
        , ( '굑', '굫' ) -- Lo  [27] HANGUL SYLLABLE GYOG..HANGUL SYLLABLE GYOH
        , ( '국', '궇' ) -- Lo  [27] HANGUL SYLLABLE GUG..HANGUL SYLLABLE GUH
        , ( '궉', '궣' ) -- Lo  [27] HANGUL SYLLABLE GWEOG..HANGUL SYLLABLE GWEOH
        , ( '궥', '궿' ) -- Lo  [27] HANGUL SYLLABLE GWEG..HANGUL SYLLABLE GWEH
        , ( '귁', '귛' ) -- Lo  [27] HANGUL SYLLABLE GWIG..HANGUL SYLLABLE GWIH
        , ( '귝', '귷' ) -- Lo  [27] HANGUL SYLLABLE GYUG..HANGUL SYLLABLE GYUH
        , ( '극', '긓' ) -- Lo  [27] HANGUL SYLLABLE GEUG..HANGUL SYLLABLE GEUH
        , ( '긕', '긯' ) -- Lo  [27] HANGUL SYLLABLE GYIG..HANGUL SYLLABLE GYIH
        , ( '긱', '깋' ) -- Lo  [27] HANGUL SYLLABLE GIG..HANGUL SYLLABLE GIH
        , ( '깍', '깧' ) -- Lo  [27] HANGUL SYLLABLE GGAG..HANGUL SYLLABLE GGAH
        , ( '깩', '꺃' ) -- Lo  [27] HANGUL SYLLABLE GGAEG..HANGUL SYLLABLE GGAEH
        , ( '꺅', '꺟' ) -- Lo  [27] HANGUL SYLLABLE GGYAG..HANGUL SYLLABLE GGYAH
        , ( '꺡', '꺻' ) -- Lo  [27] HANGUL SYLLABLE GGYAEG..HANGUL SYLLABLE GGYAEH
        , ( '꺽', '껗' ) -- Lo  [27] HANGUL SYLLABLE GGEOG..HANGUL SYLLABLE GGEOH
        , ( '껙', '껳' ) -- Lo  [27] HANGUL SYLLABLE GGEG..HANGUL SYLLABLE GGEH
        , ( '껵', '꼏' ) -- Lo  [27] HANGUL SYLLABLE GGYEOG..HANGUL SYLLABLE GGYEOH
        , ( '꼑', '꼫' ) -- Lo  [27] HANGUL SYLLABLE GGYEG..HANGUL SYLLABLE GGYEH
        , ( '꼭', '꽇' ) -- Lo  [27] HANGUL SYLLABLE GGOG..HANGUL SYLLABLE GGOH
        , ( '꽉', '꽣' ) -- Lo  [27] HANGUL SYLLABLE GGWAG..HANGUL SYLLABLE GGWAH
        , ( '꽥', '꽿' ) -- Lo  [27] HANGUL SYLLABLE GGWAEG..HANGUL SYLLABLE GGWAEH
        , ( '꾁', '꾛' ) -- Lo  [27] HANGUL SYLLABLE GGOEG..HANGUL SYLLABLE GGOEH
        , ( '꾝', '꾷' ) -- Lo  [27] HANGUL SYLLABLE GGYOG..HANGUL SYLLABLE GGYOH
        , ( '꾹', '꿓' ) -- Lo  [27] HANGUL SYLLABLE GGUG..HANGUL SYLLABLE GGUH
        , ( '꿕', '꿯' ) -- Lo  [27] HANGUL SYLLABLE GGWEOG..HANGUL SYLLABLE GGWEOH
        , ( '꿱', '뀋' ) -- Lo  [27] HANGUL SYLLABLE GGWEG..HANGUL SYLLABLE GGWEH
        , ( '뀍', '뀧' ) -- Lo  [27] HANGUL SYLLABLE GGWIG..HANGUL SYLLABLE GGWIH
        , ( '뀩', '끃' ) -- Lo  [27] HANGUL SYLLABLE GGYUG..HANGUL SYLLABLE GGYUH
        , ( '끅', '끟' ) -- Lo  [27] HANGUL SYLLABLE GGEUG..HANGUL SYLLABLE GGEUH
        , ( '끡', '끻' ) -- Lo  [27] HANGUL SYLLABLE GGYIG..HANGUL SYLLABLE GGYIH
        , ( '끽', '낗' ) -- Lo  [27] HANGUL SYLLABLE GGIG..HANGUL SYLLABLE GGIH
        , ( '낙', '낳' ) -- Lo  [27] HANGUL SYLLABLE NAG..HANGUL SYLLABLE NAH
        , ( '낵', '냏' ) -- Lo  [27] HANGUL SYLLABLE NAEG..HANGUL SYLLABLE NAEH
        , ( '냑', '냫' ) -- Lo  [27] HANGUL SYLLABLE NYAG..HANGUL SYLLABLE NYAH
        , ( '냭', '넇' ) -- Lo  [27] HANGUL SYLLABLE NYAEG..HANGUL SYLLABLE NYAEH
        , ( '넉', '넣' ) -- Lo  [27] HANGUL SYLLABLE NEOG..HANGUL SYLLABLE NEOH
        , ( '넥', '넿' ) -- Lo  [27] HANGUL SYLLABLE NEG..HANGUL SYLLABLE NEH
        , ( '녁', '녛' ) -- Lo  [27] HANGUL SYLLABLE NYEOG..HANGUL SYLLABLE NYEOH
        , ( '녝', '녷' ) -- Lo  [27] HANGUL SYLLABLE NYEG..HANGUL SYLLABLE NYEH
        , ( '녹', '놓' ) -- Lo  [27] HANGUL SYLLABLE NOG..HANGUL SYLLABLE NOH
        , ( '놕', '놯' ) -- Lo  [27] HANGUL SYLLABLE NWAG..HANGUL SYLLABLE NWAH
        , ( '놱', '뇋' ) -- Lo  [27] HANGUL SYLLABLE NWAEG..HANGUL SYLLABLE NWAEH
        , ( '뇍', '뇧' ) -- Lo  [27] HANGUL SYLLABLE NOEG..HANGUL SYLLABLE NOEH
        , ( '뇩', '눃' ) -- Lo  [27] HANGUL SYLLABLE NYOG..HANGUL SYLLABLE NYOH
        , ( '눅', '눟' ) -- Lo  [27] HANGUL SYLLABLE NUG..HANGUL SYLLABLE NUH
        , ( '눡', '눻' ) -- Lo  [27] HANGUL SYLLABLE NWEOG..HANGUL SYLLABLE NWEOH
        , ( '눽', '뉗' ) -- Lo  [27] HANGUL SYLLABLE NWEG..HANGUL SYLLABLE NWEH
        , ( '뉙', '뉳' ) -- Lo  [27] HANGUL SYLLABLE NWIG..HANGUL SYLLABLE NWIH
        , ( '뉵', '늏' ) -- Lo  [27] HANGUL SYLLABLE NYUG..HANGUL SYLLABLE NYUH
        , ( '늑', '늫' ) -- Lo  [27] HANGUL SYLLABLE NEUG..HANGUL SYLLABLE NEUH
        , ( '늭', '닇' ) -- Lo  [27] HANGUL SYLLABLE NYIG..HANGUL SYLLABLE NYIH
        , ( '닉', '닣' ) -- Lo  [27] HANGUL SYLLABLE NIG..HANGUL SYLLABLE NIH
        , ( '닥', '닿' ) -- Lo  [27] HANGUL SYLLABLE DAG..HANGUL SYLLABLE DAH
        , ( '댁', '댛' ) -- Lo  [27] HANGUL SYLLABLE DAEG..HANGUL SYLLABLE DAEH
        , ( '댝', '댷' ) -- Lo  [27] HANGUL SYLLABLE DYAG..HANGUL SYLLABLE DYAH
        , ( '댹', '덓' ) -- Lo  [27] HANGUL SYLLABLE DYAEG..HANGUL SYLLABLE DYAEH
        , ( '덕', '덯' ) -- Lo  [27] HANGUL SYLLABLE DEOG..HANGUL SYLLABLE DEOH
        , ( '덱', '뎋' ) -- Lo  [27] HANGUL SYLLABLE DEG..HANGUL SYLLABLE DEH
        , ( '뎍', '뎧' ) -- Lo  [27] HANGUL SYLLABLE DYEOG..HANGUL SYLLABLE DYEOH
        , ( '뎩', '돃' ) -- Lo  [27] HANGUL SYLLABLE DYEG..HANGUL SYLLABLE DYEH
        , ( '독', '돟' ) -- Lo  [27] HANGUL SYLLABLE DOG..HANGUL SYLLABLE DOH
        , ( '돡', '돻' ) -- Lo  [27] HANGUL SYLLABLE DWAG..HANGUL SYLLABLE DWAH
        , ( '돽', '됗' ) -- Lo  [27] HANGUL SYLLABLE DWAEG..HANGUL SYLLABLE DWAEH
        , ( '됙', '됳' ) -- Lo  [27] HANGUL SYLLABLE DOEG..HANGUL SYLLABLE DOEH
        , ( '됵', '둏' ) -- Lo  [27] HANGUL SYLLABLE DYOG..HANGUL SYLLABLE DYOH
        , ( '둑', '둫' ) -- Lo  [27] HANGUL SYLLABLE DUG..HANGUL SYLLABLE DUH
        , ( '둭', '뒇' ) -- Lo  [27] HANGUL SYLLABLE DWEOG..HANGUL SYLLABLE DWEOH
        , ( '뒉', '뒣' ) -- Lo  [27] HANGUL SYLLABLE DWEG..HANGUL SYLLABLE DWEH
        , ( '뒥', '뒿' ) -- Lo  [27] HANGUL SYLLABLE DWIG..HANGUL SYLLABLE DWIH
        , ( '듁', '듛' ) -- Lo  [27] HANGUL SYLLABLE DYUG..HANGUL SYLLABLE DYUH
        , ( '득', '듷' ) -- Lo  [27] HANGUL SYLLABLE DEUG..HANGUL SYLLABLE DEUH
        , ( '듹', '딓' ) -- Lo  [27] HANGUL SYLLABLE DYIG..HANGUL SYLLABLE DYIH
        , ( '딕', '딯' ) -- Lo  [27] HANGUL SYLLABLE DIG..HANGUL SYLLABLE DIH
        , ( '딱', '땋' ) -- Lo  [27] HANGUL SYLLABLE DDAG..HANGUL SYLLABLE DDAH
        , ( '땍', '땧' ) -- Lo  [27] HANGUL SYLLABLE DDAEG..HANGUL SYLLABLE DDAEH
        , ( '땩', '떃' ) -- Lo  [27] HANGUL SYLLABLE DDYAG..HANGUL SYLLABLE DDYAH
        , ( '떅', '떟' ) -- Lo  [27] HANGUL SYLLABLE DDYAEG..HANGUL SYLLABLE DDYAEH
        , ( '떡', '떻' ) -- Lo  [27] HANGUL SYLLABLE DDEOG..HANGUL SYLLABLE DDEOH
        , ( '떽', '뗗' ) -- Lo  [27] HANGUL SYLLABLE DDEG..HANGUL SYLLABLE DDEH
        , ( '뗙', '뗳' ) -- Lo  [27] HANGUL SYLLABLE DDYEOG..HANGUL SYLLABLE DDYEOH
        , ( '뗵', '똏' ) -- Lo  [27] HANGUL SYLLABLE DDYEG..HANGUL SYLLABLE DDYEH
        , ( '똑', '똫' ) -- Lo  [27] HANGUL SYLLABLE DDOG..HANGUL SYLLABLE DDOH
        , ( '똭', '뙇' ) -- Lo  [27] HANGUL SYLLABLE DDWAG..HANGUL SYLLABLE DDWAH
        , ( '뙉', '뙣' ) -- Lo  [27] HANGUL SYLLABLE DDWAEG..HANGUL SYLLABLE DDWAEH
        , ( '뙥', '뙿' ) -- Lo  [27] HANGUL SYLLABLE DDOEG..HANGUL SYLLABLE DDOEH
        , ( '뚁', '뚛' ) -- Lo  [27] HANGUL SYLLABLE DDYOG..HANGUL SYLLABLE DDYOH
        , ( '뚝', '뚷' ) -- Lo  [27] HANGUL SYLLABLE DDUG..HANGUL SYLLABLE DDUH
        , ( '뚹', '뛓' ) -- Lo  [27] HANGUL SYLLABLE DDWEOG..HANGUL SYLLABLE DDWEOH
        , ( '뛕', '뛯' ) -- Lo  [27] HANGUL SYLLABLE DDWEG..HANGUL SYLLABLE DDWEH
        , ( '뛱', '뜋' ) -- Lo  [27] HANGUL SYLLABLE DDWIG..HANGUL SYLLABLE DDWIH
        , ( '뜍', '뜧' ) -- Lo  [27] HANGUL SYLLABLE DDYUG..HANGUL SYLLABLE DDYUH
        , ( '뜩', '띃' ) -- Lo  [27] HANGUL SYLLABLE DDEUG..HANGUL SYLLABLE DDEUH
        , ( '띅', '띟' ) -- Lo  [27] HANGUL SYLLABLE DDYIG..HANGUL SYLLABLE DDYIH
        , ( '띡', '띻' ) -- Lo  [27] HANGUL SYLLABLE DDIG..HANGUL SYLLABLE DDIH
        , ( '락', '랗' ) -- Lo  [27] HANGUL SYLLABLE RAG..HANGUL SYLLABLE RAH
        , ( '랙', '랳' ) -- Lo  [27] HANGUL SYLLABLE RAEG..HANGUL SYLLABLE RAEH
        , ( '략', '럏' ) -- Lo  [27] HANGUL SYLLABLE RYAG..HANGUL SYLLABLE RYAH
        , ( '럑', '럫' ) -- Lo  [27] HANGUL SYLLABLE RYAEG..HANGUL SYLLABLE RYAEH
        , ( '럭', '렇' ) -- Lo  [27] HANGUL SYLLABLE REOG..HANGUL SYLLABLE REOH
        , ( '렉', '렣' ) -- Lo  [27] HANGUL SYLLABLE REG..HANGUL SYLLABLE REH
        , ( '력', '렿' ) -- Lo  [27] HANGUL SYLLABLE RYEOG..HANGUL SYLLABLE RYEOH
        , ( '롁', '롛' ) -- Lo  [27] HANGUL SYLLABLE RYEG..HANGUL SYLLABLE RYEH
        , ( '록', '롷' ) -- Lo  [27] HANGUL SYLLABLE ROG..HANGUL SYLLABLE ROH
        , ( '롹', '뢓' ) -- Lo  [27] HANGUL SYLLABLE RWAG..HANGUL SYLLABLE RWAH
        , ( '뢕', '뢯' ) -- Lo  [27] HANGUL SYLLABLE RWAEG..HANGUL SYLLABLE RWAEH
        , ( '뢱', '룋' ) -- Lo  [27] HANGUL SYLLABLE ROEG..HANGUL SYLLABLE ROEH
        , ( '룍', '룧' ) -- Lo  [27] HANGUL SYLLABLE RYOG..HANGUL SYLLABLE RYOH
        , ( '룩', '뤃' ) -- Lo  [27] HANGUL SYLLABLE RUG..HANGUL SYLLABLE RUH
        , ( '뤅', '뤟' ) -- Lo  [27] HANGUL SYLLABLE RWEOG..HANGUL SYLLABLE RWEOH
        , ( '뤡', '뤻' ) -- Lo  [27] HANGUL SYLLABLE RWEG..HANGUL SYLLABLE RWEH
        , ( '뤽', '륗' ) -- Lo  [27] HANGUL SYLLABLE RWIG..HANGUL SYLLABLE RWIH
        , ( '륙', '륳' ) -- Lo  [27] HANGUL SYLLABLE RYUG..HANGUL SYLLABLE RYUH
        , ( '륵', '릏' ) -- Lo  [27] HANGUL SYLLABLE REUG..HANGUL SYLLABLE REUH
        , ( '릑', '릫' ) -- Lo  [27] HANGUL SYLLABLE RYIG..HANGUL SYLLABLE RYIH
        , ( '릭', '맇' ) -- Lo  [27] HANGUL SYLLABLE RIG..HANGUL SYLLABLE RIH
        , ( '막', '맣' ) -- Lo  [27] HANGUL SYLLABLE MAG..HANGUL SYLLABLE MAH
        , ( '맥', '맿' ) -- Lo  [27] HANGUL SYLLABLE MAEG..HANGUL SYLLABLE MAEH
        , ( '먁', '먛' ) -- Lo  [27] HANGUL SYLLABLE MYAG..HANGUL SYLLABLE MYAH
        , ( '먝', '먷' ) -- Lo  [27] HANGUL SYLLABLE MYAEG..HANGUL SYLLABLE MYAEH
        , ( '먹', '멓' ) -- Lo  [27] HANGUL SYLLABLE MEOG..HANGUL SYLLABLE MEOH
        , ( '멕', '멯' ) -- Lo  [27] HANGUL SYLLABLE MEG..HANGUL SYLLABLE MEH
        , ( '멱', '몋' ) -- Lo  [27] HANGUL SYLLABLE MYEOG..HANGUL SYLLABLE MYEOH
        , ( '몍', '몧' ) -- Lo  [27] HANGUL SYLLABLE MYEG..HANGUL SYLLABLE MYEH
        , ( '목', '뫃' ) -- Lo  [27] HANGUL SYLLABLE MOG..HANGUL SYLLABLE MOH
        , ( '뫅', '뫟' ) -- Lo  [27] HANGUL SYLLABLE MWAG..HANGUL SYLLABLE MWAH
        , ( '뫡', '뫻' ) -- Lo  [27] HANGUL SYLLABLE MWAEG..HANGUL SYLLABLE MWAEH
        , ( '뫽', '묗' ) -- Lo  [27] HANGUL SYLLABLE MOEG..HANGUL SYLLABLE MOEH
        , ( '묙', '묳' ) -- Lo  [27] HANGUL SYLLABLE MYOG..HANGUL SYLLABLE MYOH
        , ( '묵', '뭏' ) -- Lo  [27] HANGUL SYLLABLE MUG..HANGUL SYLLABLE MUH
        , ( '뭑', '뭫' ) -- Lo  [27] HANGUL SYLLABLE MWEOG..HANGUL SYLLABLE MWEOH
        , ( '뭭', '뮇' ) -- Lo  [27] HANGUL SYLLABLE MWEG..HANGUL SYLLABLE MWEH
        , ( '뮉', '뮣' ) -- Lo  [27] HANGUL SYLLABLE MWIG..HANGUL SYLLABLE MWIH
        , ( '뮥', '뮿' ) -- Lo  [27] HANGUL SYLLABLE MYUG..HANGUL SYLLABLE MYUH
        , ( '믁', '믛' ) -- Lo  [27] HANGUL SYLLABLE MEUG..HANGUL SYLLABLE MEUH
        , ( '믝', '믷' ) -- Lo  [27] HANGUL SYLLABLE MYIG..HANGUL SYLLABLE MYIH
        , ( '믹', '밓' ) -- Lo  [27] HANGUL SYLLABLE MIG..HANGUL SYLLABLE MIH
        , ( '박', '밯' ) -- Lo  [27] HANGUL SYLLABLE BAG..HANGUL SYLLABLE BAH
        , ( '백', '뱋' ) -- Lo  [27] HANGUL SYLLABLE BAEG..HANGUL SYLLABLE BAEH
        , ( '뱍', '뱧' ) -- Lo  [27] HANGUL SYLLABLE BYAG..HANGUL SYLLABLE BYAH
        , ( '뱩', '벃' ) -- Lo  [27] HANGUL SYLLABLE BYAEG..HANGUL SYLLABLE BYAEH
        , ( '벅', '벟' ) -- Lo  [27] HANGUL SYLLABLE BEOG..HANGUL SYLLABLE BEOH
        , ( '벡', '벻' ) -- Lo  [27] HANGUL SYLLABLE BEG..HANGUL SYLLABLE BEH
        , ( '벽', '볗' ) -- Lo  [27] HANGUL SYLLABLE BYEOG..HANGUL SYLLABLE BYEOH
        , ( '볙', '볳' ) -- Lo  [27] HANGUL SYLLABLE BYEG..HANGUL SYLLABLE BYEH
        , ( '복', '봏' ) -- Lo  [27] HANGUL SYLLABLE BOG..HANGUL SYLLABLE BOH
        , ( '봑', '봫' ) -- Lo  [27] HANGUL SYLLABLE BWAG..HANGUL SYLLABLE BWAH
        , ( '봭', '뵇' ) -- Lo  [27] HANGUL SYLLABLE BWAEG..HANGUL SYLLABLE BWAEH
        , ( '뵉', '뵣' ) -- Lo  [27] HANGUL SYLLABLE BOEG..HANGUL SYLLABLE BOEH
        , ( '뵥', '뵿' ) -- Lo  [27] HANGUL SYLLABLE BYOG..HANGUL SYLLABLE BYOH
        , ( '북', '붛' ) -- Lo  [27] HANGUL SYLLABLE BUG..HANGUL SYLLABLE BUH
        , ( '붝', '붷' ) -- Lo  [27] HANGUL SYLLABLE BWEOG..HANGUL SYLLABLE BWEOH
        , ( '붹', '뷓' ) -- Lo  [27] HANGUL SYLLABLE BWEG..HANGUL SYLLABLE BWEH
        , ( '뷕', '뷯' ) -- Lo  [27] HANGUL SYLLABLE BWIG..HANGUL SYLLABLE BWIH
        , ( '뷱', '븋' ) -- Lo  [27] HANGUL SYLLABLE BYUG..HANGUL SYLLABLE BYUH
        , ( '븍', '븧' ) -- Lo  [27] HANGUL SYLLABLE BEUG..HANGUL SYLLABLE BEUH
        , ( '븩', '빃' ) -- Lo  [27] HANGUL SYLLABLE BYIG..HANGUL SYLLABLE BYIH
        , ( '빅', '빟' ) -- Lo  [27] HANGUL SYLLABLE BIG..HANGUL SYLLABLE BIH
        , ( '빡', '빻' ) -- Lo  [27] HANGUL SYLLABLE BBAG..HANGUL SYLLABLE BBAH
        , ( '빽', '뺗' ) -- Lo  [27] HANGUL SYLLABLE BBAEG..HANGUL SYLLABLE BBAEH
        , ( '뺙', '뺳' ) -- Lo  [27] HANGUL SYLLABLE BBYAG..HANGUL SYLLABLE BBYAH
        , ( '뺵', '뻏' ) -- Lo  [27] HANGUL SYLLABLE BBYAEG..HANGUL SYLLABLE BBYAEH
        , ( '뻑', '뻫' ) -- Lo  [27] HANGUL SYLLABLE BBEOG..HANGUL SYLLABLE BBEOH
        , ( '뻭', '뼇' ) -- Lo  [27] HANGUL SYLLABLE BBEG..HANGUL SYLLABLE BBEH
        , ( '뼉', '뼣' ) -- Lo  [27] HANGUL SYLLABLE BBYEOG..HANGUL SYLLABLE BBYEOH
        , ( '뼥', '뼿' ) -- Lo  [27] HANGUL SYLLABLE BBYEG..HANGUL SYLLABLE BBYEH
        , ( '뽁', '뽛' ) -- Lo  [27] HANGUL SYLLABLE BBOG..HANGUL SYLLABLE BBOH
        , ( '뽝', '뽷' ) -- Lo  [27] HANGUL SYLLABLE BBWAG..HANGUL SYLLABLE BBWAH
        , ( '뽹', '뾓' ) -- Lo  [27] HANGUL SYLLABLE BBWAEG..HANGUL SYLLABLE BBWAEH
        , ( '뾕', '뾯' ) -- Lo  [27] HANGUL SYLLABLE BBOEG..HANGUL SYLLABLE BBOEH
        , ( '뾱', '뿋' ) -- Lo  [27] HANGUL SYLLABLE BBYOG..HANGUL SYLLABLE BBYOH
        , ( '뿍', '뿧' ) -- Lo  [27] HANGUL SYLLABLE BBUG..HANGUL SYLLABLE BBUH
        , ( '뿩', '쀃' ) -- Lo  [27] HANGUL SYLLABLE BBWEOG..HANGUL SYLLABLE BBWEOH
        , ( '쀅', '쀟' ) -- Lo  [27] HANGUL SYLLABLE BBWEG..HANGUL SYLLABLE BBWEH
        , ( '쀡', '쀻' ) -- Lo  [27] HANGUL SYLLABLE BBWIG..HANGUL SYLLABLE BBWIH
        , ( '쀽', '쁗' ) -- Lo  [27] HANGUL SYLLABLE BBYUG..HANGUL SYLLABLE BBYUH
        , ( '쁙', '쁳' ) -- Lo  [27] HANGUL SYLLABLE BBEUG..HANGUL SYLLABLE BBEUH
        , ( '쁵', '삏' ) -- Lo  [27] HANGUL SYLLABLE BBYIG..HANGUL SYLLABLE BBYIH
        , ( '삑', '삫' ) -- Lo  [27] HANGUL SYLLABLE BBIG..HANGUL SYLLABLE BBIH
        , ( '삭', '샇' ) -- Lo  [27] HANGUL SYLLABLE SAG..HANGUL SYLLABLE SAH
        , ( '색', '샣' ) -- Lo  [27] HANGUL SYLLABLE SAEG..HANGUL SYLLABLE SAEH
        , ( '샥', '샿' ) -- Lo  [27] HANGUL SYLLABLE SYAG..HANGUL SYLLABLE SYAH
        , ( '섁', '섛' ) -- Lo  [27] HANGUL SYLLABLE SYAEG..HANGUL SYLLABLE SYAEH
        , ( '석', '섷' ) -- Lo  [27] HANGUL SYLLABLE SEOG..HANGUL SYLLABLE SEOH
        , ( '섹', '셓' ) -- Lo  [27] HANGUL SYLLABLE SEG..HANGUL SYLLABLE SEH
        , ( '셕', '셯' ) -- Lo  [27] HANGUL SYLLABLE SYEOG..HANGUL SYLLABLE SYEOH
        , ( '셱', '솋' ) -- Lo  [27] HANGUL SYLLABLE SYEG..HANGUL SYLLABLE SYEH
        , ( '속', '솧' ) -- Lo  [27] HANGUL SYLLABLE SOG..HANGUL SYLLABLE SOH
        , ( '솩', '쇃' ) -- Lo  [27] HANGUL SYLLABLE SWAG..HANGUL SYLLABLE SWAH
        , ( '쇅', '쇟' ) -- Lo  [27] HANGUL SYLLABLE SWAEG..HANGUL SYLLABLE SWAEH
        , ( '쇡', '쇻' ) -- Lo  [27] HANGUL SYLLABLE SOEG..HANGUL SYLLABLE SOEH
        , ( '쇽', '숗' ) -- Lo  [27] HANGUL SYLLABLE SYOG..HANGUL SYLLABLE SYOH
        , ( '숙', '숳' ) -- Lo  [27] HANGUL SYLLABLE SUG..HANGUL SYLLABLE SUH
        , ( '숵', '쉏' ) -- Lo  [27] HANGUL SYLLABLE SWEOG..HANGUL SYLLABLE SWEOH
        , ( '쉑', '쉫' ) -- Lo  [27] HANGUL SYLLABLE SWEG..HANGUL SYLLABLE SWEH
        , ( '쉭', '슇' ) -- Lo  [27] HANGUL SYLLABLE SWIG..HANGUL SYLLABLE SWIH
        , ( '슉', '슣' ) -- Lo  [27] HANGUL SYLLABLE SYUG..HANGUL SYLLABLE SYUH
        , ( '슥', '슿' ) -- Lo  [27] HANGUL SYLLABLE SEUG..HANGUL SYLLABLE SEUH
        , ( '싁', '싛' ) -- Lo  [27] HANGUL SYLLABLE SYIG..HANGUL SYLLABLE SYIH
        , ( '식', '싷' ) -- Lo  [27] HANGUL SYLLABLE SIG..HANGUL SYLLABLE SIH
        , ( '싹', '쌓' ) -- Lo  [27] HANGUL SYLLABLE SSAG..HANGUL SYLLABLE SSAH
        , ( '쌕', '쌯' ) -- Lo  [27] HANGUL SYLLABLE SSAEG..HANGUL SYLLABLE SSAEH
        , ( '쌱', '썋' ) -- Lo  [27] HANGUL SYLLABLE SSYAG..HANGUL SYLLABLE SSYAH
        , ( '썍', '썧' ) -- Lo  [27] HANGUL SYLLABLE SSYAEG..HANGUL SYLLABLE SSYAEH
        , ( '썩', '쎃' ) -- Lo  [27] HANGUL SYLLABLE SSEOG..HANGUL SYLLABLE SSEOH
        , ( '쎅', '쎟' ) -- Lo  [27] HANGUL SYLLABLE SSEG..HANGUL SYLLABLE SSEH
        , ( '쎡', '쎻' ) -- Lo  [27] HANGUL SYLLABLE SSYEOG..HANGUL SYLLABLE SSYEOH
        , ( '쎽', '쏗' ) -- Lo  [27] HANGUL SYLLABLE SSYEG..HANGUL SYLLABLE SSYEH
        , ( '쏙', '쏳' ) -- Lo  [27] HANGUL SYLLABLE SSOG..HANGUL SYLLABLE SSOH
        , ( '쏵', '쐏' ) -- Lo  [27] HANGUL SYLLABLE SSWAG..HANGUL SYLLABLE SSWAH
        , ( '쐑', '쐫' ) -- Lo  [27] HANGUL SYLLABLE SSWAEG..HANGUL SYLLABLE SSWAEH
        , ( '쐭', '쑇' ) -- Lo  [27] HANGUL SYLLABLE SSOEG..HANGUL SYLLABLE SSOEH
        , ( '쑉', '쑣' ) -- Lo  [27] HANGUL SYLLABLE SSYOG..HANGUL SYLLABLE SSYOH
        , ( '쑥', '쑿' ) -- Lo  [27] HANGUL SYLLABLE SSUG..HANGUL SYLLABLE SSUH
        , ( '쒁', '쒛' ) -- Lo  [27] HANGUL SYLLABLE SSWEOG..HANGUL SYLLABLE SSWEOH
        , ( '쒝', '쒷' ) -- Lo  [27] HANGUL SYLLABLE SSWEG..HANGUL SYLLABLE SSWEH
        , ( '쒹', '쓓' ) -- Lo  [27] HANGUL SYLLABLE SSWIG..HANGUL SYLLABLE SSWIH
        , ( '쓕', '쓯' ) -- Lo  [27] HANGUL SYLLABLE SSYUG..HANGUL SYLLABLE SSYUH
        , ( '쓱', '씋' ) -- Lo  [27] HANGUL SYLLABLE SSEUG..HANGUL SYLLABLE SSEUH
        , ( '씍', '씧' ) -- Lo  [27] HANGUL SYLLABLE SSYIG..HANGUL SYLLABLE SSYIH
        , ( '씩', '앃' ) -- Lo  [27] HANGUL SYLLABLE SSIG..HANGUL SYLLABLE SSIH
        , ( '악', '앟' ) -- Lo  [27] HANGUL SYLLABLE AG..HANGUL SYLLABLE AH
        , ( '액', '앻' ) -- Lo  [27] HANGUL SYLLABLE AEG..HANGUL SYLLABLE AEH
        , ( '약', '얗' ) -- Lo  [27] HANGUL SYLLABLE YAG..HANGUL SYLLABLE YAH
        , ( '얙', '얳' ) -- Lo  [27] HANGUL SYLLABLE YAEG..HANGUL SYLLABLE YAEH
        , ( '억', '엏' ) -- Lo  [27] HANGUL SYLLABLE EOG..HANGUL SYLLABLE EOH
        , ( '엑', '엫' ) -- Lo  [27] HANGUL SYLLABLE EG..HANGUL SYLLABLE EH
        , ( '역', '옇' ) -- Lo  [27] HANGUL SYLLABLE YEOG..HANGUL SYLLABLE YEOH
        , ( '옉', '옣' ) -- Lo  [27] HANGUL SYLLABLE YEG..HANGUL SYLLABLE YEH
        , ( '옥', '옿' ) -- Lo  [27] HANGUL SYLLABLE OG..HANGUL SYLLABLE OH
        , ( '왁', '왛' ) -- Lo  [27] HANGUL SYLLABLE WAG..HANGUL SYLLABLE WAH
        , ( '왝', '왷' ) -- Lo  [27] HANGUL SYLLABLE WAEG..HANGUL SYLLABLE WAEH
        , ( '왹', '욓' ) -- Lo  [27] HANGUL SYLLABLE OEG..HANGUL SYLLABLE OEH
        , ( '욕', '욯' ) -- Lo  [27] HANGUL SYLLABLE YOG..HANGUL SYLLABLE YOH
        , ( '욱', '웋' ) -- Lo  [27] HANGUL SYLLABLE UG..HANGUL SYLLABLE UH
        , ( '웍', '웧' ) -- Lo  [27] HANGUL SYLLABLE WEOG..HANGUL SYLLABLE WEOH
        , ( '웩', '윃' ) -- Lo  [27] HANGUL SYLLABLE WEG..HANGUL SYLLABLE WEH
        , ( '윅', '윟' ) -- Lo  [27] HANGUL SYLLABLE WIG..HANGUL SYLLABLE WIH
        , ( '육', '윻' ) -- Lo  [27] HANGUL SYLLABLE YUG..HANGUL SYLLABLE YUH
        , ( '윽', '읗' ) -- Lo  [27] HANGUL SYLLABLE EUG..HANGUL SYLLABLE EUH
        , ( '읙', '읳' ) -- Lo  [27] HANGUL SYLLABLE YIG..HANGUL SYLLABLE YIH
        , ( '익', '잏' ) -- Lo  [27] HANGUL SYLLABLE IG..HANGUL SYLLABLE IH
        , ( '작', '잫' ) -- Lo  [27] HANGUL SYLLABLE JAG..HANGUL SYLLABLE JAH
        , ( '잭', '쟇' ) -- Lo  [27] HANGUL SYLLABLE JAEG..HANGUL SYLLABLE JAEH
        , ( '쟉', '쟣' ) -- Lo  [27] HANGUL SYLLABLE JYAG..HANGUL SYLLABLE JYAH
        , ( '쟥', '쟿' ) -- Lo  [27] HANGUL SYLLABLE JYAEG..HANGUL SYLLABLE JYAEH
        , ( '적', '젛' ) -- Lo  [27] HANGUL SYLLABLE JEOG..HANGUL SYLLABLE JEOH
        , ( '젝', '젷' ) -- Lo  [27] HANGUL SYLLABLE JEG..HANGUL SYLLABLE JEH
        , ( '젹', '졓' ) -- Lo  [27] HANGUL SYLLABLE JYEOG..HANGUL SYLLABLE JYEOH
        , ( '졕', '졯' ) -- Lo  [27] HANGUL SYLLABLE JYEG..HANGUL SYLLABLE JYEH
        , ( '족', '좋' ) -- Lo  [27] HANGUL SYLLABLE JOG..HANGUL SYLLABLE JOH
        , ( '좍', '좧' ) -- Lo  [27] HANGUL SYLLABLE JWAG..HANGUL SYLLABLE JWAH
        , ( '좩', '죃' ) -- Lo  [27] HANGUL SYLLABLE JWAEG..HANGUL SYLLABLE JWAEH
        , ( '죅', '죟' ) -- Lo  [27] HANGUL SYLLABLE JOEG..HANGUL SYLLABLE JOEH
        , ( '죡', '죻' ) -- Lo  [27] HANGUL SYLLABLE JYOG..HANGUL SYLLABLE JYOH
        , ( '죽', '줗' ) -- Lo  [27] HANGUL SYLLABLE JUG..HANGUL SYLLABLE JUH
        , ( '줙', '줳' ) -- Lo  [27] HANGUL SYLLABLE JWEOG..HANGUL SYLLABLE JWEOH
        , ( '줵', '쥏' ) -- Lo  [27] HANGUL SYLLABLE JWEG..HANGUL SYLLABLE JWEH
        , ( '쥑', '쥫' ) -- Lo  [27] HANGUL SYLLABLE JWIG..HANGUL SYLLABLE JWIH
        , ( '쥭', '즇' ) -- Lo  [27] HANGUL SYLLABLE JYUG..HANGUL SYLLABLE JYUH
        , ( '즉', '즣' ) -- Lo  [27] HANGUL SYLLABLE JEUG..HANGUL SYLLABLE JEUH
        , ( '즥', '즿' ) -- Lo  [27] HANGUL SYLLABLE JYIG..HANGUL SYLLABLE JYIH
        , ( '직', '짛' ) -- Lo  [27] HANGUL SYLLABLE JIG..HANGUL SYLLABLE JIH
        , ( '짝', '짷' ) -- Lo  [27] HANGUL SYLLABLE JJAG..HANGUL SYLLABLE JJAH
        , ( '짹', '쨓' ) -- Lo  [27] HANGUL SYLLABLE JJAEG..HANGUL SYLLABLE JJAEH
        , ( '쨕', '쨯' ) -- Lo  [27] HANGUL SYLLABLE JJYAG..HANGUL SYLLABLE JJYAH
        , ( '쨱', '쩋' ) -- Lo  [27] HANGUL SYLLABLE JJYAEG..HANGUL SYLLABLE JJYAEH
        , ( '쩍', '쩧' ) -- Lo  [27] HANGUL SYLLABLE JJEOG..HANGUL SYLLABLE JJEOH
        , ( '쩩', '쪃' ) -- Lo  [27] HANGUL SYLLABLE JJEG..HANGUL SYLLABLE JJEH
        , ( '쪅', '쪟' ) -- Lo  [27] HANGUL SYLLABLE JJYEOG..HANGUL SYLLABLE JJYEOH
        , ( '쪡', '쪻' ) -- Lo  [27] HANGUL SYLLABLE JJYEG..HANGUL SYLLABLE JJYEH
        , ( '쪽', '쫗' ) -- Lo  [27] HANGUL SYLLABLE JJOG..HANGUL SYLLABLE JJOH
        , ( '쫙', '쫳' ) -- Lo  [27] HANGUL SYLLABLE JJWAG..HANGUL SYLLABLE JJWAH
        , ( '쫵', '쬏' ) -- Lo  [27] HANGUL SYLLABLE JJWAEG..HANGUL SYLLABLE JJWAEH
        , ( '쬑', '쬫' ) -- Lo  [27] HANGUL SYLLABLE JJOEG..HANGUL SYLLABLE JJOEH
        , ( '쬭', '쭇' ) -- Lo  [27] HANGUL SYLLABLE JJYOG..HANGUL SYLLABLE JJYOH
        , ( '쭉', '쭣' ) -- Lo  [27] HANGUL SYLLABLE JJUG..HANGUL SYLLABLE JJUH
        , ( '쭥', '쭿' ) -- Lo  [27] HANGUL SYLLABLE JJWEOG..HANGUL SYLLABLE JJWEOH
        , ( '쮁', '쮛' ) -- Lo  [27] HANGUL SYLLABLE JJWEG..HANGUL SYLLABLE JJWEH
        , ( '쮝', '쮷' ) -- Lo  [27] HANGUL SYLLABLE JJWIG..HANGUL SYLLABLE JJWIH
        , ( '쮹', '쯓' ) -- Lo  [27] HANGUL SYLLABLE JJYUG..HANGUL SYLLABLE JJYUH
        , ( '쯕', '쯯' ) -- Lo  [27] HANGUL SYLLABLE JJEUG..HANGUL SYLLABLE JJEUH
        , ( '쯱', '찋' ) -- Lo  [27] HANGUL SYLLABLE JJYIG..HANGUL SYLLABLE JJYIH
        , ( '찍', '찧' ) -- Lo  [27] HANGUL SYLLABLE JJIG..HANGUL SYLLABLE JJIH
        , ( '착', '챃' ) -- Lo  [27] HANGUL SYLLABLE CAG..HANGUL SYLLABLE CAH
        , ( '책', '챟' ) -- Lo  [27] HANGUL SYLLABLE CAEG..HANGUL SYLLABLE CAEH
        , ( '챡', '챻' ) -- Lo  [27] HANGUL SYLLABLE CYAG..HANGUL SYLLABLE CYAH
        , ( '챽', '첗' ) -- Lo  [27] HANGUL SYLLABLE CYAEG..HANGUL SYLLABLE CYAEH
        , ( '척', '첳' ) -- Lo  [27] HANGUL SYLLABLE CEOG..HANGUL SYLLABLE CEOH
        , ( '첵', '쳏' ) -- Lo  [27] HANGUL SYLLABLE CEG..HANGUL SYLLABLE CEH
        , ( '쳑', '쳫' ) -- Lo  [27] HANGUL SYLLABLE CYEOG..HANGUL SYLLABLE CYEOH
        , ( '쳭', '촇' ) -- Lo  [27] HANGUL SYLLABLE CYEG..HANGUL SYLLABLE CYEH
        , ( '촉', '촣' ) -- Lo  [27] HANGUL SYLLABLE COG..HANGUL SYLLABLE COH
        , ( '촥', '촿' ) -- Lo  [27] HANGUL SYLLABLE CWAG..HANGUL SYLLABLE CWAH
        , ( '쵁', '쵛' ) -- Lo  [27] HANGUL SYLLABLE CWAEG..HANGUL SYLLABLE CWAEH
        , ( '쵝', '쵷' ) -- Lo  [27] HANGUL SYLLABLE COEG..HANGUL SYLLABLE COEH
        , ( '쵹', '춓' ) -- Lo  [27] HANGUL SYLLABLE CYOG..HANGUL SYLLABLE CYOH
        , ( '축', '춯' ) -- Lo  [27] HANGUL SYLLABLE CUG..HANGUL SYLLABLE CUH
        , ( '춱', '췋' ) -- Lo  [27] HANGUL SYLLABLE CWEOG..HANGUL SYLLABLE CWEOH
        , ( '췍', '췧' ) -- Lo  [27] HANGUL SYLLABLE CWEG..HANGUL SYLLABLE CWEH
        , ( '췩', '츃' ) -- Lo  [27] HANGUL SYLLABLE CWIG..HANGUL SYLLABLE CWIH
        , ( '츅', '츟' ) -- Lo  [27] HANGUL SYLLABLE CYUG..HANGUL SYLLABLE CYUH
        , ( '측', '츻' ) -- Lo  [27] HANGUL SYLLABLE CEUG..HANGUL SYLLABLE CEUH
        , ( '츽', '칗' ) -- Lo  [27] HANGUL SYLLABLE CYIG..HANGUL SYLLABLE CYIH
        , ( '칙', '칳' ) -- Lo  [27] HANGUL SYLLABLE CIG..HANGUL SYLLABLE CIH
        , ( '칵', '캏' ) -- Lo  [27] HANGUL SYLLABLE KAG..HANGUL SYLLABLE KAH
        , ( '캑', '캫' ) -- Lo  [27] HANGUL SYLLABLE KAEG..HANGUL SYLLABLE KAEH
        , ( '캭', '컇' ) -- Lo  [27] HANGUL SYLLABLE KYAG..HANGUL SYLLABLE KYAH
        , ( '컉', '컣' ) -- Lo  [27] HANGUL SYLLABLE KYAEG..HANGUL SYLLABLE KYAEH
        , ( '컥', '컿' ) -- Lo  [27] HANGUL SYLLABLE KEOG..HANGUL SYLLABLE KEOH
        , ( '켁', '켛' ) -- Lo  [27] HANGUL SYLLABLE KEG..HANGUL SYLLABLE KEH
        , ( '켝', '켷' ) -- Lo  [27] HANGUL SYLLABLE KYEOG..HANGUL SYLLABLE KYEOH
        , ( '켹', '콓' ) -- Lo  [27] HANGUL SYLLABLE KYEG..HANGUL SYLLABLE KYEH
        , ( '콕', '콯' ) -- Lo  [27] HANGUL SYLLABLE KOG..HANGUL SYLLABLE KOH
        , ( '콱', '쾋' ) -- Lo  [27] HANGUL SYLLABLE KWAG..HANGUL SYLLABLE KWAH
        , ( '쾍', '쾧' ) -- Lo  [27] HANGUL SYLLABLE KWAEG..HANGUL SYLLABLE KWAEH
        , ( '쾩', '쿃' ) -- Lo  [27] HANGUL SYLLABLE KOEG..HANGUL SYLLABLE KOEH
        , ( '쿅', '쿟' ) -- Lo  [27] HANGUL SYLLABLE KYOG..HANGUL SYLLABLE KYOH
        , ( '쿡', '쿻' ) -- Lo  [27] HANGUL SYLLABLE KUG..HANGUL SYLLABLE KUH
        , ( '쿽', '퀗' ) -- Lo  [27] HANGUL SYLLABLE KWEOG..HANGUL SYLLABLE KWEOH
        , ( '퀙', '퀳' ) -- Lo  [27] HANGUL SYLLABLE KWEG..HANGUL SYLLABLE KWEH
        , ( '퀵', '큏' ) -- Lo  [27] HANGUL SYLLABLE KWIG..HANGUL SYLLABLE KWIH
        , ( '큑', '큫' ) -- Lo  [27] HANGUL SYLLABLE KYUG..HANGUL SYLLABLE KYUH
        , ( '큭', '킇' ) -- Lo  [27] HANGUL SYLLABLE KEUG..HANGUL SYLLABLE KEUH
        , ( '킉', '킣' ) -- Lo  [27] HANGUL SYLLABLE KYIG..HANGUL SYLLABLE KYIH
        , ( '킥', '킿' ) -- Lo  [27] HANGUL SYLLABLE KIG..HANGUL SYLLABLE KIH
        , ( '탁', '탛' ) -- Lo  [27] HANGUL SYLLABLE TAG..HANGUL SYLLABLE TAH
        , ( '택', '탷' ) -- Lo  [27] HANGUL SYLLABLE TAEG..HANGUL SYLLABLE TAEH
        , ( '탹', '턓' ) -- Lo  [27] HANGUL SYLLABLE TYAG..HANGUL SYLLABLE TYAH
        , ( '턕', '턯' ) -- Lo  [27] HANGUL SYLLABLE TYAEG..HANGUL SYLLABLE TYAEH
        , ( '턱', '텋' ) -- Lo  [27] HANGUL SYLLABLE TEOG..HANGUL SYLLABLE TEOH
        , ( '텍', '텧' ) -- Lo  [27] HANGUL SYLLABLE TEG..HANGUL SYLLABLE TEH
        , ( '텩', '톃' ) -- Lo  [27] HANGUL SYLLABLE TYEOG..HANGUL SYLLABLE TYEOH
        , ( '톅', '톟' ) -- Lo  [27] HANGUL SYLLABLE TYEG..HANGUL SYLLABLE TYEH
        , ( '톡', '톻' ) -- Lo  [27] HANGUL SYLLABLE TOG..HANGUL SYLLABLE TOH
        , ( '톽', '퇗' ) -- Lo  [27] HANGUL SYLLABLE TWAG..HANGUL SYLLABLE TWAH
        , ( '퇙', '퇳' ) -- Lo  [27] HANGUL SYLLABLE TWAEG..HANGUL SYLLABLE TWAEH
        , ( '퇵', '툏' ) -- Lo  [27] HANGUL SYLLABLE TOEG..HANGUL SYLLABLE TOEH
        , ( '툑', '툫' ) -- Lo  [27] HANGUL SYLLABLE TYOG..HANGUL SYLLABLE TYOH
        , ( '툭', '퉇' ) -- Lo  [27] HANGUL SYLLABLE TUG..HANGUL SYLLABLE TUH
        , ( '퉉', '퉣' ) -- Lo  [27] HANGUL SYLLABLE TWEOG..HANGUL SYLLABLE TWEOH
        , ( '퉥', '퉿' ) -- Lo  [27] HANGUL SYLLABLE TWEG..HANGUL SYLLABLE TWEH
        , ( '튁', '튛' ) -- Lo  [27] HANGUL SYLLABLE TWIG..HANGUL SYLLABLE TWIH
        , ( '튝', '튷' ) -- Lo  [27] HANGUL SYLLABLE TYUG..HANGUL SYLLABLE TYUH
        , ( '특', '틓' ) -- Lo  [27] HANGUL SYLLABLE TEUG..HANGUL SYLLABLE TEUH
        , ( '틕', '틯' ) -- Lo  [27] HANGUL SYLLABLE TYIG..HANGUL SYLLABLE TYIH
        , ( '틱', '팋' ) -- Lo  [27] HANGUL SYLLABLE TIG..HANGUL SYLLABLE TIH
        , ( '팍', '팧' ) -- Lo  [27] HANGUL SYLLABLE PAG..HANGUL SYLLABLE PAH
        , ( '팩', '퍃' ) -- Lo  [27] HANGUL SYLLABLE PAEG..HANGUL SYLLABLE PAEH
        , ( '퍅', '퍟' ) -- Lo  [27] HANGUL SYLLABLE PYAG..HANGUL SYLLABLE PYAH
        , ( '퍡', '퍻' ) -- Lo  [27] HANGUL SYLLABLE PYAEG..HANGUL SYLLABLE PYAEH
        , ( '퍽', '펗' ) -- Lo  [27] HANGUL SYLLABLE PEOG..HANGUL SYLLABLE PEOH
        , ( '펙', '펳' ) -- Lo  [27] HANGUL SYLLABLE PEG..HANGUL SYLLABLE PEH
        , ( '펵', '폏' ) -- Lo  [27] HANGUL SYLLABLE PYEOG..HANGUL SYLLABLE PYEOH
        , ( '폑', '폫' ) -- Lo  [27] HANGUL SYLLABLE PYEG..HANGUL SYLLABLE PYEH
        , ( '폭', '퐇' ) -- Lo  [27] HANGUL SYLLABLE POG..HANGUL SYLLABLE POH
        , ( '퐉', '퐣' ) -- Lo  [27] HANGUL SYLLABLE PWAG..HANGUL SYLLABLE PWAH
        , ( '퐥', '퐿' ) -- Lo  [27] HANGUL SYLLABLE PWAEG..HANGUL SYLLABLE PWAEH
        , ( '푁', '푛' ) -- Lo  [27] HANGUL SYLLABLE POEG..HANGUL SYLLABLE POEH
        , ( '푝', '푷' ) -- Lo  [27] HANGUL SYLLABLE PYOG..HANGUL SYLLABLE PYOH
        , ( '푹', '풓' ) -- Lo  [27] HANGUL SYLLABLE PUG..HANGUL SYLLABLE PUH
        , ( '풕', '풯' ) -- Lo  [27] HANGUL SYLLABLE PWEOG..HANGUL SYLLABLE PWEOH
        , ( '풱', '퓋' ) -- Lo  [27] HANGUL SYLLABLE PWEG..HANGUL SYLLABLE PWEH
        , ( '퓍', '퓧' ) -- Lo  [27] HANGUL SYLLABLE PWIG..HANGUL SYLLABLE PWIH
        , ( '퓩', '픃' ) -- Lo  [27] HANGUL SYLLABLE PYUG..HANGUL SYLLABLE PYUH
        , ( '픅', '픟' ) -- Lo  [27] HANGUL SYLLABLE PEUG..HANGUL SYLLABLE PEUH
        , ( '픡', '픻' ) -- Lo  [27] HANGUL SYLLABLE PYIG..HANGUL SYLLABLE PYIH
        , ( '픽', '핗' ) -- Lo  [27] HANGUL SYLLABLE PIG..HANGUL SYLLABLE PIH
        , ( '학', '핳' ) -- Lo  [27] HANGUL SYLLABLE HAG..HANGUL SYLLABLE HAH
        , ( '핵', '햏' ) -- Lo  [27] HANGUL SYLLABLE HAEG..HANGUL SYLLABLE HAEH
        , ( '햑', '햫' ) -- Lo  [27] HANGUL SYLLABLE HYAG..HANGUL SYLLABLE HYAH
        , ( '햭', '헇' ) -- Lo  [27] HANGUL SYLLABLE HYAEG..HANGUL SYLLABLE HYAEH
        , ( '헉', '헣' ) -- Lo  [27] HANGUL SYLLABLE HEOG..HANGUL SYLLABLE HEOH
        , ( '헥', '헿' ) -- Lo  [27] HANGUL SYLLABLE HEG..HANGUL SYLLABLE HEH
        , ( '혁', '혛' ) -- Lo  [27] HANGUL SYLLABLE HYEOG..HANGUL SYLLABLE HYEOH
        , ( '혝', '혷' ) -- Lo  [27] HANGUL SYLLABLE HYEG..HANGUL SYLLABLE HYEH
        , ( '혹', '홓' ) -- Lo  [27] HANGUL SYLLABLE HOG..HANGUL SYLLABLE HOH
        , ( '확', '홯' ) -- Lo  [27] HANGUL SYLLABLE HWAG..HANGUL SYLLABLE HWAH
        , ( '홱', '횋' ) -- Lo  [27] HANGUL SYLLABLE HWAEG..HANGUL SYLLABLE HWAEH
        , ( '획', '횧' ) -- Lo  [27] HANGUL SYLLABLE HOEG..HANGUL SYLLABLE HOEH
        , ( '횩', '훃' ) -- Lo  [27] HANGUL SYLLABLE HYOG..HANGUL SYLLABLE HYOH
        , ( '훅', '훟' ) -- Lo  [27] HANGUL SYLLABLE HUG..HANGUL SYLLABLE HUH
        , ( '훡', '훻' ) -- Lo  [27] HANGUL SYLLABLE HWEOG..HANGUL SYLLABLE HWEOH
        , ( '훽', '휗' ) -- Lo  [27] HANGUL SYLLABLE HWEG..HANGUL SYLLABLE HWEH
        , ( '휙', '휳' ) -- Lo  [27] HANGUL SYLLABLE HWIG..HANGUL SYLLABLE HWIH
        , ( '휵', '흏' ) -- Lo  [27] HANGUL SYLLABLE HYUG..HANGUL SYLLABLE HYUH
        , ( '흑', '흫' ) -- Lo  [27] HANGUL SYLLABLE HEUG..HANGUL SYLLABLE HEUH
        , ( '흭', '힇' ) -- Lo  [27] HANGUL SYLLABLE HYIG..HANGUL SYLLABLE HYIH
        , ( '힉', '힣' ) -- Lo  [27] HANGUL SYLLABLE HIG..HANGUL SYLLABLE HIH
        ]
