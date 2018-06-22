#oef8.1
f <- function(a, b,t){
  return (a+b*sin((2*pi*4)/4) +b *cos((2*pi*4)/4)+ rnorm(1))
}
t <- seq( from = 1, to = 100, by=1)
X <- lapply(t, f,a=5,b=5)
plot(x=t, y=X , typle='l')
