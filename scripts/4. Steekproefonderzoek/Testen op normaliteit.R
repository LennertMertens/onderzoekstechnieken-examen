# Clearen: plot, console, environment
rm(list=ls())
cat("\014")
library(lsr)

# ========================================== Testen op normaliteit =========================================

# --------------------------------------------- Input Gegevens ---------------------------------------------
# zelf je plot eerst clearen! lukt hier niet automatisch!
data = rnorm(500)
# ---------------------------------------------- Berekeningen ----------------------------------------------

# 1ste manier: Histogram -> vormt deze een klok-curve: normaal verdeling!
hist(data)

# 2de manier: intervallen berkenen.
gem = mean(data)
sd = sd(data)

## interval moet ongeveer rond 68,3 procent liggen
i1 = pnorm(gem+sd) - pnorm(gem-sd)
i2 = pnorm((gem+2*sd) - pnorm((gem-2*sd)))
i3 = pnorm((gem+3*sd) - pnorm((gem-3*sd)))

print(paste("Interval 1 moet rond 68,3 procent liggen         ",i1*100))
print(paste("Interval 2 moet rond 95,4 procent liggen         ",i2*100))
print(paste("Interval 3 moet rond 99,7 procent liggen         ",i3*100))

# 3de manier: QQ-plot
qqnorm(data)
qqline(data, col = "red")


