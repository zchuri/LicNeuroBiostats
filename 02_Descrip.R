# Descriptive statistics

# Clear workspace
rm(list = ls())

# Load data
help("datasets")

# Frequencies
DF <- datasets::quakes
View(DF)
table(DF$stations)

# Barplot
barplot(table(DF$stations))

# Histogram
hist(DF$mag)

# Boxplot
boxplot(DF$mag)

# Scatterplot
plot(DF$mag)

# Timeseries
plot(DF$mag, type = "l")

# Sampling
sample()

# Distributions
# https://cran.r-project.org/web/views/Distributions.html
# https://www.stat.umn.edu/geyer/old/5101/rlook.html

# Central tendency measures
summary(DF$mag)
mean(DF$mag)
median(DF$mag)
mode(DF$mag)

# Load package 'psych'
library(psych)
describe(DF$mag)

# Quantiles
quantile(DF$mag, 0.25)
