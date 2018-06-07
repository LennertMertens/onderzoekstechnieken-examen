#H7: oefening 7.2
library(MASS)
View(survey)
?survey


a <- 0.05

#1. Exer and Smoke
#Kruistabellen opstellen
tbl <- table(survey$Exer, survey$Smoke)
tbl
plot(tbl)
#Bereken X²
chisq <- chisq.test(tbl)
chisq

#Bereken g
g <-  qchisq(p = 1-a, df = chisq$parameter)
g

#Bereken p
chisq$p.value

#----------------------------------------------------------

#2. Write and fold
#Kruistabellen opstellen
tbl <- table(survey$W.Hnd, survey$Fold)
tbl
plot(tbl)
#Bereken X²
chisq <- chisq.test(tbl)
chisq

#Bereken g
g <-  qchisq(p = 1-a, df = chisq$parameter)
g

#Bereken p
chisq$p.value
