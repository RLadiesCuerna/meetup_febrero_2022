# 4. Expresiones lógicas

# Se trata del tipo de expresiones que tienen como resultado
# un valor verdadero o falso. Estas expresiones se obtienen
# al usar operadores relacionales u operadores lógicos.

# 4.A Operadores relacionales

# Sirven para comparar los valores de dos variables

#  < 	Menor que
3 < 5

#  > 	Mayor que
3 > 5

#  <= 	Menor o igual que
3 <= 5
5 <= 5

#  >= 	Mayor o igual que
3 >= 5
5 >=5

#  == 	Exactamente igual que

3 == 5
5 == 5

#  != 	No es igual que

3 != 5

#  Estos operadores también pueden aplicarse a caracteres

"azul" < "blanco" #Se evaluarán las palabras por orden alfabético


# 4.B Operadores lógicos

# Sirven para evaluar o conectar expresiones lógicas
# formando expresiones lógicas más grandes cuyo resultado
# (verdadero o falso) dependerá de qué expresiones
# se conectaron y de qué forma se conectaron

#AND: evalua si varias condiciones se cumplen al mismo tiempo

# &

x<-7

x > 1 & x < 10

x > 1 & x < 6

#OR: evalua si al menos una de las condiciones se cumple

# |

x > 1 | x < 6

x == 1 | x ==3 | x == 7

#NOT: evalua si la condición no se cumple

!x == 1  # similar a    x != 1x

!(x > 1)


# 4.C Ejemplos del uso de operadores en vectores (longitud > 1)

# Vamos a simular 50 tiros de dos dados (dado1 y dado2)
dado1<-sample(1:6,50, replace=TRUE)
dado2<-sample(1:6,50, replace=TRUE)


# Tiros con el mismo número en ambos dados

dado1 == dado2

mismo<-dado1 == dado2

# ¿Cuántas veces se cumplió la condición?
sum(mismo)
table(mismo)

# ¿Qué números se obtuvieron en los tiros respectivos?
dado1[mismo]
dado2[mismo]

# Tiros con distinto número en ambos dados

!(dado1 == dado2)
dado1 != dado2

distinto<- dado1 != dado2

sum(distinto)
dado1[distinto]
dado2[distinto]

#Tiros en los que tenemos 6 en uno o ambos dados
dado1 == 6 | dado2 == 6
seis<- dado1 == 6 | dado2 == 6

sum(seis)
dado1[seis]
dado2[seis]

#Tiros en los que tenemos 6 en ambos dados
dado1 == 6 & dado2 == 6
seises<-dado1 == 6 & dado2 == 6
sum(seises)

#Tiros en los que tenemos 6 sólo en un dado (no en ambos)
(dado1 == 6 | dado2 == 6) & dado1 != dado6

un.seis<-(dado1 == 6 | dado2 == 6) & dado1 != dado6
sum(un.seis)

#Tiros en los que un dado tiene 1 a 3 y el otro 4 a 6
(dado1 <= 3 | dado2 <=3) & (dado1 > 3 | dado2 > 3)

x <- (dado1 <= 3 | dado2 <=3) & (dado1 > 3 | dado2 > 3)
sum(x)
dado1[x]
dado2[x]

#Tiros en los que la suma es 8
ocho<-dado1 + dado2 == 8

dado1[ocho]
dado2[ocho]
sum(ocho)
