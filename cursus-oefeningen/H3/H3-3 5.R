#In de formule voor de variantie wordt het verschil tussen de meetpunten en het gemiddelde gekwadrateerd.
#Waarom? Zoek dit uit door volgende berekenigswijzen eens uit te proberen


# 2 random datasets
lijstX <- c(4,4,-4,-4)
lijstY <- c(7,1,-6,-2)

# gemiddelde van deze 2 datasets
 avgx <- mean(lijstX)
 avgy <- mean(lijstY)

 lijstXMinAvg <- lijstX - avgx
 lijstYMinAvg <- lijstY - avgy
 
 lijstxMeth1 <- sum(lijstXMinAvg) #3.5 voor X
 lijstxMeth2 <- sum(abs(lijstXMinAvg)) #3.6 voor X
 lijstxMeth3 <- sum(lijstXMinAvg^2) #3.7 voor X
 
 lijstYMeth1 <- sum(lijstYMinAvg) #3.5 voor Y
 lijstYMeth2 <- sum(abs(lijstYMinAvg)) #3.6 voor Y
 lijstYMeth3 <- sum(lijstYMinAvg^2) #3.7 voor Y
 
 
