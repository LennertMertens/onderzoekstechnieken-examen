#H6: Analyse op 2 variabelen: oefeningen 
#Oefening 6.1
library(foreign)
muziek <- read.csv("C:/Users/Lennert/onderzoekstechnieken-cursus/oefeningen/data/hfst6_2variabelen/MuziekWijn.csv")
#Opstellen kruistabel
observed <- table(muziek$Muziek, muziek$Wijn)
addmargins(observed)
#Bepalen marginalen
row_sums <- rowSums(observed)
col_sums <- colSums(observed)
n <- sum(observed)
#Bepalen verwachte resultaten
expected <- outer(row_sums, col_sums)/n
addmargins(expected)
expected-observed
#Berekenen CHi-squared
diffs <- (expected - observed)^2 /expected
diffs
chi_squared <- sum(diffs)
chi_squared
#[1] 18.27921
#Berekenen Cramer's V
k <- min(nrow(observed), ncol(observed))
cramers_v <- sqrt(chi_squared/((k-1)*n))
cramers_v
#[1] 0.193937


#Oefening 6.3
aardB <- read.csv("C:/Users/Lennert/onderzoekstechnieken-cursus/oefeningen/data/hfst6_2variabelen/Aardbevingen.csv")
hist(aardB$Magnitude)
boxplot(aardB$Magnitude)
chisq.test(aardB$Type, aardB$Source)
n <- length(aardB$Source)
k <- min(nrow(aardB), ncol(aardB))


