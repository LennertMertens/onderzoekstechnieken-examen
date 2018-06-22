#Oplossing werkcollege J. Buysse

ibrary(readr)
#Working dir instellen

mw <- read.csv(file = "MuziekWijn.csv")

# Bepaal de marginalen
table <- table(mw)

#kruistabel weergeven, met de totalen per rij en kolom
addmargins(table)

#marginale percentate want je doet de propotionele totallen rij
prop.table(table,1)
#marginale totallen kolom
prop.table(table,2)

#marginale tabel geeft beeld van hoeveel mensen tijdens het luisteren van andere muziek, franse wijn gekocht. Zo zie je alles
prop.table(table)


#totallen rij
margin.table(table,1)

#totallen Kolom
margin.table(table,2)

#totaal
margin.table(table)

#bepaal de verwachte resultaten
model <- chisq.test(table)
#df aantal vrijheidsgraden, een student t verdeing heeft da ook 

#dit zijn de verwachte waarden
#verwachte aantal als er geen verband zou bestaan. (Dit zijn de rode waaden vanuit de slides)
model$expected

#percentage
# OP HET EXAMEN AFRONDEN OP 2 CIJFERS
#round
round(prop.table(table,1)*prop.table(table,2),2)

#chi test
chisq.test(table)


library(lsr)
#cramers v test 
cramersV(table)

#definitie
# Er is een samenhang maar deze is niet sterk verbonden
#conclusie trekken, na alles te berekenen 
prop.table(table)
