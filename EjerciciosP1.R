#Ejercicio 1----
.Machine$double.eps 
.Machine$double.neg.eps 
.Machine$double.xmin 
.Machine$double.xmax 
.Machine$double.base 
.Machine$double.digits 
.Machine$integer.max
#Ejercicio 2------

a<-as.integer(1) #asigna un valor forzado a ser entero a la variable "a" 
b<-as.integer(2)
a*b
class(a*b) 

#Comparar el resultado de las siguientes operaciones
a <- as.double(1) 
b <- as.double(3) 
a/b
class(a/b)
a <- as.single(1) #asigna el valor "num 1" a la variable "a"
b <- as.single(3) #asigna el valor "num 2" a la variable "b"
a/b
class(a/b)

#Analizar los resultados de las siguientes sentencias

a <- as.integer(2) 
b <- 3.14159

is.integer(a)
is.integer(b)
is.numeric(a)
is.numeric(b)
is.double(a)
is.double(b)

#Interpretar el resultado de la siguiente operacion:
a <- as.integer(3)
b <- as.integer(3.14159) 
a*b

#Ejercicio 3----
#Determinar el resultado de las siguientes operaciones,
#dado a un número real y b un número entero:
rm(list = ls())
a <-0.85
b <-round(a) 
#El resultado deberia ser 1 ya que esta funcion redondea para arriba si 
#los decimales son mayores o iguales a 0.5
b <-ceiling(a)
#El resultado deberia ser 1, esta funcion redondea para arriba sin importar los
#deciamles
b <-floor(a)
#El resultado deberia ser 0, esta funcion redondea para abajo sin importar los
#decimales
b <-trunc(a)
#Esta funcion quita los decimales, entonces quedaria 0.

#Ejercicio 4----
#a) Armar un programa que escriba por pantalla la frase “Hola mundo”.
rm(list = ls())
print("Hola Mundo") #Imprime por pantalla "Hola Mundo"
#b) Armar un programa que pida ingresar un numero y
#que luego imprima por pantalla el número ingresado.
numero <-readline("Ingrese un numero")
print(paste("El numero ingresado fue:",numero),quote=F)
#Ejercicio 5----
#a) Escribir en lenguaje R las siguientes expresiones 
#y encontrar la solucion para los siguientes valores:

a=1; b=2; c=3; d=5; e=2; f=-4; g=1/3
a=1; b=2; c=3; d=-3;e=4; f=-4; g=4

i<-(a+b)/(c+d) + e^2
ii<-(a+b)/(c+(d/(e+f)))
iii<-(((a+1)^2)-(1/(c+d)^2))/(f+g)^4
iv<-((3*a^2)-2*a)/(7*b^3+4*b^2-2)
#b) Evaluar las siguientes expresiones escritas en lenguaje R,
#siendo a, b y c tres numeros reales:
a/b/c
a/(b/c) 
(a/b)/c
a + b * a -c 
(a+b)*(a-c) 
(a+b)*a-c
(-a)^b

#Ejercicio 6----

# Programa para calcular la inversa de un numero 
rm(list=ls())
a <- readline("Ingrese un numero ")
x<- as.numeric(a)
inversa_x <- (1/x) 
inversa_x

#b) Ver que pasa cuando se ingresan alguno de los siguientes valores. ¿Por que? 
# 0.0 ‘pepe’

#Editar el archivo, en la linea correspondiente al calculo de la inversa cambiar x por X. 
#¿Como reacciona R al intentar ejecutar el programa y por que?
a <- readline("Ingrese un numero ")
x<- as.numeric(a)
inversa_x <- (1/X) 
inversa_x
#Como R identifica de forma distinta las mayusculas de las minusculas, estamos
#introduciendo otra variable al poner "X" y como no tiene un valor esta es un NA

#d)Deshacer el cambio anterior y modificar el nombre de la sentencia 
#“readline” por el de “readlin”. Intentar ejecutar el script.

#Como no existe una funcion llamada readlin R no puede operar
#Ejercicio 7----
#a) Armar un programa tal que se ingrese por pantalla el valor de una latitud 
#y que el programa calcule y muestre por pantalla el valor del parametro de Coriolis.
rm(list = ls())

vel_ang_Tierra<- 7.27*10^-5 #vel_angular de la tierra en rad/s
latitud_G<-readline("Ingrese la latitud entre 0 (PN) y 180 (PS): ") #El usuario ingresa una latitud en grados
latitud_G<-as.numeric(latitud_G)
latitud_rad<-(pi/180)*latitud_G #Convierte la latitud a radianes
parametro_corilis <- 2*vel_ang_Tierra*sin(latitud_rad)
parametro_corilis

#b) Armar un programa que dada la temperatura en grados Fahrenheit
#la convierta a grados centigrados.
rm(list = ls())

Temp_F<-as.numeric(readline("Ingrese la temperatura: "))
Temp_C<-(Temp_F-32)* (5/9)

#c) 
rm(list = ls())
Rd<-287 #Constante de aire seco J/kg*K
temp<-as.numeric(readline("Ingrese la temperatura (ºC): ")) +273
densidad<- as.numeric(readline("Ingrese la densidad (Kg/m3):"))
presion<-(densidad*temp*Rd)/1000

print(paste("Con una temperatura de",temp,"K y una densidad de",densidad,"Kg/m3, la presion es de",presion,"hPa"))

#d) Escribir un programa que pida ingresar un valor para L 
#y que calcule e imprima el valor de T correspondiente.

rm(list = ls())
L<-as.numeric(readline("Ingrese la longitud del hilo: "))
periodo<-2*pi*sqrt(L/9.8)
print(paste("El periodo de un pendulo de acuerdo a una longuitud de",L,"m es de:",periodo,"seg"))
#Ejercicio 8----
#a)Diseñar y programar un algoritmo al que se le ingrese el año,
#el mes y el dia por separadoy que genere una variable caracter cuyo contenido
#sea la fecha en el siguiente formato YYYY.MM.DD
rm(list = ls())
anio<-readline("Ingrese el año:") #Pide el año
mes<- readline("Ingrese el mes:")
dia<- readline("Ingrese el dia:")
fecha<-paste(anio,mes,dia,sep = ".") #Junta los datos del año,mes y dia y se lo asigna a fecha
fecha

#b)
rm(list = ls())
fecha<-readline("Ingrese la fecha de hoy (YYYY-MM-DD): ")
anio<-substr(fecha,1,4)
mes<-substr(fecha,6,7)
dia<-substr(fecha,9,10)
print(paste("La fecha ingresada es:",dia,"del",mes,"de",anio))

#c)
rm(list = ls())

nombre<-readline("Ingrese su nombre:")
prim_letra<-substr(nombre,1,1)
ult_letra<-substr(nombre,nchar(nombre),nchar(nombre))

#Ejercicio 9----
rm(list = ls())

nombre<- readline("Ingrese un nombre: ") #Pido el nombre de la persona
edad<- as.numeric(readline("Ingrese la edad de la persona: "))#edad de la persona
anio_actual<-as.numeric(substr(Sys.Date(),1,4))#Obtengo el año actual segun la compu
nacimiento<- anio_actual-edad-1 #Obtengo el año de nacimiento
edad_2023<-2030-nacimiento #Calculo la edad en 2023

print(paste(nombre,"va a tener",edad_2023,"años en 2030"))
#Ejercicio 10----
rm(list = ls())

nombre<-readline("Ingrese su nombre: ")
apellido<-readline("Ingrese su apellido: ")
libreta<-readline("Ingrese su libreta (N/AA): ")
puesto<-substr(libreta,1,nchar(libreta)-3)
anio_libreta<-substr(libreta,nchar(libreta)-1,nchar(libreta))
mat_aprobadas<-as.numeric(readline("Cuantas materias tiene aprobadas? "))
mat_faltantes<-20-mat_aprobadas
print(paste("El alumno/a",nombre,apellido,"se inscribio como alumno de Exactas en el puesto",puesto,"en el año 20",anio_libreta,"y debe aprobar",mat_faltantes,"materias para obtener el titulo de grado"))