Fácil ¿verdad o todavía no lo terminaste de entender bien?

Repasemos la composición matemática

```haskell
(fog)(x) = f(g(x))
```

Viendo esto, podemos deducir el tipo de la composión.

```haskell
(.) :: (b->c)->(a->b)->(a->c)
       \____/  \____/  \____/
         |       |       |
         f       g      fog
```



Ok, pero nosotros le estamos pasando a la composición la función composisión como primer parámetro y como segundo parámentro!

¡Genial! Para seguir te conviene leer (si es que ya no lo hiciste) la ayuda de esta solución. Dale que te espero, te juro que no me voy a ningún lado :stuck_out_tongue:

Si la función f y la función g son la composición reemplazemos...

```haskell
((l->m)->((k->l)->(k->m)))->((i->j)->((h->i)->(h->j)))->((i->j)->((k->l)->(k->m)))
 \____/  \______________/    \____/  \______________/    \____/  \______________/
   |            |              |            |              |            |
(  b    ->      c        )->(  a    ->      b        )->(  a   ->       c        )
\________________________/->\________________________/  \________________________/
            |                           |                            |
           (.)                         (.)                       (.)(.)(.)
```

Podemos notar que tenemos dos veces algo de tipo `b`, pero usamos letras distintas.

Si observamos mejor, podemos notar que el tipo `(h->i) -> (h->j)` es un tipo más particular que `(l->m)`...

Entonces reemplacémoslo: 

```haskell
  l = (h->i)
  m = (h->j)

(((h->i)->(h->j))->((k->(h->i))->(k->(h->j))))->((i->j)->((h->i)->(h->j)))->((i->j)->((k->(h->i))->(k->(h->j))))
  \____/  \____/        \____/       \____/               \____/  \____/                  \____/       \____/
    |       |             |            |                    |       |                       |            |
((  l   ->  m   )->((k -> l   )->(k -> m   )))->((i->j)->(  l   ->  m   ))->((i->j)->((k -> l   )->(k -> m   )))
 \______________/  \________________________/    \____/  \______________/    \____/  \________________________/
        |                      |                   |            |              |                 |
(       b        ->            c             )->(  a   ->       b        )->(  a   ->            c             )
\____________________________________________/->\________________________/  \__________________________________/
                      |                                     |                                |
                     (.)                                   (.)                           (.)(.)(.)
            
```

De esta manera es como llegamos a la conclusión que el tipo de `(.)(.)(.)` es:

```
(.)(.)(.) :: (i -> j) -> ((k -> (h -> i)) -> (k -> (h -> j)))
```

Y sacando paréntesis que realmente son innecesarios nos queda:

```
(.)(.)(.) :: (i -> j) -> (k -> h -> i) -> k -> h -> j  
```

Entender bien los tipos de datos y poder hacer estas deducciones es un buen ejercicio para saber si venimos entendiendo o no, además de divertido, obviamente :smile:
