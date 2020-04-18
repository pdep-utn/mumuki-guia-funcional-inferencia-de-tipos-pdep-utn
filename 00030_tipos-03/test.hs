describe "tipos3" $ do
  it "la expresion f1 succ 1 2 (+) == 5 debería tipar" $ do
    (f1 succ 1 2 (+) == 5) `shouldBe` True

  it "la expresion f1 not True False (&&) == False debería tipar" $ do
    (f1 not True False (&&) == False) `shouldBe` True

  it "la expresion f1 head [2, 3] [4] (*) == 8 debería tipar" $ do
    (f1 head [2, 3] [4] (*) == 8) `shouldBe` True

