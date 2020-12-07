data <- read.csv(file.choose(),header=TRUE,na.string=".")
attach(data)
names(data)
data

treatment <- c(Enter treatment 1 header)
control <- c(Enter treatment 2 header)
mean_treat <- mean(treatment)
mean_control <- mean(control)
means <- c(mean_treat,mean_control)
se <- function(x) {sd(x,na.rm=TRUE)/sqrt(length(x))}
se_treat <- se(treatment)
se_control <- se(control)
standerrors <- c(se_treat,se_control)
graph <- barplot(means,beside=T, ylab="enter y axis label (units)",names=c("enter treatment 1 Label","enter treatment 2 Label"), ylim=c(enter y axis min, enter y axis max), col = c("tan","sienna4"))
arrows(graph,means-standerrors,graph,means+standerrors,code=3,angle=90,length=.1,lwd=1.3)
title(sub="Enter the title of your graph", cex.sub=1.25)