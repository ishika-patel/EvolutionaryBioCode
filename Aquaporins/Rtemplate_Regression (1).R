data <- read.csv(file.choose("Aquaporins/AquaporinsData3.csv"),header=TRUE,na.string=".")
attach(data)
names(data)
data

dependent <- c(data$Percent_Change)
independent <- c(data$Molarity)
regression <- lm(dependent~independent)
summary(regression)