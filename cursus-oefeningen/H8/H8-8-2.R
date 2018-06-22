#8.2
#csv file instellen
budget <- read.csv(file = "Budget.csv")

#deel 1
#we tonen dit nu per jaar, en de omzet per kwartaal
tijdsreeks <- ts(budget$Omzet,frequency = 4, start = c(1981,1))
tijdsreeks

#frequency is ook belangrijk, numbers of observations per unit of time
#frequeny = 1 (elke wordt gezien als een jaar), 12 = maand, 365 = dag , 4= kwartaal 

plot(tijdsreeks)
#de punten naast elkaar stijgen en dalen constant afwisselend. We kunnen dus nu bekijken welke exponentiele smoothing 

#install.packages("TTR")
library("TTR")
sma_4 <- SMA(tijdsreeks,4)
sma_12 <- SMA(tijdsreeks,12)
lines(sma_4,col="blue")
lines(sma_12,col="orange")


#Deel2(niet kunnen op examen)

regression <- lm(budget$Omzet ~ budget$Kwartaal)
plot(regression)


#deel 3
plot(tijdsreeks)
lines(sma_4,col="blue")
lines(sma_12,col="orange")
#install.packages("forecast")
library(forecast)
?forecast()
fc_4 <- forecast(sma_4,h=10)
fc_4
plot(fc_4)
fc_12 <- forecast(sma_12,h=10)
fc_12
plot(fc_12)
#deze plots zijn betrouwbaarheidsinterval

#deel 4
#plot, en sma weergeven. Neen , want dit wijkt veel te veel af van de werkelijkheid. 
#Dus we gaan exponentiele afvlakking om beter weer te geven

#deel 5
#decompose toon x, trend, seasonal; random
model <- decompose(tijdsreeks)
plot(model)
model

#deel 6 holtwinters is3 dubbele exponentiele smoothing(is gamma = 0,dan is het gewone dubbele exp smoothing)
hModel <- HoltWinters(tijdsreeks)
hModel
plot(hModel)

f10 <- forecast(hModel, h=20)
f10
plot(f10)

#gamma 0 en alpha 01
hModel <- HoltWinters(tijdsreeks,alpha = 0.1,gamma = 0)
hModel
plot(hModel)

