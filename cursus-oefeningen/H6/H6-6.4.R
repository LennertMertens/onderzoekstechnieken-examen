#oef 6.4
setwd("C:/Users/Lennert/Desktop/ozt-scripts-master")
data <- read.csv("dataset_reeks2.csv")
testx <- data$Ancienniteit
testY <- data$Jaarsalaris
plot(testx,testY)
#nu kan je vastellen dat het in de buurt van een lineare vorm is, dus we kunnen lineaire reg tekenen

lineairmodel <- lm(testY ~testx)
abline(lineairmodel, col="red")
#beta0 en beta 1
#beta0 is intercept (snijpunt y-as)
#beta 1 is rico
lineairmodel$coefficients
#extra leuke plotjes
plot(lineairmodel)

#histogram
hist(lineairmodel$residuals)

cor(testY,testx)

#determinatiecoefficient 
cor(testY,testx)^2
# dit bepaalt het aandel van de variatie rond de regressie rechte, gegeven wordt door je regressie zelf. De rest is random. je wil een zo hoog mogelijke getal
# tussen 0 en 1. 


length(data$Jaarsalaris)
mm <- data$Jaarsalaris[data$Geslacht=='M']
mm
mv <- data$Jaarsalaris[data$Geslacht=='V']
mv
mean(mm)
