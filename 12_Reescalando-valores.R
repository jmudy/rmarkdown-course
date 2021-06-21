# Indicamos nuestro directorio de trabajo
setwd("C:/Users/mudar/Documents/repos/RMarkdown-course")

Produccion <- read.csv(file="data/Produccion+agricola.csv", header=TRUE, sep=",", dec=".")

# Obtengo las columnas Edad y Produccion que son las que me interesa conocer
individuos <- Produccion[ ,c(2,4)]

# Guardamos solamente los tres primeros individuos para compararlos
tres_individuos <- individuos[1:3, ]

# Convertimos el dataframe individuos en una matrix para poder hacer el grafico de barras
tres_individuos <- as.matrix(tres_individuos)

# Graficamos las edades y la produccion
barplot(tres_individuos, beside=TRUE,
        main="Comparacion de Individuos")

# Utilizaremos el paquete "scales"
library(scales) # Instalar con install.packages("scales", dependencies=TRUE)

# Re-escalamos los valores para poder apreciar las diferencias en el grafico de barras
individuos$Edad_rescaled <- rescale(individuos$Edad)
individuos$Produccion_rescaled <- rescale(individuos$Produccion)

# Vemos el resumen de las variables
summary(individuos)

# Guardamos solamente los tres primeros individuos para compararlos
tres_individuos_resc <- individuos[1:3, c(3,4)]

tres_individuos_resc <- as.matrix(tres_individuos_resc)

# Graficamos de nuevo ya con los valores re-escalados
barplot(tres_individuos_resc, beside=TRUE,
        main="Comparacion de Individuos")

