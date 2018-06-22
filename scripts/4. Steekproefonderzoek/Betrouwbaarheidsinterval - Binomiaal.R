# Clearen: plot, console, environment
rm(list=ls())
cat("\014")
dev.off()
library(lsr)

# ========================================= Betrouwbaarheidsinterval (Binomiaal) ========================================

# --------------------------------------------- Input Gegevens ---------------------------------------------


n <- 100      # steekproefgrootte
aantalSuccessen = 6
alpha <- 0.05


# ---------------------------------------------- Berekeningen ----------------------------------------------


p <- aantalSuccessen / n # schatting voor het percentage successen
q <- 1 - p # schatting voor het percentage falingen

print(paste("De kans op succes:    ",p))
print(paste("De kans op faling:    ",q))

if(n >= 30){
  # |ondergrens| en bovengrens
  z <- qnorm(1-alpha/2)
}else{
  z <- qt(1-alpha/2,df=n-1)
}

#berekenen van de betrouwbaarheidsinterval
ondergrens  <- p - z * sqrt(p*q/n)
bovengrens <- p + z * sqrt(p*q/n)

print(paste("Ondergrens:   ", ondergrens))
print(paste("Bovengrens:   ", bovengrens))