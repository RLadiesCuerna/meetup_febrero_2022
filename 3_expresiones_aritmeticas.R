# 3. Expresiones aritméticas


## 3.A R como calculadora

#   En R las expresiones aritméticas se escriben utilizando
#   los siguientes operadores:

#   + 	Suma
5 + 3

#   - 	Resta
5 - 3

#   * 	Multiplicación
5 * 3

#   / 	División
5 / 2

#   ^ 	Potencia
2 ^ 3

#   %/%   División entera (devuelve solo parte entera)
5 %/% 2

#   %%    Modulo: residuo de la división
5 %% 2


#   Las expresiones aritméticas pueden aplicarse
#   a variables numéricas y sus resultados pueden
#   almacenarse en nuevas variables

x<-5
y<-3

z <- x * y

#   Ej. Hipotenusa de un triángulo con catetos x y y

#    |\
#  5 | \ h
#    |__\
#      3

# h2 = x^2 + y^2

h <- ((x^2) + (y^2)) ^ (1/2)
# o bien
h <- sqrt((x^2) + (y^2))


#   Los logaritmos se calculan con la función log

#   Logaritmo natural de 100
log(100)

#   Logaritmo base 10 de 100
log(100,10)

#   La función abs sirve para obtener
#   el valor absoluto de un número

abs(-6.32)

#   También están disponibles el número pi

pi

#   Ej. Area de un círculo con radio x

A=pi*(x^2)

#   Y la función exponencial
exp(1) # Número e
exp(3) # e ^ 3

#   Una población de bacterias crece en forma exponencial
#   con una tasa de crecimiento continuo de 0.02
#   ¿Si comenzamos con 100 bacterias cuantas tendremos a 240 min?
P<-100*exp(0.02*240)



## 3.B R operaciones con vectores numéricos

##  Vamos a crear vectores de ejemplo usando funciones de R

##  Función seq
uno_a_diez<-seq(10)

## Función rep
dos<-rep(2,10)

## Aquí cada elemento de seq esta siendo sumado
## multiplicado o dividido por 2
uno_a_diez + 2
uno_a_diez * 2

## uuno_a_diez y dos son vectores de la misma longitud
## Aquí cada dato de seq se suma o multiplica con
## el número que está en la misma posición en rep

uno_a_diez * dos
uno_a_diez + dos

## Qué pasa si nuestros vectores son de distinta longitud
## En ese caso los valores del vector corto se van a reciclar
## Hasta cubrir la longitud del vector largo

# Vector corto
corto<-seq(3)

# Vector largo
largo<-rep(c(2,3), each=6)

#El vector largo como base y el corto como exponente
largo^corto

#El vector largo como base y el corto como exponente
corto^largo

#Qué pasa si el tamaño del vector largo no es múltiplo
#Del tamaño del vector corto

largo<-rep(2,10)

# El vector corto mide 3 y el largo 10
largo/corto

# Otros ejemplos

# Tamaño de una población bacteriana cada 20 minutos
# Comenzando con 100 bacterias y con una tasa de
# crecimiento de 0.02

t<-seq(0,240, by=20)
P<-100*exp(0.02*t)

# Tamaño de la población a los 240 min empezando con
# entre 10 y 100 bacterias

P0<-seq(10,100, by=10)
P<-P0*exp(0.02*t)


## 3.C Funciones matemáticas actuando sobre vectores

##  Distintas funciones de R obtienen resultados para
##  un vector completo

x<-seq(100)

# Promedio de los valores de x
mean(x)
# Desviación estándar de los valores de x
sd(x)
# Rango
range(x)
# Suma de todos los valores
sum(x)
# Producto de todos los valores
prod(x)

