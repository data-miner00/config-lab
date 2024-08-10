import Dhall (Natural)


main :: IO ()
main = do
    f :: (Natural -> [Natural]) <- Dhall.input Dhall.auto "λ(x : Natural) → [ x, x ]"

    print (f 2)
