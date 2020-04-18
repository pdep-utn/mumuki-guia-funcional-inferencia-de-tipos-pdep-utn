describe "tipos9" $ do
  it "la expresion f1 1 debería tipar" $ do
    (f1 1 2) `shouldBe` 1

  it "la expresion f1 [] debería tipar" $ do
    (f1 [] 2) `shouldBe` []

