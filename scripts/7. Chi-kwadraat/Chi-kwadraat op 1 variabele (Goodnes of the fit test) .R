# Clearen: plot, console, environment
rm(list=ls())
cat("\014")
dev.off()
library(lsr)

# ========================= chi-kwadraat op 1 variabele (Goodnes of the fit test) ==========================

# --------------------------------------------- Input Gegevens ---------------------------------------------

observed = c(127,75,98,27,73)

expected = c(35,17,23,8,17)                  #in procent!

alpha = 0.05

# ---------------------------------------------- Berekeningen ----------------------------------------------

df = length(observed) - 1

e = expected/100 * sum(observed) # 'e'
kol4 = observed - e  #'o - e'
kol5 = round((observed - e)^2/e,2)  
n=sum(observed)
expected_p = expected/100
residuals = chisq.test(observed, p = expected_p)$residuals



# tabel maken
tabel <- data.frame(observed,expected,e,kol4,kol5,residuals)
colnames(tabel) = c('observed', 'Populatie (%)', 'e', 'o - e', '(o-e)^2/e','Residuals')
tabel 

#chi-kwadraat
print('chi-kwadraat')
chiKw = sum(kol5)
chiKw

#grenswaarde
print('g-waarde')
g = qchisq(1-alpha, df)
g

#p-waarde
print('p-waarde')
1-pchisq(chiKw,df)

#grafiek plotten
g <- qchisq(p = 1 - alpha, df)

# Plot the chi-squared density function
x <- seq(0, g*1.5, length = 1000)
dist <- dchisq(x, df)
plot (x, dist, type = 'l', xlab = '', ylab = '')

# The acceptance region (where H_0 is accepted)
i <- x <= g
polygon(c(x[i],    g,                     g),
        c(dist[i], dchisq(g, df), 0),
        col = 'lightgreen')

text(x = g, y = dchisq(g, df)/2, paste('g = ', round(g, digits=2)))

# The test statistic (chi squared)
abline(v = chiKw, col = 'red')
text(x = chiKw, y = mean(dist), paste('chi^2 = ', round(chiKw, digits=2)))

## uitleg bij de grafiek.
title(main="Chi^2-test")

chi = chisq.test(observed, p = expected_p)

chi$statistic[1]


if(chiKw > g){
  title(sub="Verwerpen!", col.sub="red")
  print('H0 verwerpen!: steekproef is niet representatief')
  print(paste('Chi kwadraat (',round(chi$statistic[1],2), ') > grens (',round(g,3),')'))
  print(paste('p-value (',round(chi$p.value,3), ') < alpha (',round(alpha,3), ')'));
}else{
  title(sub="Aanvaarden", col.sub="green")
  print('H0 aanvaarden!: steekproef is representatief')
  print(paste('Chi kwadraat (',round(chi$statistic[1],3), ') < grens (',round(g,3),')'))
  print(paste('p-value (',round(chi$p.value,3), ') > alpha (',round(alpha,3), ')'));
}


chisq.test(observed, p = expected_p)



