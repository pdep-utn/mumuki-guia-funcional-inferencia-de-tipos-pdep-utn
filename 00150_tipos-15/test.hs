describe "tipos15" $ do
  it "la expresion f1 5 debería tipar" $ do
    (f1 5) `shouldBe` "¡5!"

  it "la expresion f1 \"alberto\" debería tipar" $ do
    (f1 "alberto") `shouldBe` (f1 "alberto")


