Escribir el tipo de la siguiente función:

```Haskell
fCondicional f1 f2 f3 x
    | f1 x = f2 x
    | otherwise = f3 x
    where  transformarCond f1 f2 f3 l = map (fCondicional f1 f2 f3) l
```

**Nota**: no definir la función, sólo escribir su tipo en la forma

```Haskell
fCondicional :: ....
```
