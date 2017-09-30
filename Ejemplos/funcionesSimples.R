#declarar funcion suma 
suma <- function(x,y){
  x + y
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
    x * factorial(x-1)
  }
}

x <- 5
y <- 2

suma(x,y)
potencia(x)
factorial(x)
