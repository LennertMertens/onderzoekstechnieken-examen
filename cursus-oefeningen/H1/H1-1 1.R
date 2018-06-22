? read.csv  #laat de hulp unix man-pagina's zien

library(readr) #laad een biblotheek (in dit gevallen voor een file te lezen)
computers <- read.csv(file ="computers.csv") #leest de file computers.csv en steekt de data in de variable computers
names(computers)  #laat alle kollomen zien
attributes(computers) #?
a <- 2
b <- sqrt(a*a+3-5) #rekenoperaties
