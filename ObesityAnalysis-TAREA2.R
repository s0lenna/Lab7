#lectura del archivo y lo pasa a una tabla
datos<-read.table("Obesity.csv", header=TRUE, sep=",")

#muestra todos los datos
View(datos)


#Seleccionar 2 gráficos del link
hist(datos$Height, main = "Histograma de Altura", xlab = "Altura", ylab = "Frecuencia", col = c("blue", "lightblue", "purple", "grey"))

mean_height <- tapply(datos$Weight, datos$Gender, mean)

barplot(mean_height, 
        main = "Mean Height by Gender",
        xlab = "Gender",
        ylab = "Mean Height",
        col = c("blue", "pink"))
