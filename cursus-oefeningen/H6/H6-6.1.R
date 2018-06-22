#1 (Kruistabel)

data = read.csv(file = "MuziekWijn.csv", sep = ",", header = TRUE)
sn.tab <- table(data$Muziek, data$Wijn)


#2 (Marginalen)

margin.table(sn.tab, 1) # voor rijen
margin.table(sn.tab, 2) # voor kolommen


#3 (Verwachte totalen)

verwacht <- chisq.test(sn.tab) # (openklappen, hier zie je expected)

#4 

### UITWERKING DOOR Mr. Van Vreckem ###

# 1 
> table(data)
> tbl <- table(data)

# 2
> addmargins(tbl)

# 3
> row_sums <- rowSums(tbl)
> col_sums <- colSums(tbl)
> n <- sum(tbl)
> expected <- outer(row_sums, col_sums) / n

# 4
> chisq <- sum((tbl-expected)^2 / expected)

# 5
> k <- min(nrow(tbl), ncol(tbl))
> cramers_v <- sqrt(chisq / ((k - 1) * n))