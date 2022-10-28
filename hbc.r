# Intro to R Lesson
# Oct 16th, 2022


###### Part I ######

# Interacting with R

## I am adding 3 and 5. R is fun!
3+5

x <- 3
y <- 5

number <- x + y

# Create a numeric vector and store the vector as a variable called 'glengths'
glengths <- c(4.6, 3000, 50000)
glengths

# Create a character vector and store the vector as a variable called 'species'
species <- c("ecoli", "human", "corn")
species

# Create a character vector and store the vector as a variable called 'species'
species <- c("ecoli", "human", "corn")

# Create a character vector and store the vector as a variable called 'expression'
expression <- c("low", "high", "medium", "high", "low", "medium", "high")

# Turn 'expression' vector into a factor
expression <- factor(expression)

# Exercise 1 (Vectors)
samplegroup <- c("CTL", "CTL", "CTL", "KO", "KO", "KO", "OE", "OE", "OE")
samplegroup <- factor(samplegroup)

# Create a data frame and store it as a variable called 'df'
df <- data.frame(species, glengths)

df

#Exercise 2 (Data frames) 
titles <- c("Catch-22", "Pride and Prejudice", "Nineteen Eighty Four")
pages <- c(453, 432, 328)
df2 <- data.frame(titles, pages)

#Lists
list1 <- list(species, df, number)

# Exercise 3 (Lists)
list2 <- list(species, glengths, number)

# Basic Functions
glengths <- c(glengths, 90) # adding at the end	
glengths <- c(30, glengths) # adding at the beginning

sqrt(81)

sqrt(glengths)

round(3.14159)

round(3.14159, digits=2)
round(3.14159, 2) # Same as above, just doesn't need to be defined

# Exercise 3 Mean Calculations
mean(glengths)
test <- c(1, NA, 2, 3, NA, 4)
mean(test)

sort(glengths)

# User defined functions
square_it <- function(x) {
  square <- x * x
  return(square)
}
square_it(5)

# Exercise 4 Creating a Function

multiply_it <- function(x, y) {
  multiply <- x * y
  return(multiply)
}
multiply_it(5, 10)

# Reading Data
metadata <- read.csv(file="https://raw.githubusercontent.com/hbc/NGS_Data_Analysis_Course/master/sessionII/data/mouse_exp_design.csv")

# Exercise 5 Reading files
read.table()

# Data Inspection
head(metadata)

# Exercise 6 Class Functions
class(glengths) # numeric
class(metadata) # data frame

summary(proj_summary)

###### Part II ######

