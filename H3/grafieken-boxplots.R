#Grafieken analyseren
#Oefening 3.9
setwd("C:/Users/Lennert/onderzoekstechnieken-cursus/oefeningen/data/hfst3_1variabele")
android_cpu <- read.csv("android_persistence_cpu.csv", sep = ";", dec = ",")
attach(android_cpu)


#Grafieken in R
#Histogram
hist(android_cpu$Tijd, main = "Verdeling van de tijd", xlab = "De gemeten cpu tijd");
hist(android_cpu$Tijd, main = "Verdeling van de tijd", xlab = "De gemeten cpu tijd", breaks = 2); #Groeperen en gem nemen
# De uitvoer is niet zinnig want het stelt niets voor, er is eveneens geen y-lab aanwezig waardoor we niet weten hoe 
# de gemeten cpu tijd wordt uitgedrukt. (Tijdseenheid is nodig)

#Boxplot in R 
boxplot(x = android_cpu$Tijd);

#Verticale boxplot
boxplot(android_cpu$Tijd, main = "Spreiding van de CPU tijd", ylab = "Tijd in ms");
? boxplot

#Horizontale boxplot
boxplot(android_cpu$Tijd, main = "Spreiding van de CPU tijd", ylab = "Tijd in ms", horizontal = TRUE);

# Het heeft weinig zin om de volledige dataset te anaklyseren aangezien de volledige dataset verdeelt is over
# verschillende categorieën.

#Boxplot per categorie
boxplot(android_cpu$Tijd~android_cpu$Datahoeveelheid, main = "Spreiding van de CPU t.o.v datahoeveelheid", 
        ylab = "Tijd in ms");

#Alle categorieën 
boxplot(android_cpu$Tijd~android_cpu$PersistentieType*android_cpu$Datahoeveelheid, main = "Spreiding van de CPU tijd",
        ylab = "Tijd in ms");
#Duidelijker beeld over data tussen de categoriën maar te druk!


#Data onderverdelen in categorieën namelijk onder: PersistentieType en Datahoeveelheid: functie which (of subset)
greenDAO <- android_cpu[which(android_cpu$PersistentieType=='GreenDAO'),];
boxplot(greenDAO$Tijd~greenDAO$Datahoeveelheid);

#Subset functie => makkelijker. Je definieert welke data je wilt houden!
test <- subset(android_cpu, PersistentieType="SQLLite")
boxplot(test)
  
