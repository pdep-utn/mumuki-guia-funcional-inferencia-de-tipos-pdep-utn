describe "tipos10" $ do
  it "la expresion f1 (:\"a\") (:\"b\") 'a' debería tipar" $ do
    f1 (:"a") (:"b") 'a' `shouldBe` False

  it "la expresion f1 (+1) (*2) 4 debería tipar" $ do
    f1 (+1) (*2) 4 `shouldBe` False

