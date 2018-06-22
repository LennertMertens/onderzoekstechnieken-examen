# Clearen: plot, console, environment
rm(list=ls())
cat("\014")
dev.off()
library(lsr)

# ========================================== Lineaire regressie  ===========================================

# --------------------------------------------- Input Gegevens ---------------------------------------------

data <- read.csv("/Users/matthiaswarnez/Dropbox/Matthias/School/Hogent/TI - 2/2de semester/Onderzoekstechnieken/onderzoekstechnieken-cursus/cursus/data/santa.txt",
                        sep = "")
afhankelijkeVar = data$y
onafhanekelijkeVar = data$x

# ---------------------------------------------- Berekeningen ----------------------------------------------

#Manier 1

# mx <- mean(onafhanekelijkeVar)  # gemiddelde van x
# my <- mean(afhankelijkeVar)  # gemiddelde van y
# xx <- onafhanekelijkeVar - mx   # x - mx
# yy <- afhankelijkeVar - my   # y - my
# beta_1 <- sum(xx * yy) / sum(xx^2)
# beta_0 <- my - beta_1 * mx
#   
# plot(x = onafhanekelijkeVar, y = afhankelijkeVar,
#        xlab = "Protein content (%)",
#        ylab = "Weight gain (g)")
# abline(a = beta_0,  # snijpunt y-as
#        b = beta_1,  # richtingscoëfficiënt
#        col = 'red')

#Manier 2
#AFHANKELIJK - ONAFHANKELIJK!
lm(afhankelijkeVar ~ onafhanekelijkeVar)

plot(x = onafhanekelijkeVar, xlab = "Protein content (%)",
     y = afhankelijkeVar, ylab = "Weight gain (g)")

regression <- lm(afhankelijkeVar ~ onafhanekelijkeVar)

abline(regression,
       col = 'red')