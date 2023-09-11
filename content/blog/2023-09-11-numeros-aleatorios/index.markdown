---
title: "Números-aleatorios"
subtitle:
excerpt: "Breve guía para generar número aleatorios"
author: José Luis Texcalac Sangrador
date: '2023-09-11'
slug: []
categories: []
tags: []
---

Una de las funciones posibles en R es la generación de números aleatorios, los resultados pueden concatenarse y almacenarse en forma de vector.

### Números aleatorios enteros

El comando **`sample`** nos permite seleccionar/generar números aleatorios enteros.


```r
aleatorios <- sample(25:40, 25, replace = T)
```

El primer argumento es un vector de números válidos a partir de los cuáles se generarán los valores aleatorios, en este caso van de 25 a 40. El segundo argumento indica el número de valores aleatorios a generar, que para este ejemplo serán 25 números aleatorios. El tercer argumento `replace = T` indica que cada valor aleatorio puede tener duplicados. Finalmente el resultado es guardado en el objeto de nombre `aleatorios`.

Revisamos el resultado


```r
aleatorios
```

```
##  [1] 25 39 31 37 35 30 28 31 27 33 34 26 30 31 26 37 27 31 30 34 26 27 31 31 35
```

### Generación aleatoria de valores de tipo carácter

También es posible seleccionar y/o generar valores aleatorios de tipo carácter, para ello necesitamos en el primer argumento un vector con datos válidos a seleccionar, como segundo argumento el total de valores a generar y definir si se permiten duplicados. 


```r
aleat_txt <- 
  sample(c("pera", "manzana", "guayaba", "papaya", "mango"), 25, replace = TRUE)
  aleat_txt
```

```
##  [1] "pera"    "guayaba" "papaya"  "papaya"  "pera"    "pera"    "guayaba"
##  [8] "papaya"  "mango"   "mango"   "pera"    "guayaba" "pera"    "manzana"
## [15] "guayaba" "manzana" "papaya"  "pera"    "guayaba" "manzana" "papaya" 
## [22] "manzana" "pera"    "guayaba" "pera"
```

### Números aleatorios con decimales

El comando **`runif`** nos permite generar números aleatorios a partir de la distribución uniforme. Aquí un ejemplo para generar 25 números aleatorios entre 12.7 y 24.6


```r
aleat_unif <- runif(25, 12.7, 24.6)
aleat_unif
```

```
##  [1] 19.88473 14.57602 23.91468 15.61240 24.55162 19.31447 15.23501 19.22660
##  [9] 18.83619 21.19526 23.48687 18.89787 23.56229 17.83741 17.90319 22.17190
## [17] 13.22497 20.85603 23.22037 20.51991 18.14840 16.41716 16.50041 21.45614
## [25] 24.04422
```

Para redondear los resultados debemos agregar el comando `round` y especificar el redondeo a 1 dígito


```r
aleat_unif <- round(runif(25, 12.7, 24.6), 1)
aleat_unif
```

```
##  [1] 23.4 16.3 19.8 19.1 23.2 21.8 15.6 23.5 20.0 20.0 13.0 13.5 23.6 24.1 19.9
## [16] 19.0 23.5 14.4 18.6 18.3 23.7 19.8 20.1 20.0 14.0
```

El comando **`rnorm`** nos permite generar números aleatorios a partir de la distribución normal. Aquí un ejemplo para generar 25 números aleatorios con media 24.7 y desviación estándar de 4.3


```r
aleat_rnorm <- rnorm(25, 24.7, 4.3)
aleat_rnorm
```

```
##  [1] 21.80256 22.24501 26.49551 19.89251 31.94878 32.04026 17.49306 24.95379
##  [9] 32.67060 18.33507 31.48128 21.26657 24.00453 29.73118 30.79523 25.84564
## [17] 23.32663 16.26051 21.93413 25.53082 30.57254 16.90416 24.60332 29.04171
## [25] 22.15048
```

Para redondear podemos utilizar nuevamente el comando `round`


```r
aleat_rnorm <- round(rnorm(25, 24.7, 4.3), 1)
aleat_rnorm
```

```
##  [1] 20.9 18.7 27.2 20.6 27.3 26.2 23.2 25.7 27.1 30.1 31.7 20.7 23.3 20.0 23.4
## [16] 26.9 23.7 26.2 26.7 28.3 24.1 17.5 20.5 31.9 27.6
```

