data <- read.csv(file = "Pizza.csv")

#1. Voer een volledige lineaire regressieanalyse uit op de variabelen Rating en CostPerSlice.
#Trek hieruit de juiste conclusies en ga deze ook grafisch na.
#2. Onderzoek een mogelijk verband tussen Rating en Neighbourhood. Welke methode kan je
#hiervoor gebruiken? Kan je de gegevens van Rating hiervoor in dezelfde vorm gebruiken?
#3. Geef een interpretatie aan deze resultaten.
#4. Stel de kruistabel grafisch voor met een staafdiagram. Voorzie een legende.

attach(data)
na.omit(data) #alle NA eruit halen
rating <- data$Rating
cost <- data$CostPerSlice

plot(cost,rating,main="RegressieRechte",xlab="Rating",ylab="CostPerSlice")

# lin regressie totaal nutteloos
regr <- lm(cost ~ rating)
abline(regr, col='red')
regr #intercept

#Corrolatie
#NA eruit halen
pearson <- cor(cost,rating,use = "complete.obs")
pearson

cor <- pearson^2
cor

# heel verspreide dataset, die weinig te maken heeft met lineair regressie. 
#We kunnen da toepassen maar zien dat het hier weinig zin heeft

# deel 2
neighborhood <- data$Neighborhood

plot(neighborhood,rating,use="complete.obs")
plot(rating,neighborhood)
# we kunnen geen pearson corollatie berekene, verbanden bepalen want neighbourhood is nominale , dus kan geen pearson toepassen 
factor <- cut(rating,breaks = 0:6) #(rating opdelen in 5 categrorien)
#kijken of er een significant verband is
chisq.test(neighborhood,factor)

# er is geen samenhang dus, rating en de neighbourhood. Dit is dus onafhankelijk

#Sterkte bepalen, heeft hier niet veel zin maar toch eens doen
#library lsr invoegen voor cramers v
library(lsr)
cramersV(neighborhood,factor)
