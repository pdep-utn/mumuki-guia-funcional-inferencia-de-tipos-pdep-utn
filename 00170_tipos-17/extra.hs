fCondicional f1 f2 f3 x
    | f1 x = f2 x
    | otherwise = f3 x
    where  transformarCond f1 f2 f3 l = map (fCondicional f1 f2 f3) l