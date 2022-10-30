# Cargamos las librerías: 
library(tidyverse)
library(gganimate)
library(ggplot2)
library(readr)

# Elegimos el archivo CSV
file.choose()

# Copiamos la ruta de la consola y la guardamos en una variable 
ruta_csv <-  "C:\\Users\\anaas\\Documents\\Segundo cuatrimestre 2022 UTNFRSR\\R\\smn.csv"

# Importamos los datos a una nueva variable llamada smn
smn <- read_csv(ruta_csv)

# Cargando los datos
data(smn)

# Visualizamos los datos
head(smn)

# Generando tabla agrupada
table(smn$TMAX)

# Gráfica de barras básica
barplot(table(smn$TMAX))

# Editando gráfica de barras
barplot(table(smn$TMAX), 
        col = 'lawngreen',
        main = 'titulo',
        xlab = 'eje x',
        ylab = 'eje y')

# Vemos la database 
View(smn)

# GRÁFICO 1: 
# Con ggplot armamos un gráfico de barras con más información
ggplot(data = smn) + 
  geom_bar(mapping = aes(x = TMAX)) + 
  theme_minimal() +
  labs(title = 'Registro de temperaturas diarias 2022',
       subtitle = 'fuente: SMN (Argentina)',
       x = 'Temperaturas en C°',
       y = 'Frecuencia') +
  theme(plot.title = element_text(hjust = 0.5))+
  geom_bar(stat = "identity")

# transition_states(TMIN, transition_length = 10, state_length = 10)

# color 
# ggplot(mpg, aes(displ, hwy, fill = displ)) + 
  # geom_bar(stat = "identity") + scale_fill_continuous(type = "viridis")

  
