### Ejercicio 1 ###

# Tomando como punto de partida el ejemplo muestreo de chips de computadoras visto en
# clase este ejercicio propone un poco de práctica básica en el uso de R.

# 1. Comenzar ejecutando set.seed(1), luego la funci´on sample(1:100, 5) cinco veces y
# observar el n´umero de chips en buen estado en cada muestra

set.seed(1) #Defino la semilla, hay que hacerlo antes de cada aleatoriedad porque sino no funca
sample(1:100,5)
set.seed(1);sample(1:100,5)

sample(1:100,5)

# 2. Comenzar ejecutando set.seed(1) y luego sum(sample(1:100, 5) <= 90) cinco veces.
# Observar y comentar los resultados obtenidos.
set.seed(1)
muestra
muestra <- sample(1:100,5)
muestra <= 90
sum(muestra <= 90)

# 3. ¿Cu´ales de las siguientes cuatro muestras no podrían haber sido generadas utilizando la
# sentencia sample(1:90, 5)? ¿Por qué no?
# [1] 2 62 84 68 60
# [1] 46 39 84 16 39 # No tengo replace = TRUE
# [1] 43 20 79 32 84
# [1] 68 2 98 20 50 # El 98 se pasa del rango de validación

(chips = rep(c("bien", "fallados"), times = c(90, 10)))
set.seed(3)
(muestra = sample(chips, 5))
muestra == "bien"
sum(muestra == "bien")


## Resolución de la teoría
choose(100, 5) # n´umero de muestras posibles
choose(90, 5) # n° muestras con 5 chips en buen estado
choose(90, 5) / choose(100, 5) # P{X = 5}
choose(90, 4) * choose(10, 1) / choose(100, 5) # P{X = 4}
choose(90, 4:5) * choose(10, 1:0) / choose(100, 5) # P{X=4}, P{X=5}
sum(choose(90, 4:5) * choose(10, 1:0) / choose(100, 5)) # P{X>=4}

x = 0:5 # recorrido de X
px = choose(90, x) * choose(10, 5-x) / choose(100, 5); px # P{X=x}
round(px, 3) # redondeo a tres cifras
cbind(x, "P{X=x}" = round(px, 3)) # formato tabla
# gr´afico de P{X = x}
plot(x, px, type = "h", lwd = 5, ylim = c(0, 1),
     main = "Gráfico de P{X=x}"); abline(h = 0)
# reconociendo la distribuci´on Hipergeom´etrica y utilizando la funci´on "dhyper()"
dhyper(0:5, 90, 10, 5)
cbind(x, "P{X=x}" = round(px, 5), # comparaci´on
      "dhyper" = round(dhyper(0:5, 90, 10, 5), 5))
sum(x * px) # valor esperado de X

