# Clearen: plot, console, environment
rm(list=ls())
cat("\014")
dev.off()
library(lsr)

# ======================== Chi-kwadraat - kruistabel (niet met inlezen van dataset) ========================

# --------------------------------------------- Input Gegevens ---------------------------------------------


data = matrix(data = c(21178,3092, 83,1),     #overloop kolom per kolom, niet rij per rij!
              ncol = 2)                         #ncol is het aantal kolom dat je hebt.

alpha <- 0.05

rownames(data) = c("Rookt","Rookt niet")
colnames(data) =c("Longkanker", "geen Longkanker")
# ---------------------------------------------- Berekeningen ----------------------------------------------s


# --------------------- KRUISTABEL ---------------------
tabelZonderMarginalen = as.table(data);
table = as.table(data)


print('KRUISTABEL')
addmargins(table)



# --------------------- KRUISTABEL MET SCHATTER ---------------------

model = chisq.test(tabelZonderMarginalen)
model

print('KRUISTABEL MET SCHATTER')
model$expected


# --------------------- KWADRATISCHE, GENORMEERDE KRUISTABEL  --------------------

print('KWADRATISCHE GENORMEERDE KRUISTABEL')
model$residuals^2



# --------------------- CHI-KWADRAAT --------------------

print('CHI-KWADRAAT')
model$statistic

# --------------------- p-waarde --------------------

print('P-waarde')
model$p.value



# --------------------- plot --------------------

l = model$parameter
p = model$p.value

chisq = model$statistic
g <- qchisq(p = 1 - alpha, df = l)


print(paste("Chi-kwadraat:     ", chisq))
print(paste("g-waarde:         ", g))
print(paste("p-waarde:         ", p))

if(chisq > g){
  print('H0 verwerpen! Er bestaat WEL een samenhang tussen de variabelen in de populatie!')
  print(paste('chi-kwadraat (',round(chisq,3),') > g-waarde (',round(g,3),')'))
  print(paste('p-waarde (',round(p,3),') < alpha (',alpha,')'))
}else{
  print('H0 niet verwerpen! Er bestaat GEEN samenhang tussen de variabelen in de populatie!')
  print(paste('chi-kwadraat (',round(chisq,3),') < g-waarde (',round(g,3),')'))
  print(paste('p-waarde (',round(p,3),') > alpha (',alpha,')'))
}




