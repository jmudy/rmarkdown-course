# Indicamos nuestro directorio de trabajo
setwd("C:/Users/mudar/Documents/repos/RMarkdown-course")

# Leemos el archivo a analizar
Estudiantes <- read.csv(file="data/Ejemplo+Estudiantes.csv", header=TRUE, sep=",", dec=".", row.names=1)

# Cantidad de filas en Estudiantes
nrow(Estudiantes)

# Cantidad de columnas en Estudiantes
ncol(Estudiantes)

# Si queremos crear un objeto que contenga los nombres de las columnas
encabezado <- names(Estudiantes)

encabezado

# Conociendo la estructura del objeto encabezado
str(encabezado)

#Convirtiendo la lista de materias en dataframe
materias_df <- as.data.frame(encabezado)

# Conociendo la estructura del objeto materias_df
str(materias_df)

# Obtengo la columna que contiene las calificaciones de Matematiacs
Matematicas <- Estudiantes[ ,1]
Matematicas

# Obtener los valores de la columna matematicas sin indicar el numero de columna
Matematicas2 <- Estudiantes[ ,"Matematicas"]
Matematicas2

# O bien
Matematicas3 <- Estudiantes$Matematicas
Matematicas3

# Si quisiera saber la calificacion que obtuvo Ines en matematicas
Ines_mate <- Estudiantes[3,1]
Ines_mate

# Si quiero saber cuanto sacaron los ters primeros estudiantes en Deportes
Deportes <- Estudiantes[1:3, 5]
Deportes

# Nos interesa guardar todas las calificaciones de los cuatro primeros estudiantes
primeros <- Estudiantes[1:3, ]
primeros

# Si quisieramos todas las columnas excepto la primera
sin_Matematicas <- Estudiantes[ , -1]
sin_Matematicas
