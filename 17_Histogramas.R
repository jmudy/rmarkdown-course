# Indicamos nuestro directorio de trabajo
setwd("C:/Users/mudar/Documents/repos/RMarkdown-course")

# Cargamos la informacion correspondiente a los latinos
Latinos <- read.csv(file="data/Latinos.csv", header=TRUE, sep=",", dec=".", row.names = 1)
Latinos

#----------------------------------------
# Histograma con graficos basicos de R

# Creando un histograma con los tiempos de los corredores latinos
hist(Latinos$Tiempo)

# Cambiamos la cantidad de divisiones del histograma
hist(Latinos$Tiempo, breaks=10)

# Pintando el histograma de color azul
hist(Latinos$Tiempo, breaks=10, col='blue')

# Cambiando las etiquetas de los ejes x,y, y el titulo
hist(Latinos$Tiempo, breaks=10, col=rainbow(12),
     xlab="Tiempo", ylab="Frecuencias", main="Histograma de los tiempos")


#----------------------------------------
# Histograma con ggplot2
library(ggplot2)

ggplot(Latinos, aes(x = Tiempo)) +
  geom_histogram(bins = 10, fill = rainbow(10), col="black") +
  labs(title = "Tiempo Registrado", x="Tiempo", y="Frecuencias") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5))    # Con esta linea centramos el titulo
