# Oef 4.13

#gegevens
c <- c(11.5 ,16.5 ,11, 17.3, 10.8, 5.6, 13.1, 11.5, 14.2, 12.9, 8.7, 9.2, 15, 14.4, 10, 10.3, 18.3, 12.9, 14.2, 8.7)
#tussenberekening
b <- mean(c)
l <-length(c)

#a
a <- 2.45/sqrt(length(c))

#b

error <- qt(0.92 + 0.04, df=l-1)*2.45/sqrt(length(c))
#Kleine steekproef = volgens student qt verdeling
  
links <- b - error
rechts <- b + error

#prints
links
rechts


#c 
#p(M < 12.5) = pnorm(12.5,mean=12.305, 2.45/sqrt(20))
pnorm(12.5, b, a)

#Juiste antwoorden
#a) 0.5478...
#b) [11,2918; 13,3182]
#c) P(M<12,5) =+- 63,90%  
