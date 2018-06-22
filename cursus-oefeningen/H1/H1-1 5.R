#Genereer een vector waar een voornaam en een achternaam in komen. Benoem ook de naam van de kolommen. Geef daarna ook voornaam terug van het eerste element van dearray.

n <- c(1,2) # maakt kolom met een 1 en een 2
a <- factor(c("robin","kenneth")) # maakt een kolom met een factor met de strings robin en kenneth
b <- c("de cock","de cock") # maakt een kolom zonder een factor met de string de cock
ve<- data.frame(nummer = n,  #naam van de kollom is nummer met een variable n, daar na de naam voornaam en daarna de naam achternaam met bij bijhoorde data
                voornaam = a,
                achternaam = b)

ve$voornaam #geef alle voornamen terug
ve$voornaam[1] #geeft enkel de eerste voornaam terug

#extra

summary(ve) #samenvattig
