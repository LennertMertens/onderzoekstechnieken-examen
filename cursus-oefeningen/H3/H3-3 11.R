android_cpu <- read.csv(file = "android_persistence_cpu.csv" , #dataset uitlezen
      sep = ";",                        #splitst op de ;
      dec = ',')                        #doet iets random en geen idee wat eigenlijk

hist(android_cpu$Tijd,                  #maakt een histogram van de data android_cpu en de tabel tijd
     main="Verdeling van de tijd",      #zet verdeling van de tijd als title
     xlab = "gemeten cpu tijd",         #zet als x as titel gemeten cpu tijd
     breaks = 2)                        #hoe hoger hoe meer data dat word getoont 
     
     
#hoe hoger de break hoe perfomanter het beeld van de data
