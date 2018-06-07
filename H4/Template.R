#H4: Template Dichtheid & Cumm. Waarschijnlijkheidscurve

# Bepaal de dichtheid en de cummulatieve waarschijnlijkheidscurve voor een 
# normale verdeling met een gemiddelde µ van 2,5 en een stdev (sigma) van 1,5
# Bepaal de oppervlakte onder de dichtheidscurve tussen x = 0.5 en x = 4.

population_mean <- 2.5
population_std <- 1.5
sd_to_fill <- 1
lower_bound <- 0.5
upper_bound <- 4

#grafische voorstelling
#grafisch want de curve is gevraagd
x <- seq(-4, 4, length = 1000) * population_std + population_mean
y <- dnorm(x, population_mean, population_std)
plot(x, y, type = "n", xlab = "Waarde", ylab = "Kans", main = "Oefening", axes = "false")
lines(x,y)
bounds_filter <- x >= lower_bound & x <= upper_bound
x_within_bounds <- x[bounds_filter]
y_within_bounds <- y[bounds_filter]
x_polygon <- c(lower_bound, x_within_bounds, upper_bound)
y_polygon <- c(0, y_within_bounds, 0)
polygon(x_polygon, y_polygon, col = "darkgreen")
sd_axis_bounds = 4
axis_bounds <- seq(-sd_axis_bounds * population_std + population_mean,
                   sd_axis_bounds * population_std + population_mean, by = population_std)
axis(side = 1, at = axis_bounds, pos = 0)
abline(v = population_mean, col = "red")
legend('topright', c("Gemiddelde", "Aanvaardingsgebied"), col=c('red','darkgreen'), bty = 'n', cex = 1, lty = 1)

# CUMMULATIEVE WAARSCHIJNLIJKHEIDSCURVE


#Controleren door berekening
pnorm(upper_bound, population_mean, population_std) - pnorm(lower_bound, population_mean, population_std)

