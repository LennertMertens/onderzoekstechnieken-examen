wages <- read.csv("wages.csv")
View(wages)
#vraag1
wages$OCCUPATION
#Nominaal

wages$EXPERIENCE
#Interval (nog eens vragen aan Jati)

wages$WAGE
#ratio

#vraag 2 
#a
mean(wages$AGE)

#b
wages$SECTOR

#functie 
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
#berekening
getmode(wages$SECTOR)
#antwoor 0

#c
quantile(wages$EDUCATION)
#OF
summary(wages$EDUCATION)

#d
round(sd(wages$EXPERIENCE),3)
#12.38

#vraag 3
#a
# niet helemaal zeker
#H0: Er is geen significant verschil. H0: µ=8.67 De steekproef geeft aanleiding om te geloven dat de lonen significant gestegen zijn.
#H1: Er is een significant verschil . H1: µ>8.67

#b
#t test
#ALLES HERBEREKENEN WANT MENEER WAS FOUT

#c
# gemiddelde van de steekproef : 9.02 (mean(wages$WAGE))

#d
1 - pnorm(mean=8.67,sd=sd2,q=mean)
#e
g <- qnorm(mean=8.67,sd =sd2 , p=0.95)



n <- length(wages$WAGE)
mean <- mean(wages$WAGE)
sd <- sd(wages$WAGE)
sd2 = sd/sqrt(n)
g <- qnorm(mean=8.67,sd =sd2 , p=0.95)
g
t.test(wages$WAGE)
#f 
#best de grafiek tonen
#we verwerpen de nulhypothese niet, we hebben geen significant bewijs om te kunnen zeggen dat de lonen significant gestegen zijn


#vraag 4
l <- lm(wages$AGE~wages$WAGE)
plot(wages$AGE~wages$WAGE)
abline(l,col="red")
#Covariantie
cov <- cov(wages$AGE,wages$WAGE)
cov
#Pearson
pear <- cov/( sd(wages$AGE) * sd(wages$WAGE))
pear

#neen, de pearson is 0.1. Er is geen lin samenhang
