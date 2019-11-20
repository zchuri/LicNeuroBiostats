# Clear workspace
rm(list = ls())
# Save original parameters
#dev.off()
op <- par()

# https://en.wikipedia.org/wiki/Student's_t-distribution
data("mtcars")
View(mtcars)
# Apply t-test
fit <- t.test(mpg ~ am, data = mtcars, var.eq = T)
show(fit)
# Barplots
library(psych)
attach(mtcars)
describeBy(mpg,am, mat = T)
DF <- describeBy(mpg,am, mat = T)
# Barplot with error bars
library(ggplot2)
ggplot(DF) +
  geom_bar(aes(x = item, y = mean), stat="identity", fill="skyblue", alpha=0.7) +
  geom_errorbar(aes(x = item, ymin = mean-se, ymax = mean+se), width=0.4, colour="orange", alpha=0.9, size=1.3)



# https://en.wikipedia.org/wiki/Analysis_of_variance
data("chickwts")
View(chickwts)
# Apply AOV
fit <- aov(weight ~ feed, data = chickwts)
show(fit)
summary(fit)
# Post-hoc (https://en.wikipedia.org/wiki/Tukey%27s_range_test)
# https://aaronschlegel.me/tukeys-test-post-hoc-analysis.html
TukeyHSD(fit)
attach(chickwts)
pairwise.t.test(weight,feed, p.adj = "none")
# Visualization: boxplots
boxplot(weight ~ feed, data = chickwts)
library(ggplot2)
ggplot(data = chickwts, aes(x = feed, y = weight)) + geom_boxplot()
ggplot(data = chickwts, aes(x = feed, y = weight)) + geom_boxplot(notch = T)
ggplot(data = chickwts, aes(x = feed, y = weight, col = feed)) + geom_boxplot()
bp <- ggplot(data = chickwts, aes(x = feed, y = weight, fill = feed)) + geom_boxplot()
# Box plot with dot plot
bp + geom_dotplot(binaxis='y', stackdir='center', dotsize=1)
# Box plot with jittered points
bp + geom_jitter(shape=16, position=position_jitter(0.2))
