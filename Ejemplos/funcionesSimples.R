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

#declara funcion potencia
potencia <- function(x){
  x*x
}

#declara funcion factorial
factorial <- function(x){
  if (x==0){
    1
  }else{
    x * factorial(resta(x,1))
  }
}

#Declara funcion para calcular binarios 
binario <- function(x){
  if(x/2 == 0){
    x
  }else{
    (x %% 2) + 10 * binario(x %/% 2)
  }
}

x <- 10
y <- 2
z <- 11

suma(x,y)
resta(x,y)
multi(x,y)
division(x,y)
potencia(x)
factorial(x)
binario(z)

