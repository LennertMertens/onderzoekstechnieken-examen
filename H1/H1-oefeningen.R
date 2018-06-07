#Hoofdstuk 1: Inleiding R
#Oefeningen

#Oefening 1.1
? read.csv
?library
?setwd
library(readr)  #library inladen om een file te lezen

computers <- read.csv(file="computers.csv")
#leest de file computers.csv en steekt de data in de variable computers
names(computers)  #laat alle kollomen zien
attributes(computers) #?
a <- 2
b <- sqrt(a*a+3-5) #rekenoperaties


#Oefening 1.2
library(readr)  #library inladen om een file te lezen
#Bekijk de dataset cars
View(mtcars) #Preview van dataframe
ncol(mtcars) #aantal kolommen
nrow(mtcars) #aantal rijen

#Kolom met de definities van cilinders
mtcars$cyl

#Kolommen met mpg en hp
mtcars[c("mpg", "hp")]

#rij-record (rij 3 tem 7)
mtcars[3:7, ]

"geef alle autos met een verbruik tussen 20 en 25 liter met minder dan 5 cilinders"
mtcars[mtcars$mpg >= 20 & mtcars$mpg <= 25 & mtcars$cyl<5,]


#Oefening 1.3
"lezen via file > Import Dataset > 'kies een dataformaat'"


#Oefening 1.4
#Genereer een 4x5 array x
x <- matrix(ncol = 5,
            nrow = 4)

#Genereer een tweede array 3x2 waar de eerste kolom de rijindex 
#kan zijn van x en de tweede en kolomindex voor x
a <- matrix( #onvolledig
  nrow = 3,
  ncol = 2)

# extra
x[2,3] #element op de 2de rij, 3de kolom
x[2] #elementen op de 2de rij
x[,c(1,3)] #alle rijen en de eerste kolom samen met de derde kolom



#Oefening 1.5
#Genereer een vector waar een voornaam en achternaam in komen
#Benoem ook de naam van de kolommen. geef de voornaam terug voor 
#het eerste element van de array


n <- c(1,2) # maakt kollom met een 1 en een 2
a <- factor(c("robin","kenneth")) # maakt een kollom met een factor met de strings robin en kenneth
b <- c("de cock","de cock") # maakt een kollom zonder een factor met de string de cock
ve<- data.frame(nummer = n,  #naam van de kollom is nummer met een variable n, daar na de naam voornaam en daarna de naam achternaam met bij bijhoorde data
                voornaam = a,
                achternaam = b)

ve$voornaam #geef alle voornamen terug
ve$voornaam[1] #geeft enkel de eerste voornaam terug

#extra
summary(ve) #samenvattig



#Oefening 1.6
library(DAAG)
View(rainforest)

#Tel de rijen per specie die voledig en compleet zijn (dus geen N.A bevatten)
?with
?complete.cases
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


