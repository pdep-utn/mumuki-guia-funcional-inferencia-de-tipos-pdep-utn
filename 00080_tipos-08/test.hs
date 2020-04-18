describe "tipos8" $ do
  it "la expresion f1 (+) (+1) 1 2 debería tipar" $ do
    (f1 (+) (+1) 1 2) `shouldBe` 4

  it "la expresion f1 (++)  (:[]) [2] 3 debería tipar" $ do
    (f1 (++)  (:[]) [2] 3) `shouldBe` [2,3]

