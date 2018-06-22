#Oefening 3.9
setwd("C:/Users/Lennert/onderzoekstechnieken-cursus/oefeningen/data/hfst3_1variabele")
android_cpu <- read.csv("android_persistence_cpu.csv", sep=";", dec=",")
attach(android_cpu)

hist(android_cpu$Tijd)
boxplot(android_cpu$Tijd)
