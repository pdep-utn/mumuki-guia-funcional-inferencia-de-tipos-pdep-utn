describe "tipos1" $ do
  it "la expresion f1 even 2 == True debería tipar" $ do
    (f1 even 2) `shouldBe` True

  it "la expresion f1 not True == True debería tipar" $ do
    (f1 not True) `shouldBe` False

