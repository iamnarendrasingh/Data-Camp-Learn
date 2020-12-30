#Dataframe

#A data frame has the variables of a data set as columns and the observations as rows.

# Call head() on mtcars
head(mtcars)

###############Have a look at the structure
#Another method that is often used to get a rapid overview of your data is the function str(). 
# Investigate the structure of mtcars
str(mtcars)


##########Creating a data frame
# Definition of vectors
name <- c("Mercury", "Venus", "Earth", 
          "Mars", "Jupiter", "Saturn", 
          "Uranus", "Neptune")
type <- c("Terrestrial planet", 
          "Terrestrial planet", 
          "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", 
          "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 
              11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 
              0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <- data.frame(name , type , diameter, rotation , rings)

# Check the structure of planets_df
str(planets_df)

###########Selection of data frame elements
#my_df[1,2] selects the value at the first row and second column in my_df.
#my_df[1:3,2:4] selects rows 1, 2, 3 and columns 2, 3, 4 in my_df.
#Sometimes you want to select all elements of a row or column. For example, my_df[1, ] selects all elements of the first row. Let us now apply this technique on planets_df!

# The planets_df data frame from the previous exercise is pre-loaded
my_df <- planets_df[1,3]
# Print out diameter of Mercury (row 1, column 3)
print(my_df)

# Print out data for Mars (entire fourth row)
my_df <- planets_df[4,]
print(my_df)

#Instead of using numerics to select elements of a data frame, you can also use the variable names to select columns of a data frame.
# The planets_df data frame from the previous exercise is pre-loaded\
planets_df
# Select first 5 values of diameter column
my_df <- planets_df[1:5, "diameter"]
print(my_df)


#########Only planets with rings
#You will often want to select an entire column, namely one specific variable from a data frame. If you want to select all elements of the variable diameter, for example, both of these will do the trick:

#planets_df[,3]
#planets_df[,"diameter"]
#However, there is a short-cut. If your columns have names, you can use the $ sign:
  
#  planets_df$diameter


# planets_df is pre-loaded in your workspace
planets_df
# Select the rings variable from planets_df
rings_vector <- planets_df$rings

# Print out rings_vector
print(rings_vector)


#Only planets with rings (2)
# planets_df and rings_vector are pre-loaded in your workspace

# Adapt the code to select all columns for planets with rings
planets_df[rings_vector,]



#######Only planets with rings but shorter
# planets_df is pre-loaded in your workspace
planets_df
# Select planets with diameter < 1
subset(planets_df , subset= diameter <1)



#####sorting
# Play around with the order function in the console
order()

####Sorting your data frame
# planets_df is pre-loaded in your workspace
planets_df
# Use order() to create positions
positions <-  order(planets_df$diameter)

# Use positions to sort planets_df
print(planets_df[positions,])