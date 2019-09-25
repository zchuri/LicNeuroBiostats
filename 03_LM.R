# Descriptive statistics

# Clear workspace
rm(list = ls())
# Save original graphical parameters
op <- par()

# Load data
help("swiss")

# Frequencies
data("swiss")
View(swiss)

# Correlation
cor(swiss$Fertility, swiss$Agriculture)
# Plot
plot(swiss$Fertility, swiss$Agriculture)

# Pairwise correlation
cor(swiss)
# Plot
pairs(swiss)
library(corrgram)
corrgram(swiss)
corrgram(swiss, col.regions = colorRampPalette(c("cyan", "blue","white", "red", "orange")))
corrgram(swiss, lower.panel=panel.shade, upper.panel=panel.pie, text.panel=panel.txt)
library(corrplot)
corrplot(cor(swiss))

# Significance for correlation
cor.test(swiss$Fertility, swiss$Agriculture)
library(psych)
corr.test(swiss)
corr.p(cor(swiss), n = nrow(swiss), adjust = "none")
x <- corr.p(cor(swiss), n = nrow(swiss), adjust = "none")
x$p


# Regresion
lm(Fertility ~ Agriculture, data = swiss)
reg_lm <- lm(Fertility ~ Agriculture, data = swiss)
summary(reg_lm)
plot(reg_lm) # Diagnostic plots
# Scatterplot
plot(swiss$Agriculture,swiss$Fertility)
abline(reg_lm)

# Multiple regression
reg_mlm <- lm(Fertility ~ ., data = swiss)
summary(reg_mlm)
