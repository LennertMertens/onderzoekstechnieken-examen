#Voorbeeld kruistabellen: waardering v/e product tss mannen en vrouwen

#1. Kruistabellen opmaken. Normaal zou je deze berekenen met de frequenties ordinaal/nominaal
waarderingen_m <- matrix(c(9,8,5,0,8,10,5,4), ncol = 2)
rownames(waarderingen_m) <- c("Goed", "Voldoende", "Onvoldoende", "Slecht")
colnames(waarderingen_m) <- c("Vrouw", "Man")
waarderingen <- as.table(waarderingen_m)

waarderingen

#Marginale totalen berekenen
margin.table(waarderingen, 1) #Rijtotalen
margin.table(waarderingen, 2) #Kolomtotalen
margin.table(waarderingen)    #Algemeen totaal (#observaties)

#Gepercenteerde waarden over de rijtotalen
waarderingen_pct <- prop.table(waarderingen, 2)

#Berekening chi-kwadraat, de moeilijke manier
#verwacht de warde adhv matrix-vermenigvuldiging
verwacht <- as.array(margin.table(waarderingen, 1)) %*%
  t(as.array(margin.table(waarderingen, 2))) /
  margin.table(waarderingen)

#Afwijkingen gekwadrateerd en genormeerd
afwijkingen <- (waarderingen-verwacht) ^ 2 / verwacht

#Chi-kwadraat
sum(afwijkingen)

#Rechtstreekse chi-kwadraatwaarde
summ <- summary(waarderingen)
chi_sq <- summ$statistic


#Cramer's V
k <- min(nrow(waarderingen), ncol(waarderingen))
V <- sqrt(chi_sq/(margin.table(waarderingen) * (k-1)))

#plot: mosaic plot
plot(t(waarderingen))

#clustered bar chart
barplot(waarderingen, beside = TRUE)

#stacked percentage chart
barplot(waarderingen_pct, horiz = TRUE)
