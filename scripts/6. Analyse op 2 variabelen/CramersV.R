rm(list=ls())
cat("\014")
dev.off()
library(lsr)

# ================================== Chi-kwadraat ~ Cramer's V regressie ===================================

# --------------------------------------------- Input Gegevens ---------------------------------------------
#ncol= aantalkolommen! GEEN Totalen! Doet hij van zelf!
data = matrix(c(10,20,10,5,20,15,20,0), ncol=4) #Kolom per kolom afgaan. Niet rij per rij! 

alpha <- 0.05

rownames(data) = c("Man","Vrouw")
colnames(data) =c("Merceds", "BMW","Porsche","Alfa Romeo")

# ---------------------------------------------- Berekeningen ----------------------------------------------


# --------------------- KRUISTABEL ---------------------
tabelZonderMarginalen = as.table(data);
table = as.table(data)


print('KRUISTABEL')
addmargins(table)


# --------------------- KRUISTABEL MET SCHATTER ---------------------

model = chisq.test(tabelZonderMarginalen)
                   
print('KRUISTABEL MET SCHATTER')
model$expected


# --------------------- KWADRATISCHE, GENORMEERDE KRUISTABEL  --------------------

print('KWADRATISCHE GENORMEERDE KRUISTABEL')
model$residuals^2



# --------------------- CHI-KWADRAAT --------------------

print('CHI-KWADRAAT')
model$statistic


# --------------------- cramer's V --------------------

print('Cramers V')
v = sqrt(model$statistic/(margin.table(tabelZonderMarginalen)*(min(nrow(tabelZonderMarginalen),ncol(tabelZonderMarginalen))-1)))
cramersV(tabelZonderMarginalen)

if(v == 0){
  print('Geen samenhang')
}

if(0 < v & v <=0.1){
  print('Geen samenhang ~ zwakke samengang')
}

if(0.1 < v & v <=0.25){
  print('zwakke samenhang ~ redelijke sterke samenhang')
}

if(0.25 < v & v <=0.5){
  print('redelijke sterke samenhang ~ sterke samenhang')
}

if(0.5 < v & v <=0.75){
  print('sterke samenhang ~ zeer sterke samenhang')
}

if(0.75 < v & v <1){
  print('zeer sterke samenhang ~ volledige samenhang')
}

if(v == 1){
  print('volledige samenhang')
}

# --------------------- plot --------------------

l = model$parameter

chisq = model$statistic
g <- qchisq(p = 1 - alpha, df = l)

# Plot the chi-squared density function
x <- seq(0, g*1.5, length = 1000)
dist <- dchisq(x, df = l)
plot (x, dist, type = 'l', xlab = '', ylab = '')

# The acceptance region (where H_0 is accepted)
i <- x <= g
polygon(c(x[i],    g,                     g),
        c(dist[i], dchisq(g, df = l), 0),
        col = 'lightgreen')

text(x = g, y = dchisq(g, df = l)/2, paste('g = ', round(g, digits=2)))

# The test statistic (chi squared)
abline(v = chisq, col = 'red')
text(x = chisq, y = mean(dist), paste('chi^2 = ', round(chisq, digits=2)))

## uitleg bij de grafiek.
title(main="Chi^2-test")

  if(chisq > g){
    title(sub="Verwerpen!", col.sub="red")
  }else{
    title(sub="Aanvaarden", col.sub="green")
  }




