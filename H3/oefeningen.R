#H3 oefeningen

#-----table 3.3-----
#Pinnen x Frequentie fx
#0 2
#1 1
#2 2
#3 0
#4 2
#5 4
#6 9
#7 11
#8 13
#9 8
#10 8


#-----Oefening 3.4-----
#De formule voor standaardafwijking en variatie staan beschreven in sectie 3.7.
#Hoe moet de formule aangepast worden µ en sigma kwadraat te berekenen wanneer we te maken hebben 
#met een frequentietabel?
#Doe dit voor de data in table 3.3

pinnenX <- c(0,1,2,3,4,5,6,7,8,9,10)
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
#----------------------


#-----Oefening 3.5-----
#In de formule voor de variantie wordt het verschil tussen de meetpunten en het gemiddelde gekwadrateerd.
#Waarom? Zoek dit uit door volgende berekenigswijzen eens uit te proberen

#Datasets
X <- c(4,4,-4,-4)
Y <- c(7,1,-6,-2)

gem_X <- mean(X)
gem_Y <- mean(Y)
aantal_X <- length(X)
aantal_Y <- length(Y)

# 3.5: var = 1/N*som(µ-x)
formule1_X <- 1/aantal_X*sum(gem_X - X)
formule1_Y <- 1/aantal_Y*sum(gem_Y - Y)

# 3.6: var = 1/n*som(|µ-X|)
formule2_X <- 1/aantal_X*sum(abs(gem_X - X))
formule2_Y <- 1/aantal_Y*sum(abs(gem_Y - Y))

# 3.7: var = 1/n*som((µ-X)^2)
formule3_X <- 1/aantal_X*sum((gem_X - X)^2)
formule3_Y <- 1/aantal_Y*sum((gem_Y - Y)^2)
#----------------------


#-----Oefening 3.7-----
#Beschouw de volgende subsets uit het data frameais(uit de library DAAG):
#1.  Ontleed de gegevens voor de roeiers.
#2.  Ontleed de gegevens voor de roeiers, de netballers en de tennissers.
#3.  Ontleed de gegevens voor de de vrouwelijke basketballers en roeiers.

library(DAAG)
View(ais)
?ais

# bekijk variabablen 'ht' en 'geslacht'
ais$ht
ais$sex

# variablen uit tabel halen en in variable steken
sport <- ais$sport
sex <- ais$sex

# roeiers hun gegevens analyseren

ht<-(ais$ht[ais$sport==c("Row")])     #neemt de variable als de sport gelijk is aan row ( roeiers )


mean(ht)                     # gemiddelde
sd(ht)                       # standard deviation of a *sample*
median(ht)                   # mediaan nemen van de ht
range(ht)                    # minimum & maximum
abs(max(ht) - min(ht))       # range
summary(ht)                  # Quartiles, etc.
IQR(ht)                      # Interquartile range


# roeiers, netballers en tennisers hun gegevens analyseren

ht<-(ais$ht[ais$sport==c("Row","Netball","Tennis")])


mean(ht)                     # gemiddelde
sd(ht)                       # standard deviation of a *sample*
median(ht)
range(ht)                    # minimum & maximum
abs(max(ht) - min(ht))       # range
summary(ht)                  # Quartiles, etc.
IQR(ht)                      # Interquartile range

# roeiers hun gegevens analyseren

# fout (ais$ht[ais$sport==c("Row","B_Ball") & ais$sex="f"])
# juist commando maar in view 

#juist nog vinden hoe ht af te zonder van de andere data, maar werkt wel 

vr<-ais[ais$sex == 'f' & (ais$sport == 'Row' | ais$sport == 'B_Ball'),]




mean(vr)                     # gemiddelde
sd(vr)                       # standard deviation of a *sample*
median(vr)
range(vr)                    # minimum & maximum
abs(max(vr) - min(vr))       # range
summary(vr)                  # Quartiles, etc.
IQR(vr)                      # Interquartile range
#----------------------


#-----Oefening 3.8-----
a <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21) #dataset

mean(a) #gemiddelde
range(a) #range

b<-rnorm(50,mean=0,sd=1) #dataset met 50 willekeurige getallen: gemiddelde 0, variantie 1
mean(b) #gemiddelde
range(b) #range


mean(women$height) #gemiddelde
range(women$height) #range

mean(women$weight) #gemiddelde
range(women$weight) #range
#----------------------