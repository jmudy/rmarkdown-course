
# Leemos el archivo a analizar
niveles <- read.csv(file = "data/Niveles+de+contaminacion.csv", na.strings = "", header = TRUE, sep = ",", dec = ".")

# Si queremos quitar solamente la fila 33
niveles <- niveles[-(33), ]

# Revisamos que los tipos de variables sean correctos
str(niveles)

# Verificando que patrones siguen nuestros datos
library(mice) # Instalar con install.packages("mice", dependencies = TRUE)

md.pattern(niveles)

# Para saber si una columna contiene NA's
is.na(niveles$NOX)

# Detectando las filas que contienen NA's
complete.cases(niveles)

# Para quitar las filas que contienen datos faltantes
niveles_sin_NAs <- na.omit(niveles)

# O bien
niveles_sin_NAs_complete <- niveles[complete.cases(niveles), ]

# Para quedarnos con las filas que si tienen información en una columna concreta
niveles_sin_NAs_NOX <- niveles[!is.na(niveles$NOX), ]

# Si decidimos quitar todas las columnas que tienen muchos valores perdidos sin tocar las columnas de NOX y CN
niveles_sin_NOX_ni_CN <- niveles[ ,-c(6,9)]

# Reemplazando ceros por NA's
niveles$Numero_de_empresas[niveles$Numero_de_empresas == 0] <- NA

# Quitando los valores duplicados
sin_duplicados <- unique(niveles)

# Detección de valores duplicados
duplicated(niveles)

# Calculando la media cuando se tienen NA's
mean(niveles$NOX, na.rm = TRUE)

# Calculando la desviación estándar cuando se tienen NA's
sd(niveles$NOX, na.rm = TRUE)
