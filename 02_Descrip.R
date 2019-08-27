# Descriptive statistics

# Clear workspace
rm(list = ls())

# Load data
help("datasets")

# Frequencies
df <- datasets::quakes
table(df$stations)

# Barplot
barplot(table(df$stations))

# Histogram
hist(df$mag)

# Boxplot
boxplot(df$mag)

# Scatterplot
plot(df$mag)

# Timeseries
plot(df$mag, type = "l")

# Sampling
sample()

# Distributions
# https://cran.r-project.org/web/views/Distributions.html
# https://www.stat.umn.edu/geyer/old/5101/rlook.html

# Central tendency measures
summary(df$mag)
mean(df$mag)
median(df$mag)
mode(df$mag)

# Load package 'psych'
library(psych)
describe(df$mag)

# Quantiles
quantile(df$mag, 0.25)
