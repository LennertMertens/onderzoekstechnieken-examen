#formules
# je  moet de frequentie hier ook meenemen dus je n wordt som van je frequentietabel, e, waarden worden de som van de (frequentie*pinnen)
# dus µ=(som(x*fx))/som(fx)
# nu moet je deze redenering overnemen voor de variantie

#berekeningen
#De formule voor standaardafwijking en variatie staan beschreven in sectie 3.7.
#Hoe moet de formule aangepast worden omsens2te berekenen wanneer we te maken hebben met een frequentietabel?
#Doe dit voor de data in table 3.3

#table 3.3
#pinnenX        Frequentie Fx
# 0                   2
# 1                   1
# 2                   2
# 3                   0
# 4                   2
# 5                   4
# 6                   9
# 7                   11
# 8                   13
# 9                   8
# 10                  8



pinnen <- seq(1,10,by = 1)
pinnenFx <- c(2,1,2,0,2,4,9,11,13,8,8)

#gemiddelde (dit voorschrift vind in definitie 3.2.1)
#de noemer wordt de som van alle fx'en
teller <- sum(pinnenX * pinnenFx)
noemer <- sum(pinnenFx)

gemiddelde <- teller/noemer

#variantie (dit voorschrift vind in definitie 3.7.1)
teller <- sum(pinnenFx * (pinnenX - gemiddelde)^2)
noemer <- sum(pinnenFx)

variantie <- teller/noemer

#standaardafwijking (dit voorschrift vind in definitie 3.7.2)
standaardafwijking <- sqrt(variantie)
