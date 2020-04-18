Acordate que la función composición recibe dos funciones como parámetros y devuelve una nueva función.

```
(.) :: (b -> c) -> (a -> b) -> (a -> c)
```

Acordate también que las función de haskell están currificadas, por ende toda función de `N` parámetros a la que le paso 1 parámetro devuelve una nueva función que espera `N-1` parámetros hasta que sea aplicada totalmente. Entonces, también podemos ver al tipo de la función composición de esta forma:

```
(.) :: (b -> c) -> ((a -> b) -> (a -> c))
```
