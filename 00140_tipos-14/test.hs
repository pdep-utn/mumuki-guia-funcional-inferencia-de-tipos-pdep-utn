describe "tipos14" $ do
  it "la expresion f1 2 3 succ debería tipar" $ do
    (f1 2 3 succ) `shouldBe` False

  it "la expresion f1 \"hola\" \"adios\" id debería tipar" $ do
    (f1 "hola" "adios" id) `shouldBe` True

  it "la expresion f1 \"hola\" \"adios\" length debería tipar" $ do
    (f1 "hola" "adios" length) `shouldBe` False

  it "la expresion f1 'a' 'b' id debería tipar" $ do
    (f1 'a' 'b' id) `shouldBe` False

