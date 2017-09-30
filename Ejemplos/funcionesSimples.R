#declara funcion suma 
suma <- function(x,y){
  x + y
}

#declara funcion resta
resta <- function(x,y){
  x-y
}

#declara funcion multiplicacion
multi <- function(x,y){
  if(x == 1){
    y
  }else{
    suma(y,multi(resta(x,1),y))
  }
}

#declara funcion division
division <- function(x,y){
  if(x<y){
    0
  }else{
    suma(1,division(resta(x,y),y))
  }
}

#declara la fucnion madulo
modulo <- function(x,y){
  if(x<y){
    x
  }else{
    modulo(resta(x,y),y)
  }
}

#declara funcion potencia
potencia <- function(x){
  multi(x,x)
}

#declara funcion factorial
factorial <- function(x){
  if (x==0){
    1
  }else{
    multi(x,factorial(resta(x,1)))
  }
}

#Declara funcion para calcular binarios 
binario <- function(x){
  if(division(x,2) == 0){
    x
  }else{
    suma(modulo(x,2),multi(10 , binario(division(x,2))))
  }
}

#Declara funcion que combierte binarios en decimales 
decimal <- function(x){
  if(division(x,10) == 0){
    x
  }else{
    suma(modulo(x,10),multi(2,decimal(division(x,10))))
  }
}

x <- 10
y <- 4
z <- 11
w <- 1011

suma(x,y)
resta(x,y)
multi(x,y)
division(x,y)
modulo(z,y)
potencia(x)
factorial(y)
binario(z)
decimal(w)

