# Descriptive statistics

# Clear workspace
rm(list = ls())

# Save original parameters
dev.off()
op <- par()

# Load data
help("datasets")
help("quakes")

# Frequencies
DF <- datasets::quakes
View(DF)
table(DF$stations)

# Barplot
barplot(table(DF$stations),
        ylim = c(0,50),
        col = "red")

# Histogram
hist(DF$mag,
     main = "Histograma de magnitudes",
     xlab = "Magnitud")

# Boxplot
boxplot(DF$mag, notch = T)
# Create categoric variable
DF$grupo <- DF$depth > median(DF$depth)
DF$grupo <- factor(DF$grupo)
levels(DF$grupo) <- c("No-deep","Deep")
# Grouped notched-boxplot
boxplot(DF$mag ~ DF$grupo, notch = T)

# Scatterplot
plot(DF$mag)
plot(DF$mag[DF$mag>5])

# Timeseries
plot(DF$mag, type = "l")

# Sampling
sample()

# Distributions
# https://cran.r-project.org/web/views/Distributions.html
# https://www.stat.umn.edu/geyer/old/5101/rlook.html

# Central tendency measures
summary(DF$mag)
fivenum(DF$mag)
mean(DF$mag)
median(DF$mag)
mode(DF$mag)

# Load package 'psych'
install.packages("psych")
library(psych)
describe(DF$mag)

# Quantiles
quantile(DF$mag, 0.25)

# Clear workspace
rm(list = ls())
datos <- read.csv("~/Documents/alturas.csv")
getwd()
summary(datos$Altura)
boxplot(datos$Altura)
