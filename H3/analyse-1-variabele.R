#H3: Analyse op 1 variabele
#-----Centrummaten-----

#Lengtes van superhelden
vec <- c(141,198,143,201,184)

#Gemiddelde
gemiddelde <- mean(vec)

#Mediaan
mediaan <- median(vec)

#-----Spreidingsmaten-----
#Range (minimum en maximum)
range(vec)                #minimum & maximum
abs(max(vec) - min(vec))  #range

#Kwartielen enz.
summary(vec)

#Interkwartielafstand
#Q3-Q1
IQR(vec)

#----------Variantie----------
# variantie = 1/n * som(µ-xi)^2

#Variantie steekproef
#Berekend met n-1 in de noemer
var(vec)
#Bijhorende standaardafwijking
sd(vec)

#Variantie populatie
#Berekend met n in de noemer
aantal_elem <- length(vec)
variantie <- 1/aantal_elem*sum((gemiddelde-vec)^2)
#Bijhorende standaardafwijking
stdev <- sqrt(variantie)

#-----------------------------

