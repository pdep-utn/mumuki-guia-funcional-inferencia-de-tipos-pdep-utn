describe "tipos16" $ do
  it "la expresion f1 (*2) (<0) [-2, -4, -6, 0, 2, 4, 7] debería tipar" $ do
    (f1 (*2) (<0) [-2, -4, -6, 0, 2, 4, 7]) `shouldBe` (-24)

