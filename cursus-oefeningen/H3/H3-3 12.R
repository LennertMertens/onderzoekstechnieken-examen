android_cpu <- read.csv(file = "android_persistence_cpu.csv" , sep = ";", dec = ',') #dataset uit vorige oefiningen

boxplot(android_cpu$Tijd~android_cpu$Datahoeveelheid,           #de data van de tijd, wordt gecombineerd met de hoeveelheid
     main="Verdeling van de tijd",                          
     ylab = "Tijd in ms",
     horizontal = 1)                                            #zet de boxplot horizontal
