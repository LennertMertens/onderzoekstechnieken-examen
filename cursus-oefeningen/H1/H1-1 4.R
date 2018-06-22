#Oefening 1.4. Genereer een 4x5 array en noem die x. Geneer daarna een 3x2 array waar de
#eerste kolom de rijindex kan zijn van x en de tweede kolom een kolomindex voor x. Vervang de
#elementen gedefinieerd door de index in i in x door 0.

x <- matrix(
  c(0,0,0,0,0,0,0,2,0,0,0,0,0,8,0,0,0,0,0,0), #alle elementen ( je kan er ook 5 zetten en dan heb je 4 rij'en dezelfde elementen)
  nrow = 4, #aantal rijen
  ncol = 5, #aantal kollomen
  byrow = TRUE #aanvullen aan de rij
) 

a <- matrix( #onvolledig
  nrow = 3,
  ncol = 2)

# extra
x[2,3] #element op de 2de rij, 3de kolom
x[2] #elementen op de 2de rij
x[,c(1,3)] #alle rijen en de eerste kolom samen met de derde kolom
