# https://github.com/zchuri/LicNeuroBiostats

# Intro to bioestatistics with R

# Objects
x <- 1
show(x)
y <- x+5
show(y)

# Classes
z <- "hola mundo"
z <- 1
z <- as.integer(z)
z <- as.complex(z)
z <- as.logical(z)
z <- as.factor(z)
class(z)

# Escalar, vector, matrix, array
x <- 1
x <- c(1,2,3,4)
m <- matrix(x, nrow = 2, ncol = 2)
m <- matrix(1:9, 3, 3)
v <- array(data = 1:8, dim = c(2,2,2))

# Logical operators
x < y
x == y
x != y
x > 5 & y > 5
x > 5 | y > 5

# List
z <- list(x = 2, y="dos")

# Data frame
x <- letters[1:5]
y <- seq(1,5)
DF <- data.frame(abc = c("a","b","c"), num = c(1,2,6))
View(DF)

# Subsetting
x <- array(seq(3, 27, 3), dim = c(3,3))

# Read data
# https://vincentarelbundock.github.io/Rdatasets/datasets.html
DF <- read.csv("Downloads/CanPop.csv")
DF <- read.csv("https://vincentarelbundock.github.io/Rdatasets/csv/carData/Chile.csv")
View(DF)
