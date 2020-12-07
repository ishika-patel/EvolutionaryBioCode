# Open File
data <- read.csv(file.choose(),header=TRUE,na.string=".")
attach(data)
names(data)
data

# One Way Anova (Completely Randomized Design) (only for categories with equal numbers)
ANOVA <- aov(lipid ~ category)
summary (ANOVA)

boxplot(lipid ~ category)



results = aov(lipid ~ category)
TukeyHSD(results, conf.level=0.95)