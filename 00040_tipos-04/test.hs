describe "tipos4" $ do
  it "la expresion (f1 not not not) True debería tipar" $ do
    ((f1 not not not) True) `shouldBe` False

  it "la expresion f1 pred succ head debería tipar" $ do
    ((f1 pred succ head) [1..5]) `shouldBe` 1

