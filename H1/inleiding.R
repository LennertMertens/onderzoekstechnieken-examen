#H1: inleiding

#Hulpfunctie
? solve
help("solve")


#Commando's naar een extern bestand wegschrijven
source("Commands.R")

#Alles wegschrijven tussen volgende twee commando's
sink("record.lis")
sink()

#R omgeving en workspace
#Overzicht van alle gemaakte objecten tot op moment van uitvoering
objects () #Deze zijn nu opgeslagen in je werkruimte
#Objecten verwijderen:
rm(x,y,foo,bar,laukie, lennie)
#Toewijzen
#Vector van cijfers aanmaken en toewijzen aan variabele X
x<-c(10.4, 5.8,2.2, 63.5)
x     #geeft de vector weer
x[2]  #geeft getal op index 2
#5.8

#Een CSV file lezen >help(read.csv) #info over options
computers <- read.csv("computers.csv",header=TRUE, sep=",", fill=TRUE)
#Kolommen gedefinieerd in de dataset
names(computers)
#Bijhorende attributes van een dataframe bekijken
attributes(computers)

#Huidige werkmap bepalen
getwd()
#Inhoud van de werkmap bepalen
dir()
#Werkmap aanpassen
setwd("~/onderzoekstechnieken-cursus")



#Data types
#Numbers
a<-3
#toewijzen
b<-sqrt(a*a+3) #bewerking uitvoeren
b
3.464102

#Lijst van nummers aanmaken
a<-numeric(10)
a
#0000000000
typeof(a)
"double"

#Strings
a<-c("hello","there")
a[2]
"there"

#Data frames
#manier om verschillende vectoren van verschillende types te nemen en ze op te slaan in dezelfde variabele
a<-c(1,2,3,4)
b<-c(2,4,6,8)
levels<-factor(c("A","B","A","B"))
bubba<-data.frame(fist=a,second=b,f=levels)
#bewerking op dataset

#summary
#kolom selecteren: bubba$first

#Logische variabelen
TRUE  
FALSE

#Tables
a<-factor(c("A","A","B","A","B","B","C","A","C"))
results<-table(a)
results
#A B C
#4 3 2

#Matrix
#een matrix is een verzameling van gegevens die zijn aangebracht in een tweedimensionale rechthoekige verdeling
A=matrix(
c(2,4,3,1,5,7), #data elementen
nrow=2,         #aantal rijen
ncol=3,         #aantal kolommen
byrow=TRUE)     #vul matrix rij per rij

#printmatrix
A
A[2,3]       #Element op de 2e rij, 3e kolom
A[2,]        #2e rij
A[, c(1,3)]  #de eerst en de derde kolom
