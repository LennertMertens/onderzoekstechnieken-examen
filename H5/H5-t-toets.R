#H5: t-Toets

#We hebben een steekproef met
n <- 25     #steekproefgrootte
sm <- 3.483 #steekproefgemiddelde?
ss <- 0.55  #standaardafwijking van de steekproef
a <- 0.05   #significantieniveau
m0 <- 3.3   #hypothetisch populatiegemiddelde(H0)


#Kunnen we vanuit deze steekproef besluiten dat mu > 3.3?
#H0: mu = 3.3 -> nullhypothese, willen we ontkrachtten
#H1: mu > 3.3 -> alternatieve hypothese, willen we aantonen

#Methode 1: Kritieke grensgebied
#onder welke waarde kan je H0 niet verwerpen?
g <- m0 + qt(1-a, df=n-1) * ss /sqrt(n)

#Als het gevonden steekproefgemiddelde ondr g lift, kan je HO niet verwerpen
if(sm < g){
  print("H0 verwerpen")
}else{
  print("H0 niet verwerpen")
}

#Methode 2: Overschrijdingskans
#Wat is de kans dat je in een steekproef het gegeven steekproefgemiddelde ziet?
#P(M > sm) in een verdelig M ~ T(m0, ss/sqrt(n), df=n-1)
p <- 1 - pt((sm-m0)/(ss/sqrt(n)), df=n-1)


#De gevonden kans is bijzondr klein, kleiner dan het significantieniveau
if(p < a){
  print("H0 niet verwerpen")
}else {
  print("H0 verwerpen")
}

#plot van deze casus
#grenzen van de plot (x-waarden)
x <- seq(m0-4*ss/sqrt(n), m0+4*ss/sqrt(n), length=200)
#y-waarden (volgens de Gauss-curve)
dist <- dt((x-m0)/(ss/sqrt(n)), df= n-1) * ss/sqrt(n)
plot(x, dist, type="l", ylab = "", xlab = "")

#het aanvaardingsgebied plotten
i<- x<=g #Waardenvanxlinksvang
polygon( #Plotdezewaardenopdegrafiek
  c(x[i],g,g),
  c(dist[i],dt((g-m0)/(ss/sqrt(n)), df=n-1), 0),
  col="lightgreen")

text(g+.25,.02,signif(g,digits=4)) #Toongrenswaarde

#Toon het gevonden steekproefgemiddelde aan de hand van rode verticale streep
abline(v=sm, col="red")

text(sm-.25, .005, sm, col="red")

text(m0,0.02,"aanvaardingsgebied(H0)")
