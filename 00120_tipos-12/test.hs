describe "tipos12" $ do
  it "la expresion f1 2 2 even debería tipar" $ do
    (f1 2 2 even) `shouldBe` 2

  it "la expresion f1 [] [2] debería tipar" $ do
    (f1 [] [2] null) `shouldBe` [2]

