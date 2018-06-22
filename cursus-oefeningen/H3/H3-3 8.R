#Gebruik de functiesmeanenrangeom het gemiddelde en bereik van

#de cijfers 1, 2, . . . , 21
#50 willekeurige normale waarden, die worden gegenereerd vanuit een normale distributiemet gemiddelde 0 en variantie 1
#de kolommen heighten weight in de data frame women(standaard in R)

library(DAAG)
View(ais)

#Gemiddelde lengte van de vrouwelijke sporters
mean(ais$ht[ais$sex == 'f'])

#Array met de lengte van alle roeiers
ais$ht[ais$sport == 'Row']

#Selecteer roeiers en netbalspelers uit de dataset
ais[ais$sport=='Row' | ais$sport=='Netball',]

NIET DE VRAAG


ANTWOORD OP VRAAG
a <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21) #dataset
  
mean(a) #gemiddelde
range(a) #range

b<-rnorm(50,mean=0,sd=1) #dataset
mean(b) #gemiddelde
range(b) #range


mean(women$height) #gemiddelde
range(women$height) #range

mean(women$weight) #gemiddelde
range(women$weight) #range
