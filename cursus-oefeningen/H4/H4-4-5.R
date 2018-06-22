#Oefening4.5
#bereken de kansen en ook telkens het gebied.
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
