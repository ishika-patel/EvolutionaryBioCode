data <- read.csv(file.choose("SAWS2/OnionData.csv"),header=TRUE,na.string=".")
attach(data)
names(data)
data

treatment1 <- c(data$Water)
treatment2 <- c(data$Ethanol)
mean(treatment1)
mean(treatment2)
se <- function(x) {sd(x,na.rm=TRUE)/sqrt(length(x))}
se(treatment1)
se(treatment2)
t.test(treatment2,treatment1, paired=TRUE)
