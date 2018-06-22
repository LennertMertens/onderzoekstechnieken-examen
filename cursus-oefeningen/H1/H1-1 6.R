install.packages("lattice") #installeer een packet
library(DAAG) #laad een biblotheek in
View(rainforest) #laat de dataset rainforest van de libary DAAG zien

#hoeveel rijen er zijn per species die volledig en compleet zijn 
#(dus geen n.a. bevatten). Je kan hiervoor with, table, complete.cases voor gebruiken. 
truefalse <- complete.cases(rainforest) #dees geeft true/false per volledige rij
volledigeRijen <- 0;
for (variable in truefalse) {
  if (variable) {
    volledigeRijen <- volledigeRijen+1
  }
}
volledigeRijen
 
