# Indicamos nuestro directorio de trabajo
setwd("C:/Users/mudar/Documents/repos/RMarkdown-course")

# Leemos el archivo a analizar
corredores <- read.csv(file="data/categorias+de+corredores.csv", header=TRUE, sep=",", dec=".", row.names=1)

# Vemos como cargo la informacion
head(corredores)

class(corredores$Velocidad)

velocidades <- summary(corredores$Velocidad)
velocidades

barplot(velocidades)

