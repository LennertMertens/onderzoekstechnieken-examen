#H4: Oefeningen
#https://meredithfranklin.github.io/R-Probability-Distributions.html

#-----Oefening 4.1-----
#Een onderzoeker wil zo correct mogelijk de consumptiegewoontes van de inwo- 
#ners van 18 jaar en ouder in een bepaalde gemeente, met 3 woonkernen, onderzoeken. 
#Hij onderscheidt 4 leeftijdsgroepen zodat hij uiteindelijk aan 12 deelgroepen komt. 
#Hij vraagt de procentuele samenstelling van de bevolking op in de gemeente en berekent 
#daaruit hoeveel bevragingen hij per deelgroep moet uitvoeren. Dit noemen we een 
#quotasteekproef. Vragen: 
#a. Wat zijn de voor- en nadelen? 
#    Voordelen : Je garandeert een minimum aan representativiteit, elke subgroep komt aan bod.
#    Nadelen : Er is enkel een schijn van representativiteit, kan tijdsrovend en duur zijn.
  
#  b. Welke soort fouten kunnen hier gemaakt worden? 
#B. Toevallige niet-steekproeffouten
#  c. Welke andere parameters zouden kunnen gebruikt worden bij het opsplitsen in deelgroepen?
#C. Man & Vrouw opsplitsen + Gewicht van persoon

#----------------------

#-----Oefening 4.5-----
pnorm(1.33)                                           # P(Z<1.33)
#de dan of gelijk aan speelt hier geen rol want dat is zogezegd de lijn heeft een oppervlakte van 0.
1-pnorm(1.33)                                         # P(Z>1.33)          
pnorm(-1.33)                                          # P(Z< - 1.33)
1-pnorm(-1.33)                                        # P(Z> -1.33)
pnorm(0.45)                                           # P(Z<0.45)
1-pnorm(-1.05)                                        # P(Z> -1.05)
pnorm(0.65)                                           # P(Z<0.65)
pnorm(1.2)-pnorm(-0.45)                               # P(-0.45 < Z < 1.20)
pnorm(-0.10)-pnorm(-1.35)                             # P(-1.35 < Z < 0.10)
pnorm(-0.90)-pnorm(-2.10)                             # P(-2.10 < Z < 0.90)
#----------------------

#-----Oefening 4.6-----
#Bepaal de dichtheid en de cumulatieve waarschijnlijkheidscurve voor een normale 
#verdeling met een gemiddelde m van 2,5 en s=1.5.
#Bepaal de oppervlakte voor het gebied onder de dichtheidscurve tussen x=0.5 en x=4.
#Controleer uw antwoord door de berekening te doen.

pnorm(4, 2.5,1.5)-pnorm(0.5, 2.5, 1.5)

#grafische voorstelling
#grafisch want de curve is gevraagd
x <- seq(from = 0 , to = 4, by = 0.1)
x
numbers <- pnorm(x, mean = 2.5, sd = 1.5)
numbers
plot(numbers)
hist(numbers)
numbers <- dnorm(x, mean = 2.5, sd = 1.5)
plot(numbers)
#----------------------

#-----Oefening 4.7-----
? pt()
x <- 1000
pt(x,3)


#plot normal distribution
x <- seq(-4,4,0.01)
# Plot Normal Distribution
curve(dt(x, 3), from = -5, to = 5, col = "orange", 
      xlab = "quantile", ylab = "density", lwd = 2)
#----------------------

#-----Oefening 4.8-----
#met een n=25
# eigenschappen verdeling
m <- 0
s <- 1

# theoretische dichtheidscurve
x <- seq(from = m-4*s, 
         to = m+4*s, 
         length.out = 200)
#bereken de dichtheidsfunctie
y <- dnorm(x,m,s)

# observaties
observations <- rnorm(25,m,s)

m_o <- mean(observations)	# steekproefgemiddelde
s_o <- sd(observations)	# steekproef stdev
y_o <- dnorm(x, mean = m_o, sd = s_o)	# gemeten dichtheidscurve

# plot
hist(observations, freq = FALSE, probability = TRUE) # historgram
lines(x,y, col = 'blue') # theoretisch
lines(x, y_o, col = 'orange') # schatting (uit steekproef)

#met een n=100
# eigenschappen verdeling
m <- 0
s <- 1

# theoretische dichtheidscurve
x <- seq(from = m-4*s, 
         to = m+4*s, 
         length.out = 200)
#bereken de dichtheidsfunctie
y <- dnorm(x,m,s)

# observaties
observations <- rnorm(100,m,s)

m_o <- mean(observations)	# steekproefgemiddelde
s_o <- sd(observations)	# steekproef stdev
y_o <- dnorm(x, mean = m_o, sd = s_o)	# gemeten dichtheidscurve

# plot
hist(observations, freq = FALSE) # historgram
lines(x,y, col = 'blue') # theoretisch
lines(x, y_o, col = 'orange') # schatting (uit steekproef)

#met een n=500
# eigenschappen verdeling
m <- 0
s <- 1

# theoretische dichtheidscurve
x <- seq(from = m-4*s, 
         to = m+4*s, 
         length.out = 200)
#bereken de dichtheidsfunctie
y <- dnorm(x,m,s)

# observaties
observations <- rnorm(500,m,s)

m_o <- mean(observations)	# steekproefgemiddelde
s_o <- sd(observations)	# steekproef stdev
y_o <- dnorm(x, mean = m_o, sd = s_o)	# gemeten dichtheidscurve

# plot
hist(observations, freq = FALSE) # historgram
lines(x,y, col = 'blue') # theoretisch
lines(x, y_o, col = 'orange') # schatting (uit steekproef)
#----------------------


#-----Oefening 4.9-----
#In de Hogeschool zijn er twee klassen voor het vak onderzoekstechnieken.
#Destudenten werden willekeurig over de klassen verdeeld, zodat we mogen veronderstellen dat deene klas niet slimmer is dan de andere.
#In de A-klas geeft mevr. X les, in de B-klas geeft mr. Yles.
#X is nogal streng en op het einde van het schooljaar behaalt haar klas een gemiddelde van54 op 100 met een standaardafwijking van 11.
#Y is iets losser en stimuleert de leerlingen al gauw met een puntje meer.
#Op het einde van hetschooljaar behaalt zijn klas een gemiddelde van 62 op 100 en een standaardafwijking van 7.

#Wouter zit in de A-klas en heeft 63/100voor wiskunde.
#Stijn zit in de B-klas en behaalt 67/100.
#Wie heeft volgens jou het beste gescoord?

#je moet de Z-Scores berekenen
zx<-(0.63-0.54)/11
zy<-(0.67-0.62)/7
#Wouter dus. (zx)
#Of met de pnorm kan je tot dezelfde conclusie komen
#4.9
#Les 28/03/2018
pnorm(0.63, 0.54, 0.11)
pnorm(0.67, 0.62, 0.07)
#----------------------


#-----Oefening 4.13-----

#gegevens
c <- c(11.5 ,16.5 ,11, 17.3, 10.8, 5.6, 13.1, 11.5, 14.2, 12.9, 8.7, 9.2, 15, 14.4, 10, 10.3, 18.3, 12.9, 14.2, 8.7)
#tussenberekening
b <- mean(c)
l <-length(c)

#a
a <- 2.45/sqrt(length(c))

#b

error <- qt(0.92 + 0.04, df=l-1)*2.45/sqrt(length(c))
#Kleine steekproef = volgens student qt verdeling

links <- b - error
rechts <- b + error

#prints
links
rechts


#c 
#p(M < 12.5) = pnorm(12.15,mean=12.305, sd(2.45)/sqrt(20))
pnorm(12.5, b, a)

#Juiste antwoorden
#a) 0.5478...
#b) [11,2918; 13,3182]
#c) P(M<12,5) =+- 63,71%  
#-----------------------

#-----Oefening 4.16-----

#n = steekproefgroote
#k = aantal successen
#verwachte resultaten
# n= 44640

n <- 60 *24 * 31
k <- n - 1
p <- k/n
q <- 1-p

# nog niet volledig
#nog berekenen
# p(Pniet < 0.99999)
# linkerstaartkans berekenen 
#-----------------------