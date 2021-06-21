
# Leemos el archivo a analizar
niveles <- read.csv(file = "data/Niveles+de+contaminacion.csv", na.strings = "", header = TRUE, sep = ",", dec = ".")

# Vamos a copiar el archivo en niveles2 para hacer algunos reemplazos
niveles2 <- niveles

# Reemplazando los valores perdidos de la columna PM2.5 con la media
niveles2$PM2.5_mean <- ifelse(is.na(niveles2$PM2.5),
                              mean(niveles2$PM2.5,na.rm = TRUE),
                              niveles2$PM2.5)

# Reemplazando los valores perdidos de la columna PM2.5 con la mediaNA
niveles2$PM2.5_median <- ifelse(is.na(niveles2$PM2.5),
                              median(niveles2$PM2.5,na.rm = TRUE),
                              niveles2$PM2.5)

# Reemplazo de todos los NAs del archivo niveles con el método de los K-vecinos
library(DMwR) # Instalar descargando de CRAN el .zip
niveles3 <- knnImputation(niveles)
