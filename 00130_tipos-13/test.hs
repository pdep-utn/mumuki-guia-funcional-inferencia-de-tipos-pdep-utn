describe "tipos13" $ do
  it "la expresion f1 2 (+1) debería tipar" $ do
    (f1 2 (+1)) `shouldBe` True

  it "la expresion f1 [2, 3] length debería tipar" $ do
    (f1 [2, 3] length) `shouldBe` True

