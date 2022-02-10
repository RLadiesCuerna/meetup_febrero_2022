# 1. Variables

# R es un ambiente para el análisis estadístico y también un lenguaje
# de programación. Así pues, con R se pueden escribir programas, es decir,
# secuencias de instrucciones para procesar información. Para ello se
# requiere que la información que se va a procesar y la que se va generando
# esté disponible en algún sitio. Este sitio son las variables, que se
# generan y guardan en la memoria de la computadora y que se definen por:

#	Un nombre o identificador
#	Un valor
#	Un tipo de datos


## 1.A Crear variables

# El operador "<-" es la mejor manera para crear variables en R
# Se trata de un operador de asignación, que asigna un nombre
# valor y tipo de datos a las variables.

x<-7
y<-3.5.5
a<-"azul"
b<-"rojo"

#   Podemos ver la lista de variables disponibles con ls()
ls()

#   Podemos asignar el valor de una variable a otra variable

c<-8
d<-c

#   También podemos asignar realizar varias asignaciones simultáneas

d<-c<-8

#   También existen los operadores de asignación "=" y "->", no obstante
#   "<-" es el más aceptado https://colinfay.me/r-assignment/

x=5
5->x

#   Es mejor no combinar los diferentes operadores de asignación.

#   R distingue mayúsculas y minúsculas.
#   Las siguientes dos variables son distintas entre si
  var<-5
  Var<-3



## 1.B Nombrar variables

#   Para nombrar las variables pueden usarse letras,
#   números y los símbolos "." y "_", con estos límites:


  # Esto si
   mivariable<-5
  # Pero con espacios no
   mi variable<-5
  # Esto si
   variable1<-5
  # Pero con números al inicio no
   1variable<-5
  # Con guion bajo si
   mi_variable<-5
  # Pero no al inicio
   _variable<-5
  # Con puntos si
   mi.variable<-5 # con puntos si
  # Pero un punto al inicio genera una variable oculta
    .variable<-5
    # Esta variable no se vé en la lista de variables de la sesión
    ls()
    # A menos de que usemos all.names=TRUE
    ls(all.names=TRUE)

  # Además no pueden usarse palabras reservadas. Por ejemplo, if, for, while…
    # Las palabras reservadas se pueden consultar con:
    help(reserved)
    # y también con
    ?reserved
    #esto no, pues "if" está reservada
    if<-5


## 1.C Eliminar variables

#   Podemos eliminar variables utilizando a rm()
#   Aquí eliminamos una variable

x<-7
ls()
rm(x)

#   A aquí todas las que hay en la sesión

ls()
rm(list=ls())



## 1.D Tipos de datos

#   En R existen varios tipos básicos de datos

### 1.D.a Datos tipo caracter ("character")

#    Se usan para guardar y desplegar texto

#    Ej. Escriba los datos del paciente

nombre<-"Tomás"
especie<-"Gato"
motivo<-"consulta de rutina"
fecha<-"10 feb, 2021"

paste(fecha, especie, nombre, motivo)


#    La función class nos dice de qué clase es una variable
#    en el ambiente de R y, por lo tanto, cuáles son sus
#    componentes y qué funciones se pueden hacer con ella

class(nombre)

#    Mientras que typeof nos dice cómo está almacenada
#    la variable en la memoria de la máquina

typeof(nombre)

#    Por ahora usaremos a class


### 1.D.b Datos numéricos (numeric)

#    Los números reales positivos o negativos, ya sean enteros o decimales
#    se guardan por default como numeric

x<-1.23
class(x)

pi
class(pi)

x<-1
class(x)

x<- -3.21
class(x)


### 1.D.c Datos enteros (integer)

#    Números sin parte decimal. Para crearlos
# (y evitar que se creen como "numeric"utilizamos una "L"


x<-1L
class(x)

### 1.D.d Datos complejos (complex)
#    Los números complejos tienen una parte real y una imaginaria.
#    Las raíces de números negativos, por ejemplo, sólo pueden manejarse
#    usando números complejos.

# Esta operación (raíz cuadrada) es imposible partiendo de un número real
x <- -4
sqrt(x)

# Pero es posible al usar un número imaginario
x <- -4 + 0i

class(x)
sqrt(x)

### 1.D.e Datos lógicos (logical)
# El tipo de datos lógico nos permite almacenar
# los valores TRUE y FALSE (verdadero y falso).

x<-TRUE
class(x)

# Como veremos más adelante TRUE y FALSE son útiles
# en las operaciones lógicas de nuestros programas.


## 1.E Conversión entre tipos de datos

#   A veces nuestros datos numéricos están almacenados como "character"
#   Y no pueden ocuparse en operaciones aritméticas
x<-"5"
    # Confirmamos que los datos son tipo caracter
is.character(x)
    # Tratamos de sumar
x+x

#   Para recuperar esta variable como número tenemos que convertir
#   a "numeric"

y<-as.numeric(x)

   # Y podemos verificar que los datos son numéricos
is.numeric(y)
y+y

#   También podemos convertir a entero
y<-as.integer(x)
    # Y verificamos que los datos son ahora "integer"
is.integer(y)

#   También se puede convertir números a caracter
y<-1234567
as.character(y)

#   Y se pueden convertir números al tipo complejo
y<- -1
y<-as.complex(y)
    # Y verificamos que ahora la clase es "complex"
is.complex(y)



##########TEMAS ADICIONALES########################
#La clase "numeric" también incluye a los NaN ("Not a Number")
#Y a Inf (infinito)

#Al realizar la raíz de un número real negativo obtenemos un NaN (No es un número)
x<- sqrt(-4)
is.numeric(x)

#Y al dividir entre cero obtenemos Inf
x<- 1/0
is.numeric(x)

#Los valores NA (Not available) indican valores faltantes en las estructuras de datos

# Un alumno no dió su nombre
# No conocemos la edad de Alberto
alumnos<-c("Ana","Alma","Alberto", NA)
edades<-c(24,45,NA,30)







