#oef 1.2

#Bekijk de dataset mtcars. 
#Geef ook een preview van het volledige data frame.
View(mtcars)

# Geef de waarde terug voor de eerste rij, tweede kolom.
mtcars[1,2]

#Geef ook het aantal rijen, het aantal kolommen.
nrow(mtcars)  # Aantal rijen
ncol(mtcars)  # Aantal kolommen

#Geef enkel de kolom terug met de definities van de cylinders.
mtcars$cyl  # kolom met naam "cyl"

# Om een data frame te bekomen met de twee kolommen mpg en hp, pakken we de kolomnamen in een indexvector in
#met single square bracket operator.
mtcars[c("mpg","hp")] # tabel met enkel kolommen mpg en hp

# Probeer ook eens op te zoeken hoe je een rijrecord van de ingebouwde data set mtcars bepaalt.
