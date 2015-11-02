import Color exposing (..)
import Graphics.Collage exposing (..)
import Graphics.Element exposing (..)
import Time exposing (..)

main : Signal Element
       
main = Signal.map clock signal


signal = Signal.map (\y -> toFloat ((round y  % 60000))) (every (5 * millisecond))
 

clock : Float -> Element
clock t =
  collage 1300 400
      (form t)


form time =
  let
    angleRad = (-1 * (time) * (0.001139))
  in
    [  ngon 4 100
       |> filled red
       |> rotate angleRad
       |> move (-500 + (time * 0.09), 0)
    ]


-- import Color exposing (..)
-- import Graphics.Collage exposing (..)
-- import Graphics.Element exposing (..)
-- import Time exposing (..)

-- main : Signal Element
       
-- main = Signal.map clock signal


-- signal = Signal.map (\y -> toFloat ((round y  % 60000))) (every (5 * millisecond))
 

-- clock : Float -> Element
-- clock t =
--   collage 1300 400
--       (form t)


-- form time =
--   let
--     angleRad = (-1 * (time) * (0.001139))
--   in
--     [  ngon 4 100
--        |> filled red
--        |> rotate angleRad
--        |> move (-500 + (time * 0.090), 0)
--     ]
