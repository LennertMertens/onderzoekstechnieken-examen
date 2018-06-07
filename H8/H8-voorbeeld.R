#H8: Tijdsreeksen

#Voorbeeld kings
kings <- scan(file = "C:/Users/Lennert/onderzoekstechnieken-cursus/cursus/data/tijdreeksen/kings.data", skip = 3)
kingstimeseries <-  ts(kings)
plot.ts(kingstimeseries, ylab = "leeftijd", xlab = "tijd")
grid(lty = 2, lwd =1, col = "black")


#Voorbeeld jaarlijkse neerslag in Londen (in inches)
rain <-  scan(file = "C:/Users/Lennert/onderzoekstechnieken-cursus/cursus/data/tijdreeksen/precip.data", skip = 1)
rainseries <- ts(rain, start=c(1813))
plot.ts(rainseries)


