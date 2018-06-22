# Clearen: plot, console, environment
rm(list=ls())
cat("\014")
dev.off()
library(lsr)

# ======================================== Covariantië en corrolatie =======================================

# --------------------------------------------- Input Gegevens ---------------------------------------------

data <- read.csv("/Users/matthiaswarnez/Dropbox/Matthias/School/Hogent/TI - 2/2de semester/Onderzoekstechnieken/onderzoekstechnieken-cursus/cursus/data/families.txt", sep ="")
# X - onafhankelijke var
x = data$x

# Y - afhankelijke var
y = data$y

# ---------------------------------------------- Berekeningen ----------------------------------------------

mx <- mean(x)
my <- mean(y)

plot(x,y)
abline(h = my, col = 'red')
abline(v = mx, col = 'red')

print("Covariantie")
cov(x, y)

print("Corolatiecoëfficient")
correlation = cor(x, y)
correlation

regression <- lm(y ~ x)
abline(regression,
       col = 'blue')

print("Determinatiecoëfficient")
correlation^2
