#In de Hogeschool zijn er twee klassen voor het vak onderzoekstechnieken.
#Destudenten werden willekeurig over de klassen verdeeld, zodat we mogen veronderstellen dat deene klas niet slimmer is dan de andere.
#In de A-klas geeft mevr. X les, in de B-klas geeft mr. Yles.
#X is nogal streng en op het einde van het schooljaar behaalt haar klas een gemiddelde van54 op 100 met een standaardafwijking van 11.
#Y is iets losser en stimuleert de leerlingen al gauw met een puntje meer.
#Op het einde van hetschooljaar behaalt zijn klas een gemiddelde van 62 op 100 en een standaardafwijking van 7.

#Wouter zit in de A-klas en heeft 63/100voor wiskunde.
#Stijn zit in de B-klas en behaalt 67/100.
#Wie heeft volgens jou het beste gescoord?

#je moet de Z-Scores berekenen
zx<-(0.63-0.54)/11
zy<-(0.67-0.62)/7
#Wouter dus. (zx)
#Of met de pnorm kan je tot dezelfde conclusie komen
#4.9
#Les 28/03/2018
pnorm(0.63, 0.54, 0.11)
pnorm(0.67, 0.62, 0.07)
