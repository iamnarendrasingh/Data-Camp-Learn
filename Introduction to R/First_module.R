getwd()
setwd("E:\\Self_GitKraken\\Working_Repo_GitHub\\Data-Camp-Learn\\Introduction to R")
# Calculate 3 + 4
3 + 4

# Calculate 6 + 12
6+12


#Arithmetic with R

# An addition
5 + 5 

# A subtraction
5 - 5 

# A multiplication
3 * 5

# A division
(5 + 5) / 2 

# Exponentiation
2^5

# Modulo
28%%6

#Variable assignment
# Assign the value 42 to x
x <- 42

# Print out the value of the variable x
x

##Variable assignment (2)
# Assign the value 5 to the variable my_apples
my_apples <- 5


# Print out the value of the variable my_apples
my_apples

###Variable assignment (3)
# Assign a value to the variables my_apples and my_oranges
my_apples <- 5
my_oranges <- 6

# Add these two variables together
print(my_apples + my_oranges)

# Create the variable my_fruit
my_fruit <- my_apples + my_oranges

####Apples and oranges
# Assign a value to the variable my_apples
my_apples <- 5 

# Fix the assignment of my_oranges
my_oranges <- 6 

# Create the variable my_fruit and print it out
my_fruit <- my_apples + my_oranges 
my_fruit

# Basic data types in R
# R works with numerous data types. Some of the most basic types to get started are:

#Decimal values like 4.5 are called numerics.
#Whole numbers like 4 are called integers. Integers are also numerics.
#Boolean values (TRUE or FALSE) are called logical.
#Text (or string) values are called characters.
#Note how the quotation marks in the editor indicate that "some text" is a string.

# Change my_numeric to be 42
my_numeric <- 42

# Change my_character to be "universe"
my_character <- "universe"

# Change my_logical to be FALSE
my_logical <- FALSE

######### What's that data type?
# Do you remember that when you added 5 + "six", 
# you got an error due to a mismatch in data types? You can avoid such embarrassing situations 
#by checking the data type of a variable beforehand. You can do this with 
# the class() function, as the code in the editor shows.

# Declare variables of different types
my_numeric <- 42
my_character <- "universe"
my_logical <- FALSE 

# Check class of my_numeric
class(my_numeric)

# Check class of my_character
class(my_character)

# Check class of my_logical
class(my_logical)


#### Create a vector
# Feeling lucky? You better, because this chapter takes you on a trip to the City of Sins, 
# also known as Statisticians Paradise!

#  Thanks to R and your new data-analytical skills, 
# you will learn how to uplift your performance at the tables and fire off your career as a professional gambler.
# This chapter will show how you can easily keep track of your betting progress and how you can do some simple analyses on past actions.
# Next stop, Vegas Baby. VEGAS!!

# Define the variable vegas
vegas <- "Go!"


#### Create a vector (2)
# In R, you create a vector with the combine function c()
# You place the vector elements separated by a comma between the parentheses
numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")

# Complete the code for boolean_vector
boolean_vector <- c(TRUE , FALSE , TRUE)

#### Naming a vector
# some_vector <- c("John Doe", "poker player")
# names(some_vector) <- c("Name", "Profession")

# This code first creates a vector some_vector and then gives the two elements a name. 
# The first element is assigned the name Name, while the second element is labeled Profession.
#  Printing the contents to the console yields following output:

#           Name     Profession 
#         "John Doe" "poker player" 


