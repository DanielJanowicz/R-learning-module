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

# Vectors
age <- c(15, 22, 45, 52, 73, 81)

age[5]

age[-5]

age[c(3, 5, 6)] ## nested

# OR

## create a vector first then select
idx <- c(3, 5, 6) # create vector of the elements of interest
age[idx]

age[1:4]

age[4:1]

alphabets <- c("C", "D", "X", "L", "F")
alphabets[c(1, 2, 5)]
alphabets[-3]
alphabets[5:1]

age > 50

age > 50 | age < 18

age

age[age > 50 | age < 18] ## nested

# OR

## create a vector first then select
idx <- age > 50 | age < 18
age[idx]


which(age > 50 | age < 18)

age[which(age > 50 | age < 18)] ## nested

# OR

## create a vector first then select
idx_num <- which(age > 50 | age < 18)
age[idx_num]

expression[expression == "high"] 
## This will only return those elements in the factor equal to "high"

samplegroup[which(samplegroup != "KO")]

expression

str(expression)

expression <- factor(expression, levels = c("low", "medium", "high")) 

str(expression)

str(samplegroup)

samplegroup <- factor(samplegroup, levels = c("KO", "CTL", "OE"))

str(samplegroup)

# Packages 
sessionInfo() 

# OR

search() # Gives a list of attached packages

install.packages("ggplot2")

library(ggplot2)

sessionInfo()

install.packages("tidyverse")

# Dataframes
# Extract value 'Wt'
metadata[1, 1]

# Extract value '1'
metadata[1, 3]

# Extract third row
metadata[3, ]

# Extract third column
metadata[, 3]

# Extract third column as a data frame
metadata[, 3, drop = FALSE]

# Dataframe containing first two columns
metadata[, 1:2]

# Data frame containing first, third and sixth rows
metadata[c(1, 3, 6), ]

# Extract the celltype column for the first three samples
metadata[c("sample1", "sample2", "sample3"), "celltype"]

# Check column names of metadata data frame
colnames(metadata)

# Check row names of metadata data frame
rownames(metadata)

# Extract the genotype column
metadata$genotype

# Extract the first five values/elements of the genotype column
metadata$genotype[1:5]

# Exercise (Returning a dataframe)

metadata[c("sample2", "sample8"), c("genotype", "replicate")]

metadata$genotype[c(1, 9)]

metadata[, 3, drop = FALSE]

# Logical Operators
metadata$celltype == "typeA"

logical_idx <- metadata$celltype == "typeA"

metadata[logical_idx, ]

which(metadata$celltype == "typeA")

idx <- which(metadata$celltype == "typeA")

metadata[idx, ]

which(metadata$replicate > 1)

idx <- which(metadata$replicate > 1)

metadata[idx, ]

metadata[which(metadata$replicate > 1), ]

sub_meta <- metadata[which(metadata$replicate > 1), ]

# Exercise (Logical Operators)
metadata[which(metadata$genotype == "KO"), ]


# Lists
list1[[2]]

comp2 <- list1[[2]]
class(comp2)

list1[[1]]

list1[[1]][1]

# Exercise (Lists)
list1

random <- NULL

random

random <- list(c(metadata, age, list1, samplegroup, number))
random[[1]]

names(list1)

# Name components of the list
names(list1) <- c("species", "df", "number")

names(list1)

# Extract 'df' component
list1$df

#Exercise (Lists 2)
names(random)

names(random) <- c("metadata")
names(random)
