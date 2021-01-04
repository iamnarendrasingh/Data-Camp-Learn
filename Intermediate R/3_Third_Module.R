#   start date  : 1Jan2021
#   author      : Narendra Singh Shekhawat

###functions
help(sd)
?sd

##########
# Consult the documentation on the mean() function
help(mean)

# Inspect the arguments of the mean() function
args(mean)


##########
#Use a function
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate average number of views
avg_li <- mean(linkedin)
avg_fb <- mean(facebook)


# Inspect avg_li and avg_fb
print(avg_li)
print(avg_fb)


#########
#Use a function (2)




#########write own function
# Create a function pow_two()
pow_two <- function(x){
  y <- x*x
  return(y)
}

# Use the function
pow_two(12)

# Create a function sum_abs()
sum_abs <- function(x,y) {
  z <- abs(x)+abs(y)
  return(z)
}

# Use the function
sum_abs(-2,3)




#############
# Define the function hello()
hello <- function(){
  print("Hi there!")
  TRUE
}


# Call the function hello()
hello()


###################
# Finish the pow_two() function
pow_two <- function(x , print_info = TRUE ) {
  y <- x ^ 2
  if(print_info == TRUE){
    print(paste(x, "to the power two equals", y))}
  return(y)
}


##############
# The linkedin and facebook vectors have already been created for you

# Define the interpret function
interpret <- function(num_views) {
  if (num_views > 15) {
    print("You're popular!")
    return(num_views)
  } else {
    print("Try to be more visible!")
    return(0)   
  }
}

# Call the interpret function twice
interpret(linkedin[1])
interpret(facebook[2])
