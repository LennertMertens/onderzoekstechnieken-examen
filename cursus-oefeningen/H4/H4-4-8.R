#Oefening4.8
#met een n=25
# eigenschappen verdeling
m <- 0
s <- 1

# theoretische dichtheidscurve
x <- seq(from = m-4*s, 
         to = m+4*s, 
         length.out = 200)
#bereken de dichtheidsfunctie
y <- dnorm(x,m,s)

# observaties
observations <- rnorm(25,m,s)

m_o <- mean(observations)	# steekproefgemiddelde
s_o <- sd(observations)	# steekproef stdev
y_o <- dnorm(x, mean = m_o, sd = s_o)	# gemeten dichtheidscurve

# plot
hist(observations, freq = FALSE) # historgram
lines(x,y, col = 'blue') # theoretisch
lines(x, y_o, col = 'orange') # schatting (uit steekproef)

#met een n=100
# eigenschappen verdeling
m <- 0
s <- 1

# theoretische dichtheidscurve
x <- seq(from = m-4*s, 
         to = m+4*s, 
         length.out = 200)
#bereken de dichtheidsfunctie
y <- dnorm(x,m,s)

# observaties
observations <- rnorm(100,m,s)

m_o <- mean(observations)	# steekproefgemiddelde
s_o <- sd(observations)	# steekproef stdev
y_o <- dnorm(x, mean = m_o, sd = s_o)	# gemeten dichtheidscurve

# plot
hist(observations, freq = FALSE) # historgram
lines(x,y, col = 'blue') # theoretisch
lines(x, y_o, col = 'orange') # schatting (uit steekproef)

#met een n=500
# eigenschappen verdeling
m <- 0
s <- 1

# theoretische dichtheidscurve
x <- seq(from = m-4*s, 
         to = m+4*s, 
         length.out = 200)
#bereken de dichtheidsfunctie
y <- dnorm(x,m,s)

# observaties
observations <- rnorm(500,m,s)

m_o <- mean(observations)	# steekproefgemiddelde
s_o <- sd(observations)	# steekproef stdev
y_o <- dnorm(x, mean = m_o, sd = s_o)	# gemeten dichtheidscurve

# plot
hist(observations, freq = FALSE) # historgram
lines(x,y, col = 'blue') # theoretisch
lines(x, y_o, col = 'orange') # schatting (uit steekproef)
