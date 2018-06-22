# Clearen: plot, console, environment
rm(list=ls())
cat("\014")
library(lsr)

# ================================ Analyse op 1 variabele (Frequentietabel) ================================

# --------------------------------------------- Input Gegevens ---------------------------------------------

# 

waarden = c(0:10)
frequentie = c(2,1,2,0,2,4,9,11,13,8,8)

# Enkel voor data in een steekproef!


# ---------------------------------------------- Berekeningen ----------------------------------------------

aantal = sum(frequentie)
frelatief = frequentie/aantal
data = waarden * frelatief
gemiddelde = sum(data)
var =sum((waarden-gemiddelde)^2*frelatief)
sd = sqrt(var)

total = rbind(waarden,frequentie)
total = as.table(total)
total

# Gemiddelde
print(paste('Gemiddelde:        ',gemiddelde))
# Variantie
print(paste('VAR:               ',var))
# Standaarddeviatie    
print(paste('STD:               ',sd))
  


