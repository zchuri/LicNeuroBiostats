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
df <- data.frame(abc = x, num = y)
View(df)

# Subsetting
x <- array(seq(3, 27, 3), dim = c(3,3))

# Read data
# https://vincentarelbundock.github.io/Rdatasets/datasets.html
df <- read.table()