### Ejercicio 2

numeric(100) # Inicializa un vector de 100 elementos en 0
numeric(10) # Inicializa un vector de 10 elementos en 0
rep(0,10) # Inicializa un vector con 10 veces el elemento 0
rep(10,10) # Inicializa un vector con 10 veces el elemento 10

seq(0,10) # Genera 11 valores, del 0 al 10
seq(0,10.5,by = 1) # Va del 0 al 10.5 de a 1
seq(0,20, length=11) # length-> Longitud del vector numérico. Si el número máximo es menor que la longitud, empieza a fraccionar

0:9.5 # Secuencia con salto de 1
-.5:10
0:10 - .5 # A cada elemento de la secuencia le resta 0.5
-1:9 + .5
seq(-.5, 9.5)

-4:11
4:-1
4.5:10
-4:-11.5 # Secuencia con salto de -1

(10:22)/10
10:22/10
10/2:22
(10/2):22

seq(1, 2.2, by = 0.1)
seq(by = 0.1, to = 2.2, from = 1)

rep(1:4,times=3); rep(1:4, each=3)
  


# Ejercicio 4

x = 0:10
f=x*(10-x)
f
f[5:7]
f[6:11] = f[6]
f
x[11:1]
x1 = (1:10)/(1:5); x1 # 1:5 / 1:5 y después 6:10 / 1:5
x1[8] = pi; x1[6:8]

length(0:5)
diff(0:5) # Muestra la diferencia entre el elemento y el siguiente
?diff


# Ejercicio 5

exp(1)^2; a1 = exp(2); a1

n = 0:13; a2 = sum(2^n/factorial(n));a2;a1 - a2


# Ejercicio 6

x4 = seq(-1, 1, by=.1); x5 = round(x4); x4; x5
unique(x5); x5==0; x5[x5==0]; sum(x4==x5)
sum(x5==0); length(x5); mean(x5==0) # 11/21
x5 = 0; x5


t = seq(0, 1, len=201); f = 6*(t-t^2)x
mx.f = max(f); mx.f; t[f == mx.f]
t
6*(0.5 - 0.5^2)

plot(t, f, type = 'l')
?plot
points(t[f==mx.f],mx.f, pch = 19, col = 'red')

?plot


## Ejercicio 9 
muestra = sample(0:1,10,replace=TRUE,c(0.5,0.5))
uno = sum(muestra==1)/length(muestra)
cero= sum(muestra==0)/length(muestra)

prop = c(uno,cero)
prop

x = c()

for (i in 1:1000){
  
  muestra = sample(0:1,i,replace=TRUE,c(0.5,0.5))
  prop = sum(muestra==1)/length(muestra)
  x <- append(x,prop) 
  
}


plot(1:1000,x, type='l')


## Ejercicio 9 
muestra = sample(0:5,10,replace=TRUE)
uno = sum(muestra==1)/length(muestra)
cero= sum(muestra==0)/length(muestra)

prop = c(uno,cero)
prop

x = c()

for (i in 1:1000){
  
  muestra = sample(0:5,i,replace=TRUE)
  prop = sum(muestra==1)/length(muestra)
  x <- append(x,prop) 
  
}


plot(1:1000,x, type='l')
