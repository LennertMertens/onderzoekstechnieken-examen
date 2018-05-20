#Voorbeeld van een QQ plot

m <- 1000 #mean
s <- 50   #stdev
n <- 50   #getal

#normaalverdeling
observations <- rnorm(n, m, s)

#student's t verdeling
#observations <- m +rt(n, df = 15) *s

#QQ-plot van observations in vergelijking met de normaalverdeling
qqnorm(observations)

#plot de lijn van de verwachte positie van observations
x <- seq(-3, +3, length = n)
lines(x, m+s*x, col= "red")


#of?Nee
#qqnorm(y)
#qqline(y)

