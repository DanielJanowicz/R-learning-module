# Intro to R Lesson
# Oct 16th, 2022

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
samplegroup <-factor(samplegroup)

# Create a data frame and store it as a variable called 'df'
df <- data.frame(species, glengths)

df

#Exercise 2 (Dataframes)
titles <- c("Catch-22", "Pride and Prejudice", "Nineteen Eighty Four")
pages <- c(453, 432, 328)
df2 <- data.frame(titles, pages)

#Lists
list1 <- list(species, df, number)

# Exercise 3 (Lists)
list2 <- list(species, glengths, number)

