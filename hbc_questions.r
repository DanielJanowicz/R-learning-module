###### Part I ######

# Custom functions
## Convert F (in) to C (out) and C (in) to K (out)
temp_conv <- function(temp_f) {
  temp_c = (temp_f - 32) * 5 / 9
  temp_k = temp_c + 273.15
  return (temp_k)

# Nesting Functions
## Round temp in K to single decimal place
round(temp_conv(70), digits = 1)

###### Part II ######

# Dataframe
## Check to make sure 'animals' is a dataframe
## Check number of rows/columns in 'animals' dataframe 
animals <- read.csv(file="https://raw.githubusercontent.com/hbctraining/Intro-to-R-flipped/master/data/animals.csv")

class(animals)

nrow(animals)
ncol(animals)

# Data Wrangling
## Extract the speed in km/h from 'animals' dataframe
## Return rows with color 'Tan'
## Return rows with animals speed > 50km/h and output color
## Change "Grey" to "Gray" in the color column of 'animals' dataframe
## Create a list "animal_list" where the first element is the speed then color
## Give elements in the list a name
animals[1,1]
animals[which(animals$speed == 40), 1]
animals[which(animals$speed == 40), "speed"]
animals$speed[which(animals$speed == 40)]


animals[c(2,5),]
animals[which(animals$color == "Tan"),]

animals[which(animals$speed > 50), "color", drop =F]

animals$color[which(animals$color == "Grey")] <- "Gray"
animals[which(animals$color == "Grey"), "color"] <- "Gray"

animals_list <- list(animals$speed, animals$color)

names(animals_list) <- colnames(animals)
