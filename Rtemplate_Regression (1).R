data <- read.csv(file.choose(),header=TRUE,na.string=".")
attach(data)
names(data)
data

dependent <- c(enter the header for the dependent variable)
independent <- c(enter the header for the independent variable)
regression <- lm(dependent~independent)
summary(regression)