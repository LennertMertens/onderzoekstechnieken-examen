# Testen op normaliteit

Er zijn verschillende methoden die kunnen gebruikt worden om na te gaan of een steekproef uit een
normale verdeling komt.

1. Construeer een histogram voor de gegevens en bekijk de vorm van de grafiek. Als de
  gegevens bij benadering een normale verdeling hebben, zal de vorm van het histogram een
  klokcurve vormen.
2. Bereken de intervallen x+-s, x+-2s, x+-3s en bepaal het percentage meetwaarden dat binnen
  elk van deze intervallen valt. Als de gegevens ongeveer normaal verdeeld zijn, zullen de
  percentages ongeveer gelijk zijn aan respectievelijk 68%, 95% en 99,7%.
3. Construeer een QQ-plot (normaliteitsplot, zie Definitie 4.4.1) voor de gegevens. Als de
  gegevens ongeveer normaal verdeeld zijn, zullen de punten ongeveer op een rechte lijn liggen.
4. Bereken de kurtosis (“welving” of “platheid”): duidt aan hoe scherp de “piek” van de
  verdeling is.
  • Een normale verdeling heeft een kurtosis = 0
  • Een vlakke distributie heeft een negatieve kurtosis
  • Een eerder piekvormige distributie heeft een positieve kurtosis
  • Let op: bij de originele definitie van kurtosis (zoek die eens op!) heeft de normale
  verdeling een kurtosis van 3. Wij gebruiken hier een alternatieve definitie, meestal de
  “excess kurtosis” genoemd, waar men 3 aftrekt van de originele waarde, zodat je op 0
  uitkomt.
5. Berken de Skewness (scheefheid): duidt aan hoe symmetrisch de data is.
  • Een symmetrische distributie heeft een skewness = 0
  • Bijgevolg: een normale verdeling heeft een skewness = 0.
  • Een distributie met een lange linkerstaart heeft een negatieve skewness
  • Een distributie met een lange rechterstaart heeft een positieve skewness
  • Vuistregel: absolute waarde van skewness > 1, geen symmetrische distributie.
  
[QQ-plot in R](QQ-plot.R)
