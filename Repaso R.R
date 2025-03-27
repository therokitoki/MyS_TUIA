################################################################################
################################ REPASO DE R ###################################
################################################################################

# ctrl + L -> borra pantalla

### Vectores
objeto1<- c(1,2,3)
objeto2<- c("hola","mundo")
objeto3 <- c("1","2","3")

### Tipo de dato
objeto4 <- as.numeric(objeto3)
class(objeto3)<-"numeric"
objeto5<-c(T,FALSE)
objeto6<-c(1,"jota") # Transforma el 1 en string
class(objeto6) <- "numeric" #Transforma el "jota" en NA

### Listas
lista1<-list(1,2,3)
lista2<- list("hola","mundo")
lista3<- c(lista1,lista2)
objeto7 <-(objeto+2)*3 # Suma y multiplica a cada elemento de "objeto"

### Cadena de repeticiones
rep <- c(rep(1,6),rep(2,6)) #Vector de 12 elementos
rep2 <-list(rep(1,6),rep(2,6)) #Lista de 2 elementos (2 vectores de 6 elementos)

### Secuencias de números
seq <- seq(1,9,2) #como el range
seq_reves <- seq(100,1,-10) # 100, 90, 80, 70
seq_falopa <- rep(seq(1,10,2),4) #num [1:20] 1 3 5 7 9 1 3 5 7 9 ...

### Sample
?sample # Sample genera vectores de una determinada longitud con posibles valores
# sample(x,y,b) b muestras del x al y INCLUIDOS
muestra <- sample(1:100,8) # Replace TRUE haría que se puedan repetir los números

### ¿Cómo repetir un sample?

#Repite tres veces el mismo sample
rep(list(sample(1:100,8)),3) 
rep(sample(1:100,8),3)

# Genera 3 samples distintos
list(sample(1:100,8),sample(1:100,8),sample(1:100,8))

# Con "replicate" genera 3 samples distintos
# ?replicate
matriz <-replicate(3,sample(1:100,8))
class(matriz)
matriz

### Semillas

set.seed(1)
sample(1:10,2)
set.seed(1);sample(1:10,2) # Se pueden concatenar lineas con ;
# Fitlrado de vectores

muestra > 30 # Devuelve vector booleano con los resultados para cada elemento
muestra[muestra > 30]
