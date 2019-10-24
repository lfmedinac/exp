#### Practica taller Open Access Week 2019
#### Universidad Jorge Tadeo Lozano, 24 octubre de 2019 
#### Contacto: Diego G?mez Hoyos biodiego88@gmail.com

# En este ejercicio utilizamos la base de datos abierta de MinTIC disponible en: 
# https://www.datos.gov.co/Ambiente-y-Desarrollo-Sostenible/Deforestaci-n-Historica-de-2005-a-2017/s54d-xr8e/data

# Revisar esta base de datos derivada 
# https://www.datos.gov.co/Ambiente-y-Desarrollo-Sostenible/Deforestaci-n-por-a-o-2016-2017-PF-HIST/kkff-v4ha
# Dar clic en el bot?n "Acerca de" y revisar metadatos, licencia, etc.

# Establecer el directorio donde se encuentran los archivos 

# Ejemplo Diego. *** Adapte segun la ruta de su carpeta ***
setwd("/home/luscus9/Documentos/talleres/taller_OAW_2019")

# Llamamos una base de datos previa, en este caso "BaseDatos_error.csv" indique si el 
# separador es por espacio sep="" por coma sep=","

bd_error <- read.csv("BaseDatos_error.csv", sep = "", header = T)
head(bd_error)

#Transponemos los datos ya que est?n organizados en filas y deben estar en columnas
bd_error_transpose <- data.frame(t(bd_error[-1]))
head(bd_error_transpose)

#Indicamos que la primera columna de la base de datos es el nombre de las columnas, 
# en este caso los pueblos de jurisdicci?n de CORPOCHIVOR
colnames(bd_error_transpose) <- bd_error[, 1]
head(bd_error_transpose)

# Una forma de revisar los datos es mirar la relaci?n del promedio con la la desviaci?n 
# est?ndar. la desviaci?n est?ndar alta nos indica que los datos no se agrupan cerca del 
# promedio puede indicar datos at?picos o err?neos en la muestra.
# En este caso lo revisamos municipio por municipio

#Ejemplo SOMONDOCO

mean(bd_error_transpose$SOMONDOCO, na.rm = T)

sd(bd_error_transpose$SOMONDOCO, na.rm = T)

#Ejemplo BOYACA
mean(bd_error_transpose$BOYACA, na.rm = T)

sd(bd_error_transpose$BOYACA, na.rm = T)

# Tambien podemos visualizar los datos con graficos de caja y bigotes. Los datos at?picos
# pueden mostrar un error en los datos (no siempre son errores pero est? bien comprobar)

boxplot(bd_error_transpose)

# Conclusiones:



### LUEGO DE CORREGIR LOS DATOS

bd_correcta <- read.csv("BaseDatos_original.csv", sep = ",", header = T)
head(bd_correcta)

#Transponemos los datos ya que est?n organizados en filas y deben estar en columnas
bd_correcta_transpose <- data.frame(t(bd_correcta[-1]))
head(bd_correcta_transpose)

#Indicamos que la primera columna de la base de datos es el nombre de las columnas, 
# en este caso los pueblos de jurisdicci?n de CORPOCHIVOR
colnames(bd_correcta_transpose) <- bd_correcta[, 1]
head(bd_correcta_transpose)

# Una forma de revisar los datos es mirar la relaci?n del promedio con la la desviaci?n 
# est?ndar. la desviaci?n est?ndar alta nos indica que los datos no se agrupan cerca del 
# promedio puede indicar datos at?picos o err?neos en la muestra.
# En este caso lo revisamos municipio por municipio

#Ejemplo SOMONDOCO

mean(bd_correcta_transpose$SOMONDOCO, na.rm = T)

sd(bd_correcta_transpose$SOMONDOCO, na.rm = T)

#Ejemplo BOYACA
mean(bd_correcta_transpose$BOYACA, na.rm = T)

sd(bd_correcta_transpose$BOYACA, na.rm = T)

# Tambien podemos visualizar los datos con graficos de caja y bigotes. Los datos at?picos
# pueden mostrar un error en los datos (no siempre son errores pero est? bien comprobar)

boxplot(bd_correcta_transpose)

# archivo cambiado




        