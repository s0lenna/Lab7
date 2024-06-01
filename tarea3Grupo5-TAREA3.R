#Se instalan las librerias requeridas
install.packages("ggplot2")
install.packages("maps")

#Se utilizan las librerias ggplot2 y maps
library(ggplot2)
library(maps)

#Se crea un dataframe del mapamundi con los datos de coordenadas, etc.
world_map <- map_data("world")

#Lista de nombres de los paises que se van a colorear
highlight_countries <- c("Colombia", "Mexico", "Peru")

#Añade una columna llamada highlight a world map que dice si el pais pertenece a la lista anterior
world_map$highlight <- ifelse(world_map$region %in% highlight_countries, "yes", "no")

#Se grafica el mapa con los datos de world_map, añadiendo los colores en base a highlight
ggplot(data = world_map, aes(x = long, y = lat, group = group, fill = highlight)) +
  geom_polygon(color = "white") +
  scale_fill_manual(values = c("lightblue", "red")) +
  theme_minimal() +
  ggtitle("Mapa mundial con Colombia, Peru y México resaltados")

#En caso de que el pais no pertenezca a la lista se pinta en lightblue, y rojo de lo contrario