#Bepaal de dichtheid en de cumulatieve waarschijnlijkheidscurve voor een nor-male verdeling met een gemiddeldem van 2,5 ens=1;5.
#Bepaal de oppervlakte voor hetgebied onder de dichtheidscurve tussenx=0:5enx=4.
#Controleer uw antwoord door deberekening te doen.



pnorm(4,2.5,1.5) - pnorm(0.5,2.5,1.5)           #x, gemiddelde, standaart definatie
#0.7501335


#grafische voorstelling
#grafisch want de curve is gevraagd
x <- seq(from = 0 , to = 4, by = 0.1)
x
numbers <- pnorm(x, mean = 2.5, sd = 1.5)
numbers
plot(numbers)
hist(numbers)
numbers <- dnorm(x, mean = 2.5, sd = 1.5)
plot(numbers)
#4.6
pnorm(4,2.5,1.5) - pnorm(0.5,2.5,1.5)
#0.7501335

