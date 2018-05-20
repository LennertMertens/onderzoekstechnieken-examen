#H4: Distributies in R
#nagaan welke distributies er allemaal bestaan:
help.search("distribution")

#prefixen in R
#d geeft de hoogte van een respectievelijke kansdichtheidsfunctie
#p geeft de cumulatieve kansdichtheidsfunctie
#q geeft de omgekeerde cumulatieve dichtheidsfunctie
#r geeft een willekeurige waarde

#DE NORMALE VERDELING
#dnorm
dnorm ( 0 )
dnorm ( 0 ) * sqrt(2 * pi )
dnorm ( 0 ,mean =4)
dnorm ( 0 ,mean =4 , sd =10)
v <- c( 0 , 1 , 2 )
dnorm ( v )
x <- seq(20, 20, by= .1)
y <- dnorm(x)
plot(x, y)
y <- dnorm(x, mean=2.5, sd=0.1)
plot(x,y)

#pnorm
#=linkerstaartkans P(Z<x) (pnorm(x))

#qnorm
#=De volgende functie die we bekijken is qnorm, die de inverse van pnorm is. Het idee achter qnorm
#is dat je het een kans a geeft, en het geeft het getal weer waarvan de cumulatieve distributie
#overeenkomt met de waarschijnlijkheid a.
pnorm(0.5)
qnorm(0.5, mean = 1)
qnorm(0.5, mean = 1, sd = 2)
qnorm(0.5, mean = 2, sd = 2)
qnorm(0.5, mean = 2, sd = 4)
qnorm(0.25, mean = 2, sd = 2)
v <- c(0.1, 0.3, 0.75)
qnorm(v)
x <- seq(0, 1, by=.5)
y <- qnorm(x)
plot(x,y)
y <- qnorm(x, mean=3, sd=0.1)
plot(x,y)


#rnorm
y <- rnorm(200)
hist(y)
y <- rnorm(200, mean = -2)
hist(y)
y <- rnorm(200, mean = -2, sd=4)
hist(y)
qqnorm(y)
qqline(y)
