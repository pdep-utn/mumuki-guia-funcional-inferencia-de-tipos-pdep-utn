describe "tipos2" $ do
  it "la expresion f1 even 2 3 == True debería tipar" $ do
    (f1 even 2 3) `shouldBe` True

  it "la expresion f1 null [] [4] == True debería tipar" $ do
    (f1 null [] [4]) `shouldBe` True

