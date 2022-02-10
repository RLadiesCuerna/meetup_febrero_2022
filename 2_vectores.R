# 2. Vectores

# Los vectores son la estructura de datos más sencilla en R


## 2.A Propiedades básicas de los vectores

# Los vectores se crean con la función c()
# Aquí creamos un vector con datos tipo character

dias_des<-c("sab","dom")

#  Las propiedades más importantes de un vector son su longitud

length(dias_des)

## Y su clase o tipo

class(dias_des)

#  Cuando creamos variables con un sólo valor R las considera vectores de longitud 1

x<-1
is.vector(x)
length(x)

#  Aquí creamos un vector numérico

num<-c(1,2,3)
class(num)

#  Y uno entero
ent<-c(1L,2L,3L)

#  o bien convertimos el vector num al tipo entero
ent<-as.integer(num)
class(ent)

#  Uno complejo
com<-c(1+0i, 2+0i, 3+0i)

#  o bien (conversion de num a tipo complejo)
com<-as.complex(num)
class(com)

#  Y cremos un vector lógico
logi<-c(TRUE,FALSE,TRUE)
class(logi)


## 2.B Manipulación de vectores

### 2.B.a Combinación de vectores
#    Agregando un valor a la vez

dias_lab<-c("lun","mar","mie")
dias_lab<-c(dias_lab,"jue")
dias_lab<-c(dias_lab,"vie")

#    Combinando vectores de longitud > 1

dias<-c(dias_lab, dias_des)

### 2.B.b Acceder a los datos de un vector

#    Mediante su posición
dias[1]

#    Varios posiciones a la vez
dias[c(1,3,5)]

#    Un rango de posiciones
dias[1:3]

#    Varios rangos
dias[c(1:3,5:7)]

#    Quitando posiciones
dias[-1]
dias[c(-1,-7)]

#    Modificar el dato de una posición específica

dias[1]<-"inicio"
dias[7]<-"fin"

#    Mediante valores lógicos
logi<-c(TRUE,FALSE,TRUE,FALSE,TRUE,FALSE,TRUE)
dias[log]


### 2.B.c Ordenar vectores

#    Caracteres en orden alfabético
sort(dias)

#    Vector numérico ordenado
num<-c(1,3,4.1,100,0.5)
sort(num)


### 2.C Crear vectores con datos de distintos tipos

#  Al crear vectores con datos combinados
#  R convertirá los datos a un sólo tipo

#  Si hay datos tipo caracter
x<-c(FALSE, 5L, 1.2, 1+0i, "lun")
class(x)
#  Si hay datos complejos (y no hay caracteres)
x<-c(FALSE, 5L, 1.2, 1+0i)
class(x)
#  Si no hay caracter ni complex pero sí numericos
x<-c(FALSE, 5L, 1.2)
class(x)
#  Si hay datos enteros lógicos
x<-c(FALSE, 5L, TRUE)
class(x)

#  Entonces la prioridad de los tipos es:
#  caracter > complejo > numerico > entero > logico



##########TEMAS ADICIONALES########################
#  Podemos crear vectores vacíos y agregar datos después
x<-c()
x<-c(x,c("azul","rojo"))

#  Podemos ordernar vectores de mayor a menor
sort(num, decreasing=TRUE)
#  O en orden alfabético reverso
sort(dias, decreasing=TRUE)
