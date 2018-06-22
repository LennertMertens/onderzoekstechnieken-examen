#1
cats <- read.csv...

regr_Cats <- lm(cats$Bwt ~ cats$Hwt)

plot(cats$Hwt, cats$Bwt)
abline(regr_Cats, col = 'red')

cov(x = cats$Hwt, y = cats$Bwt)
R <- cor(x = cats$Hwt, y = cats$Bwt)
R^2
