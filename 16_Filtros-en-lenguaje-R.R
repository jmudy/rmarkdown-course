# Indicamos nuestro directorio de trabajo
setwd("C:/Users/mudar/Documents/repos/RMarkdown-course")

# Paquete dplyr, util en el filtrado de las bases de datos
library (dplyr) # Instalar desde consola con install.packages("dplyr")

# Leyendo el archivo csv
Corredores <- read.csv(file="data/Maraton+NY.csv", header=TRUE, sep=",", dec=".", row.names = 1)

# Para ver las primeras filas del archivoque acabamos de cargar
head(Corredores)

# Verificando si cargó bien los tipos de variables
str(Corredores)

# Obteniendo la media, mediana, minimo, maximo y cuartiles de cada variable
summary(Corredores)

# Filtrando la base de datos para obtener los mayores de 59 años
Tercera_edad <- filter(Corredores, age>59)
Tercera_edad

# Operadores lógicos existentes
#            < Menor que
#           <= Menor o igual que
#            > Mayor que
#           >= Mayor o igual que
#           == Igual a
#           != Diferente de

# Filtrando la base de datos para obtener solamente mujeres
Mujeres <- filter(Corredores, gender == "Female")
Mujeres

# Filtrando la base de datos para obtener solamente las mujeres mayores de 59 años
Mujeres_Tercera_Edad <- filter(Corredores, gender == "Female" & age>59)
Mujeres_Tercera_Edad

# Filtrando la columna home y guardandolo en el objeto "Latinos"
Latinos <- filter(Corredores, home %in% c("MEX", "BRA", "ARG", "PER"))
Latinos

names(Latinos) <- c("Lugar en que llego", "Sexo", "Edad", "Pais", "Tiempo")

# Lo guardamos en otro archivo csv para tener la información separada
write.csv(Latinos, "data/Latinos.csv")


