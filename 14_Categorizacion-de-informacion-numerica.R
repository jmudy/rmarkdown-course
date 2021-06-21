# Indicamos nuestro directorio de trabajo
setwd("C:/Users/mudar/Documents/repos/RMarkdown-course")

# Leemos el archivo a analizar
corredores <- read.csv(file="data/Maraton+NY.csv", header=TRUE, sep=",", dec=".", row.names=1)

# Vemos como cargo la informacion
head(corredores)

# Definimos los limites que tendra cada categoria
valores <- c(0, 200, 300, Inf)

#Le decimos cuales seran los nombres
categorias <- c("Veloz", "Regular", "Lento")

# Agregamos una variable nueva en la que estaran indicadas las categorias asignadas
corredores$Velocidad <- cut(corredores$time, breaks=valores, labels=categorias)

# Vemos que tipo de variable es "Velocidad"
class(corredores$Velocidad)

# Guardamos la informacion en el ordenador
write.csv(corredores, "data/categorias+de+corredores.csv")

# Si queremos que R determine los valores numericos de cada categoria
corredores$Velocidad_R <- cut(corredores$time, breaks=3, labels=categorias)
