# 1
data <- read.csv(file = "MuziekWijn.csv", header = TRUE, sep = ";")
filter <- subset(data, data$Muziek == "Geen")
percentages <- (table(filter) / 84)*100
barplot(percentages)

#2
percentages <- (table(data) / 243) * 100
barplot(percentages, beside = TRUE, legend = TRUE)

#3
barplot(percentages, legend = TRUE)