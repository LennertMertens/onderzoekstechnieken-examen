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
