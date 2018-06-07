#H5: De z-toets Template

#We hebben een steekproef met
n <- 30     #30 superhelden (steekproefgroote)
sm <- 3.483 #steekproefgemiddelde
s <- 0.55   #standaardafwijking
a <- 0.05   #significantieniveau (gekozen door de onderzoeker)
m0 <- 3.3   #hypothetisch populatiegemiddelde (H0)

#Kunnen we vanuit deze steekproef besluiten dat mu > 3.3?
#H0: mu = 3.3 -> nullhypothese, willen we ontkrachtten
#H1: mu > 3.3 -> alternatieve hypothese, willen we aantonen

#Methode 1: Overschrijdingskans
#Wat is de kans dat je in een steekproef het gegeven steekproefgemiddelde
#ziet? P(M < sm) in een verdeling M  ~ Nor(m0, s/sqrt(n))
p <- 1 - pnorm(sm, m0, s/sqrt(n)) #= 0.03419546

#De gevonden kans is bijzonder klein, kleiner dan het significantieniveau
if(p < a){
  print("H0 verwerpen")
}else{
  print("H0 niet verwerpen")
}

#Methode 2: Kritieke grensgebied

#Onder welke waarde kan je H0 niet verwerpen?
g <- m0 + qnorm(1-a) * s /sqrt(n)

#Als het gevonden steekproefgemiddelde niet onder g ligt, kan je H0 niet verwerpen
if(sm < g){
  print("H0 niet verwerpen")
}else {
  print("H0 verwerpen")
}

#plot van deze casus
#grenzen van de plot (x-waarden)
x <- seq(m0-4*s/sqrt(n), m0+4*s/sqrt(n), length=200)
#y-waarden (volgens de Gauss-curve)
dist <- dnorm(x, m0, s/sqrt(n))
plot(x, dist, type="l", ylab = "", xlab = "")

#toon het gevonden steekproefgemiddelde ahv rode verticale lijn 
abline(v=sm, col="red")
text(sm, 2, sm)

#het aanvaardingsgebied plotten
i<- x<=g #Waardenvanxlinksvang
polygon( #Plotdezewaardenopdegrafiek
  c(x[i],g,g),
  c(dist[i],dnorm(g,m0,s/sqrt(n)),0),
  col="lightgreen")
text(g,.5,signif(g,digits=4)) #Toongrenswaarde

text(m0,0.1,m0) #Hypothetisch populatiegemiddelde
abline(v=m0)    #Trekdaareenvertikalelijn

text(m0,1.5,"aanvaardingsgebied(H0)")
