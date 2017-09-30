#declara funcion suma 
suma <- function(x,y){
  x + y
}

#declara funcion resta
resta <- function(x,y){
  x-y
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

x <- 5
y <- 2
z <- 11

suma(x,y)
resta(x,y)
potencia(x)
factorial(x)
binario(z)

