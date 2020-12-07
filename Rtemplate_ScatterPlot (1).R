data <- read.csv(file.choose(),header=TRUE,na.string=".")
attach(data)
names(data)
data

dependent <- c(enter header for dependent variable)
independent <- c(enter header for independent variable)
regression <- lm(dependent~independent)
summary(regression)
plot(independent, dependent)
abline(reg=regression)
title(sub="Enter the title of your graph", cex.sub=1.25)