#H7: Chi-kwadraat toets

library(MASS)
View(Aids2)

#y = afhankelijke variabele
#x = onafhankelijke variabele

tbl <- table(Aids2$sex, Aids2$T.categ)
tbl
plot(tbl)
#1. Bepalen van de hypotheses
# H0: steekproef is representatief naar populatie
# H1: steekproef is niet representatief naar populatie

# Bepaal x2, df en p
chisq <- chisq.test(tbl)
chisq

# g berekenen
g<- qchisq(p = 1-0.05, df = chisq$parameter)
g

#p berekenen
chisq$p.value
