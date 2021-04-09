# Use Variability_  files for these figures 



# See what the variability plot looks like just for invasive snails
# so we will just use data_invas for now




# Growth Rate 
data <- Varability_Growth

data_invas <- data[1:93, ]
data_nativ <- data[94:710, ]



# The factors (i.e. population and levels)
par(mfrow = c(3,1))
pops <- factor(data_invas$Population)
nLevFactor <- length(levels(pops))

non <- is.na(data_invas$Familymeans_growth)
y <- data_invas$Familymeans_growth[!non]
Factor <- pops[!non]
FactorMeans <- tapply(y, Factor, mean)
xMaxPlot <- max(y) + 0.25 * (max(y) - min(y))

pdf("Invasive_growth_variability", width=12)

# vertical axis "2" position - family
# vertical axis "3" position - population
par(mar = c(5, 5, 4, 2) + 0.1)
plot(c(min(y), xMaxPlot), c(1.75, 3.25),
     xlab="Growth/day until 3 mm", ylab="",
     axes=FALSE, type="n")
legend(max(y) + 0.05 * (max(y) - min(y)), 3, levels(Factor),
       col = 1 : nLevFactor, pch = 1 : nLevFactor,
       lty = 1, bty = "n", cex = .75)
axis(2,at=2:3,c("Family", "Population"),las=2)
axis(1)
box()
points(FactorMeans, rep(3, length(FactorMeans)),
       pch = 1 : nLevFactor, col = 1 : nLevFactor)
iter=1
for (i in levels(Factor)){
    y.factor <- y[Factor == i]
    # loop through levels inside each factor
    for (j in 1 : length(y.factor)){
        lines(c(y.factor[j], FactorMeans[i]), c(2, 3), col = iter)
    }
    iter=iter+1
}
title("Growth Rate Variability: Family nested in Population")

dev.off()

# AGE

data <- Varability_Age

data_invas <- data[1:93, ]
data_nativ <- data[94:693, ]

# The factors (i.e. population and levels)
par(mfrow = c(3,1))
pops <- factor(data_invas$Population)
nLevFactor <- length(levels(pops))


non <- is.na(data_invas$Familymeans_age)
y <- data_invas$Familymeans_age[!non]
Factor <- pops[!non]
FactorMeans <- tapply(y, Factor, mean)
xMaxPlot <- max(y) + 0.25 * (max(y) - min(y))

pdf("Invasive_age_varability", width = 12)

# vertical axis "2" position - family
# vertical axis "3" position - population
par(mar = c(5, 5, 4, 2) + 0.1)
plot(c(min(y), xMaxPlot), c(1.75, 3.25),
     xlab="Days until reproductive maturity", ylab="",
     axes=FALSE, type="n")
legend(max(y) + 0.05 * (max(y) - min(y)), 3, levels(Factor),
       col = 1 : nLevFactor, pch = 1 : nLevFactor,
       lty = 1, bty = "n", cex = .75)
axis(2,at=2:3,c("Family", "Population"),las=2)
axis(1)
box()
points(FactorMeans, rep(3, length(FactorMeans)),
       pch = 1 : nLevFactor, col = 1 : nLevFactor)
iter=1
for (i in levels(Factor)){
    y.factor <- y[Factor == i]
    # loop through levels inside each factor
    for (j in 1 : length(y.factor)){
        lines(c(y.factor[j], FactorMeans[i]), c(2, 3), col = iter)
    }
    iter=iter+1
}
title("Age at Maturity Variability: Family nested in Population")

dev.off()

# Length
data <- Varability_Length

data_invas <- data[1:93, ]
data_nativ <- data[94:663, ]

# The factors (i.e. population and levels)
par(mfrow = c(3,1))
pops <- factor(data_invas$Population)
nLevFactor <- length(levels(pops))

non <- is.na(data_invas$Familymeans_length)
y <- data_invas$Familymeans_length[!non]
Factor <- pops[!non]
FactorMeans <- tapply(y, Factor, mean)
xMaxPlot <- max(y) + 0.25 * (max(y) - min(y))

pdf("Invasive_length_varability",width = 12)

# vertical axis "2" position - family
# vertical axis "3" position - population
par(mar = c(5, 5, 4, 2) + 0.1)
plot(c(min(y), xMaxPlot), c(1.75, 3.25),
     xlab="Shell length (mm) at reproductive maturity", ylab="",
     axes=FALSE, type="n")
legend(max(y) + 0.05 * (max(y) - min(y)), 3, levels(Factor),
       col = 1 : nLevFactor, pch = 1 : nLevFactor,
       lty = 1, bty = "n", cex = .75)
axis(2,at=2:3,c("Family", "Population"),las=2)
axis(1)
box()
points(FactorMeans, rep(3, length(FactorMeans)),
       pch = 1 : nLevFactor, col = 1 : nLevFactor)
iter=1
for (i in levels(Factor)){
    y.factor <- y[Factor == i]
    # loop through levels inside each factor
    for (j in 1 : length(y.factor)){
        lines(c(y.factor[j], FactorMeans[i]), c(2, 3), col = iter)
    }
    iter=iter+1
}
title("Final Length Variability: Family nested in Population")


dev.off()





## NATIVE PLOTS

# Growth
data <- Varability_Growth

data_invas <- data[1:93, ]
data_nativ <- data[94:710, ]

# The factors (i.e. population and levels)
par(mfrow = c(3,1))
pops <- factor(data_nativ$Population)
nLevFactor <- length(levels(pops))

non <- is.na(data_nativ$Familymeans_growth)
y <- data_nativ$Familymeans_growth[!non]
Factor <- pops[!non]
FactorMeans <- tapply(y, Factor, mean)
xMaxPlot <- max(y) + 0.25 * (max(y) - min(y))

# vertical axis "2" position - family
# vertical axis "3" position - population
par(mar = c(5, 5, 4, 2) + 0.1)
plot(c(min(y), xMaxPlot), c(1.75, 3.25),
     xlab="Growth/day until 3 mm", ylab="",
     axes=FALSE, type="n")
legend(max(y) + 0.05 * (max(y) - min(y)), 3, levels(Factor),
       col = 1 : nLevFactor, pch = 1 : nLevFactor,
       lty = 1, bty = "n", cex = .75)
axis(2,at=2:3,c("Family", "Population"),las=2)
axis(1)
box()
points(FactorMeans, rep(3, length(FactorMeans)),
       pch = 1 : nLevFactor, col = 1 : nLevFactor)
iter=1
for (i in levels(Factor)){
    y.factor <- y[Factor == i]
    # loop through levels inside each factor
    for (j in 1 : length(y.factor)){
        lines(c(y.factor[j], FactorMeans[i]), c(2, 3), col = iter)
    }
    iter=iter+1
}
title("Mean Growth Rate Variability: Family nested in Population")




# Age

data <- Varability_Age

data_invas <- data[1:93, ]
data_nativ <- data[94:693, ]

# The factors (i.e. population and levels)
par(mfrow = c(3,1))
pops <- factor(data_nativ$Population)
nLevFactor <- length(levels(pops))


pdf("Native_age_varability", width = 12)

non <- is.na(data_nativ$Familymeans_age)
y <- data_nativ$Familymeans_age[!non]
Factor <- pops[!non]
FactorMeans <- tapply(y, Factor, mean)
xMaxPlot <- max(y) + 0.25 * (max(y) - min(y))

# vertical axis "2" position - family
# vertical axis "3" position - population
par(mar = c(5, 5, 4, 2) + 0.1)
plot(c(min(y), xMaxPlot), c(1.75, 3.25),
     xlab="Days until reproductive maturity", ylab="",
     axes=FALSE, type="n")
legend(max(y) + 0.05 * (max(y) - min(y)), 3, levels(Factor),
       col = 1 : nLevFactor, pch = 1 : nLevFactor,
       lty = 1, bty = "n", cex = .75)
axis(2,at=2:3,c("Family", "Population"),las=2)
axis(1)
box()
points(FactorMeans, rep(3, length(FactorMeans)),
       pch = 1 : nLevFactor, col = 1 : nLevFactor)
iter=1
for (i in levels(Factor)){
    y.factor <- y[Factor == i]
    # loop through levels inside each factor
    for (j in 1 : length(y.factor)){
        lines(c(y.factor[j], FactorMeans[i]), c(2, 3), col = iter)
    }
    iter=iter+1
}
title("Mean Age Variability: Family nested in Population")

dev.off()



# Length

data <- Varability_Length

data_invas <- data[1:93, ]
data_nativ <- data[94:663, ]

# The factors (i.e. population and levels)
par(mfrow = c(3,1))
pops <- factor(data_nativ$Population)
nLevFactor <- length(levels(pops))

non <- is.na(data_nativ$Familymeans_length)
y <- data_nativ$Familymeans_length[!non]
Factor <- pops[!non]
FactorMeans <- tapply(y, Factor, mean)
xMaxPlot <- max(y) + 0.25 * (max(y) - min(y))



# vertical axis "2" position - Population
# vertical axis "3" position - Status
par(mar = c(5, 5, 4, 2) + 0.1)
plot(c(3.5, xMaxPlot), c(1.75, 3.25),
     xlab="Shell length (mm) at reproductive maturity", ylab="",
     axes=FALSE, type="n")
legend(6.25 +.05 * (6.5 - 3.5), 3, levels(Factor),
       col = 1 : nLevFactor, pch = 1 : nLevFactor,
       lty = 1, bty = "n", cex = .75)
axis(2,at=2:3,c("Family", "Population"),las=2)
axis(1)
box()
points(FactorMeans, rep(3, length(FactorMeans)),
       pch = 1 : nLevFactor, col = 1 : nLevFactor)
iter=1
for (i in levels(Factor)){
    y.factor <- y[Factor == i]
    # loop through levels inside each factor
    for (j in 1 : length(y.factor)){
        lines(c(y.factor[j], FactorMeans[i]), c(2, 3), col = iter)
    }
    iter = iter + 1
}
title("Mean Length Variability: Family nested in Population")

