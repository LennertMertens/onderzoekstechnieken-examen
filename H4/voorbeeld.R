#H4: Steekproefonderzoek
#Voorbeeldcode
pnorm(x, m, s)  #Linkerstaartkans, P(X < x)
dnorm(x, m, s)  #Hoogte van de Gausscurve op punt x
qnorm(x, m, s)  #Onder welke grens zal p% van de waaremingen liggen?
rnorm(x, m, s)  #Genereer n normaal verdeelde random getallen

#Formule z-score: (S = stdev)
#   Z= (x-µ)/S



#Methode berekenen kansen met de normale verdeling
#1. Bepaal de kansvariabele met de bijhorende normale verdeling
#2. Bereken de z-scores bij de bijhorende x-waarde
#3. Schets de plaats van de gebraagde kans
#4. Herleid de gevraagde kans met behulp van de schets tot een linkerstaartkans en gebruik
#   de z-tabel van de standaardnormale verdeling om deze te bepalen. Gebruik indien nodig de 
#   symmetrieregel en de regel van 100% kans


#Voorbeelden Normale verdeling
#Hoe groot is de kans dat superman in minder dan 4ms reageert
#P(X<4) = P(Z< ...)
z <- (4-5)/1.5
z #opzoeken in tabel => P(Z < -0,67) = 0,2514

#Hoe groot is de kans dat superman in minder dan 7ms reageert
#P(X<7) = P(Z< ...)
z <- (7-5)/1.5
z #opzoeken in tabel => P(Z < 1,33) = 0,9082



#Hoe groot is de kans dat superman tussen de 2 en de 6,5 ms reageert
#P(2 < X < 7) = P(X < 6,5) - P(X < 2)
z1 <- (6.5-5)/1.5
z2 <- (2-5)/1.5
z1 #opzoeken in tabel => P(Z < 1) - P(Z < -2)= 0,8413 - 0,0228 = 0,8151
z2 #z1 = 1, z2 = -2
1 - pnorm(6.5, 5, 1.5)


qnorm(0.025)


#extra
x <- seq(from = -4,
         to = 4,
         length.out = 200)


y <- dnorm(x)
plot(x,y, type='l')
dnorm(0)


1 - pnorm(1.822)
qnorm(0.975)



