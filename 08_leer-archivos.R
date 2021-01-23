Estudiantes <- read.csv(file = "./data/Ejemplo+Estudiantes.csv", header = TRUE, sep = ",", dec = ".", row.names = 1)

names(Estudiantes)

str(Estudiantes)

write.csv(Estudiantes,"./data/guardado-estudiantes.csv")
