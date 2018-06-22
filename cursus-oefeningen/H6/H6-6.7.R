#1
f_cats <- cats[cats$Sex == 'F',]
m_cats <- cats[cats$Sex == 'M',]

# Female:
regr_f_Cats <- lm(f_cats$Bwt ~ f_cats$Hwt)

#plot(f_cats$Hwt, f_cats$Bwt)
#abline(regr_f_Cats, col = 'red')

# Male :
regr_m_Cats <- lm(m_cats$Bwt ~ m_cats$Hwt)

#plot(m_cats$Hwt, m_cats$Bwt)
#abline(regr_m_Cats, col = 'red')

# Samengestelde plot
plot(f_cats$Hwt, f_cats$Bwt, col = 'blue', xlab = 'Heart weight', ylab = 'Body wieght')
abline(regr_f_Cats, col = 'purple')

points(m_cats$Hwt, m_cats$Bwt, col = 'orange')
abline(regr_m_Cats, col = 'yellow')