
# basketarg

Estadísticas de equipos y jugadores de la Liga Nacional de Básquet
Argentina.

Este paquete contiene dos datasets que resumen el rendimiento de equipos
y jugadores en partidos de la Liga Nacional de Básquet Argentina
correspondientes a las temporadas 2021-2022, 2022-2023 y 2023-2024. Los
datos fueron obtenidos mediante técnicas de web scraping a partir de un
sitio web de estadísticas deportivas y posteriormente procesados para su
análisis. Incluye variables que describen la temporada, la condición,
los resultados y distintas métricas de desempeño para cada equipo y
jugador en cada partido.

## 📦 Instalación

El paquete puede instalarse desde GitHub utilizando el siguiente código
en R:

``` r
install.packages("devtools")  # ejecutar solo si no está instalado
devtools::install_github("gallonico/basketarg")
```

## ▶️ Uso

Una vez instalado, el paquete se carga de la siguiente manera:

``` r
library(basketarg)
```

El paquete incluye los siguientes datasets:

- `equipos`: estadísticas a nivel equipo por partido.
- `jugadores`: estadísticas a nivel jugador por partido.

## 📊 Ejemplo de uso

A continuación se muestra cómo cargar los datasets y visualizar sus
primeras observaciones:

``` r
# Cargar los datasets
data(equipos)
data(jugadores)

# Visualizar las primeras filas
head(equipos)
#>        id              Equipo Min 2Con 2Int 3Con 3Int   FG% 1Con 1Int    1% Ro
#> 1 100df12       Independiente 200   15   37   12   31 0.397   17   21 0.810 17
#> 2  100df5  Ferro Carril Oeste 200   17   36   10   25 0.443   23   30 0.767  9
#> 3  100df6    Obras Sanitarias 200   19   37   10   24 0.475   18   25 0.720  5
#> 4  100df7 La Union de Formosa 200   25   44    5   18 0.484   17   17 1.000 10
#> 5  100df9      Comunicaciones 200   16   35    6   31 0.333   14   21 0.667 11
#> 6 101df12       Zarate Basket 200   14   30   12   29 0.441    9   10 0.900  5
#>   Rd Reb Ast Bp Br Tap Fa Pts Val  Temp Condicion                Rival PtsRec
#> 1 36  53  19  8  5   6 21  83 113 23/24     Local Penarol Mar de Plata     75
#> 2 27  36  21 14  7   2 25  87  95 21/22     Local    Hispano Americano     85
#> 3 30  35  11 13  8   1 22  86  89 21/22     Local Penarol Mar de Plata     80
#> 4 33  43  15 15  8   2 21  82 102 21/22     Local   Ferro Carril Oeste     73
#> 5 24  35  11  9  5   2 22  64  57 22/23     Local    Atletico Platense     86
#> 6 29  34  11  9  6   3 21  73  84 23/24     Local   Regatas Corrientes     66
#>   Resultado Dif             Estado
#> 1         G   8 Jugado - con datos
#> 2         G   2 Jugado - con datos
#> 3         G   6 Jugado - con datos
#> 4         G   9 Jugado - con datos
#> 5         P -22 Jugado - con datos
#> 6         G   7 Jugado - con datos
head(jugadores)
#>        id                    Jugador Min 2Con 2Int 3Con 3Int   FG% 1Con 1Int
#> 1 100df12           Salvador Giletto  28    4    8    2    4 0.500    0    0
#> 2 100df12 Cristian Jose Scaramuzzino  19    3    5    0    0 0.600    6    6
#> 3 100df12           Nicolas Marcucci  25    1    1    2    6 0.429    3    4
#> 4 100df12           Agustin Pautasso  33    1    1    2    6 0.429    3    4
#> 5 100df12            Joaquin Noblega  29    1    7    2    5 0.250    1    2
#> 6 100df12              Jorge Banegas  18    0    3    3    7 0.300    0    0
#>     1% Ro Rd Reb Ast Bp Br Tap Fa Pts Val        Equipo PtsEqui  Temp Condicion
#> 1   NA  1 12  13   3  1  1   0  5  14  24 Independiente      83 23/24     Local
#> 2 1.00  3  4   7   1  0  2   1  2  12  21 Independiente      83 23/24     Local
#> 3 0.75  2  2   4   1  1  1   0  3  11  11 Independiente      83 23/24     Local
#> 4 0.75  1  1   2   1  2  1   1  1  11   9 Independiente      83 23/24     Local
#> 5 0.50  1  5   6   7  1  0   1  2   9  12 Independiente      83 23/24     Local
#> 6   NA  3  2   5   3  0  0   0  2   9  10 Independiente      83 23/24     Local
#>                  Rival PtsRec Resultado Dif             Estado
#> 1 Penarol Mar de Plata     75         G   8 Jugado - con datos
#> 2 Penarol Mar de Plata     75         G   8 Jugado - con datos
#> 3 Penarol Mar de Plata     75         G   8 Jugado - con datos
#> 4 Penarol Mar de Plata     75         G   8 Jugado - con datos
#> 5 Penarol Mar de Plata     75         G   8 Jugado - con datos
#> 6 Penarol Mar de Plata     75         G   8 Jugado - con datos
```

## ℹ️ Información adicional

Para obtener una descripción detallada de las variables incluidas en
cada dataset, se puede consultar la documentación del paquete:

``` r
?equipos
?jugadores
```
