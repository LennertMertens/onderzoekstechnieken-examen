library(MASS)

#1. Ga op de gebruikelijke manier te werk: visualiseren van de data, c2, g en p-waarde
#berekenen (a = 0;05), en tenslotte een conclusie formuleren.
#2. Bepaal de gestandaardiseerde residuën om te bepalen welke categorieën extreme waarden
#bevatten.

data = MASS::Aids2
library(lsr)
chis <- chisq.test(data$sex,data$T.categ)
chis$observed
#grenswaarde
g <- qchisq(0.95,df=7)
g
plot(data$sex,data$T.categ)