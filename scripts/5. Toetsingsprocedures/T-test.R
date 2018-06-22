# Clearen: plot, console, environment
rm(list=ls())
cat("\014")
dev.off()
library(lsr)

# ================================================= T-test# ================================================

# --------------------------------------------- Input Gegevens ---------------------------------------------
# indien n > 30 --> z-toets!
n = 20
steekproefGem = 3.483
standaardafwijking = 0.55  # van de steekproef!!! Dus s en niet σ !!!
alpha = 0.05
populatieGem =  3.3

# alternatief gem. <> populatiegem  --> soort = '<>'
soort = ''

# ---------------------------------------------- Berekeningen ----------------------------------------------
if(!soort == '<>'){
  
  ## eenzijdig rechts
  if(steekproefGem > populatieGem){
    print("eenzijdig rechts")
    # ---------------- Kritieke grensgebied ---------------
    
    z = qt(1-alpha,df=n-1)
    
    g = populatieGem + z* (standaardafwijking / sqrt(n))
    
    
    if(steekproefGem < g ){
      print("H0 niet verwerpen!")
      print(paste("Steekproefgemiddelde (",steekproefGem,") < g (",g,") -> Steekproefgemiddelde ligt NIET in verwerpingsgebied"))
      verwerpenKritiekgeb = FALSE;
    }else{
      print("H0 verwerpen!")
      print(paste("Steekproefgemiddelde (",steekproefGem,") > g (",g,") -> Steekproefgemiddelde ligt in verwerpingsgebied"))
      verwerpenKritiekgeb = TRUE;
    }
    
    # ----------- Overschrijdingskans (p-value) -----------
    
    p <- 1 - pt((steekproefGem - populatieGem) / (standaardafwijking/sqrt(n)), df = n-1)
    
    if(p < alpha){
      print("H0 verwerpen!")
      print(paste("p-waarde (",p,") < significantieniveau (α)! (",alpha,")"))
      verwerpenPWaarde= TRUE;
      
    }else{
      print("H0 niet verwerpen!")
      print(paste("p-waarde (",p,") > significantieniveau (α)! (",alpha,")"))
      verwerpenPWaarde= FALSE;
    }
    
    # -------------- Plotten van de gegevens --------------
    x <- seq(populatieGem-4*standaardafwijking/sqrt(n), populatieGem+4*standaardafwijking/sqrt(n), length=200)
    dist <- dt((x - populatieGem)/(standaardafwijking/sqrt(n)), df = n-1) * standaardafwijking/sqrt(n)
    plot (x, dist, type = 'l', xlab = '', ylab = '')
    i <- x <= g
    dg <- dt((g- populatieGem)/(standaardafwijking/sqrt(n)),df=n-1) * standaardafwijking/sqrt(n)
    polygon(c(x[i], g, g),c(dist[i], dg, 0), col = 'lightgreen')
    abline(v=steekproefGem, col='red') 
    text(steekproefGem, mean(dist)*1.5, steekproefGem)
    text(g,mean(dist)*0.5,signif(g, digits=4))
    text (populatieGem, mean(dist) , populatieGem)
    abline(v=populatieGem)
  }
  
  ##eenzijdig links
  if(steekproefGem < populatieGem){
    print("eenzijdig links")
    # ---------------- Kritieke grensgebied ---------------
    
    z = qt(1-alpha,df=n-1)
    
    
    g = populatieGem - z * (standaardafwijking / sqrt(n))
    
    if(steekproefGem > g ){
      print("H0 niet verwerpen!")
      print(paste("Steekproefgemiddelde (",steekproefGem,") > g (",g,") -> Steekproefgemiddelde ligt NIET in verwerpingsgebied"))
      verwerpenKritiekgeb = FALSE;
    }else{
      print("H0 verwerpen!")
      print(paste("Steekproefgemiddelde (",steekproefGem,") < g (",g,") -> Steekproefgemiddelde ligt in verwerpingsgebied"))
      verwerpenKritiekgeb = TRUE;
    }
    
    # ----------- Overschrijdingskans (p-value) -----------
    
    p = pt((steekproefGem - populatieGem) / (standaardafwijking/sqrt(n)), df = n-1)
    
    if(p < alpha){
      print("H0 verwerpen!")
      print(paste("p-waarde (",p,") < significantieniveau (α)! (",alpha,")"))
      verwerpenPWaarde= TRUE;
    }else{
      print("H0 niet verwerpen!")
      print(paste("p-waarde (",p,") > significantieniveau (α)! (",alpha,")"))
      verwerpenPWaarde= FALSE;
    }
    
    # -------------- Plotten van de gegevens --------------
    x <- seq(populatieGem-4*standaardafwijking/sqrt(n), populatieGem+4*standaardafwijking/sqrt(n), length=200)
    dist <- dt((x - populatieGem)/(standaardafwijking/sqrt(n)), df = n-1) * standaardafwijking/sqrt(n)
    plot (x, dist, type = 'l', xlab = '', ylab = '')
    i <- x >= g
    dg <- dt((g- populatieGem)/(standaardafwijking/sqrt(n)),df=n-1) * standaardafwijking/sqrt(n)
    polygon(c(g,x[i]),c(0,dist[i]), col = 'lightgreen')
    abline(v=steekproefGem, col='red') 
    text(steekproefGem, mean(dist)*1.5, steekproefGem)
    text(g,mean(dist)*0.5,signif(g, digits=4))
    text (populatieGem, mean(dist) , populatieGem)
    abline(v=populatieGem)
  }
  
  
  ## tweezijdig 
}else{
  # ---------------- Kritieke grensgebied ---------------
  print("Tweezijdig")
  z = qt(1-alpha/2,df = n-1)
  
  g1 = populatieGem - z * (standaardafwijking / sqrt(n))
  g2 = populatieGem + z * (standaardafwijking / sqrt(n))
  
  if(steekproefGem < g2  & steekproefGem > g1 ){
    print("H0 niet verwerpen!")
    print(paste("g1 (" ,g1,") <  steekproefgemiddelde (",steekproefGem,") < g2 (",g2,") -> Steekproefgemiddelde ligt NIET in verwerpingsgebied"))
    verwerpenKritiekgeb = FALSE;
  }else{
    print("H0 verwerpen!")
    print("Steekproefgemiddelde ligt niet tussen g1 en g2")
    verwerpenKritiekgeb = TRUE;
  }
  
  # ----------- Overschrijdingskans (p-value) -----------
  
  if(steekproefGem < populatieGem){
    p = pt((steekproefGem - populatieGem) / (standaardafwijking/sqrt(n)), df = n-1)
  }else{
    p = 1 - pt((steekproefGem - populatieGem) / (standaardafwijking/sqrt(n)), df = n-1)
  }
  
  
  if(p < alpha/2){
    print("H0 verwerpen!")
    print(paste("p-waarde (",p,") < significantieniveau (α)! (",alpha,")"))
    verwerpenPWaarde = TRUE;
  }else{
    print("H0 niet verwerpen!")
    print(paste("p-waarde (",p,") > significantieniveau (α)! (",alpha,")"))
    verwerpenPWaarde = FALSE;
  }
  
  # -------------- Plotten van de gegevens --------------
  x = seq(populatieGem-4*standaardafwijking/sqrt(n), populatieGem+4*standaardafwijking/sqrt(n), length=200)
  dist = dnorm(x, populatieGem, standaardafwijking/sqrt(n))
  plot (x, dist, type = 'l', xlab = '', ylab = '')
  title(main="T-test")
  i <- x <= g2 & x >= g1
  
  polygon(c(g1,x[i], g2),c(0,dist[i],0), col = 'lightgreen')
  abline(v=steekproefGem, col='red') 
  text(steekproefGem, mean(dist)*1.5, steekproefGem)
  text(g1,mean(dist)*0.5,signif(g1, digits=4))
  text(g2,mean(dist)*0.5,signif(g2, digits=4))
  text (populatieGem, mean(dist) , populatieGem)
  abline(v=populatieGem)
}

## uitleg bij de grafiek.
title(main="T-test")
if( verwerpenKritiekgeb != verwerpenPWaarde ){
  title(sub="ERROR", col.sub="red")
}else{
  if(verwerpenKritiekgeb){
    title(sub="H0 verwerpen!", col.sub="red")
  }else{
    title(sub="H0 niet verwerpen!", col.sub="green")
  }
}