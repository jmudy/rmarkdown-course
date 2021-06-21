# Indicamos nuestro directorio de trabajo
setwd("C:/Users/mudar/Documents/repos/RMarkdown-course")

# Trabajaremos con las bases de datos del paquete "datasets"
require("datasets")

# Listado de bases de datos que contiene "datasets"
data(package="datasets")

# Escogiendo la base de datos
data(rivers)

# Para ver mas detalles acerca de la base de datos "rivers"
help(rivers)

# Vemos que contiene la base de datos
str(rivers)

# Obtenemos el histograma para ver como estan distribuidos los valorse
hist(rivers)

# Hacemos un grafico con caja y bigotes apra ver los outliers
boxplot(rivers, horizontal=TRUE)

# Obtenemos la lista de los valores que aparecen como outliers
boxplot.stats(rivers)

# Obtenemos los que no son outliers
rios_sin_out <- rivers[rivers < 1240]

# Volvemos a hacer el grafico de caja
boxplot(rios_sin_out, horizontal=TRUE)

# Volvemos a obtener los outliers
boxplot.stats(rios_sin_out)

# nos volvemos a quedar con los valores que no son outliers
rios_sin_out2 <- rivers[rivers < 1100]

boxplot(rios_sin_out2, horizontal=TRUE)
boxplot.stats(rios_sin_out2)

# Repetimos hasta que ya no queden outliers
rios_sin_out3 <- rivers[rivers < 1100]

boxplot(rios_sin_out3, horizontal=TRUE)
boxplot.stats(rios_sin_out3)

