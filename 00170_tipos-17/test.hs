describe "tipos17" $ do
  it "la expresion fCondicional null head debería tipar" $ do
    (fCondicional even (+1) id 3) `shouldBe` 3

  it "la expresion fCondicional even succ succ 1 debería tipar" $ do
    (fCondicional even succ succ 1) `shouldBe` 2

