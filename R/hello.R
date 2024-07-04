generar_grafica <- function(datos) {
  # Convertir los datos en un data frame para contar las frecuencias
  datos_df <- data.frame(table(datos))

  # Graficar la frecuencia de cada elemento en forma de barras
  barplot(datos_df$Freq, names.arg = datos_df$datos,
          main = "Gráfico de Barras",
          xlab = "Elementos", ylab = "Frecuencia",
          col = "skyblue", border = "black",
          ylim = c(0, max(datos_df$Freq) + 1))
}

# Ejemplo de uso:
# Suponiendo que ingresamos estos datos: "manzana, manzana, pera"
datos <- c("manzana", "manzana", "pera")
generar_grafica(datos)

