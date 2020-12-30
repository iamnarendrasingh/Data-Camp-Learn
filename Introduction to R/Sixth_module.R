#Lists
#Vectors (one dimensional array): can hold numeric, character or logical values. The elements in a vector all have the same data type.
#Matrices (two dimensional array): can hold numeric, character or logical values. The elements in a matrix all have the same data type.
#Data frames (two-dimensional objects): can hold numeric, character or logical values. Within a column all elements have the same data type, but different columns can be of different data type.



#######
#A list in R is similar to your to-do list at work or school: the different items on that list most likely differ in length, characteristic, and type of activity that has to be done.

#A list in R allows you to gather a variety of objects under one name (that is, the name of the list) in an ordered way. These objects can be matrices, vectors, data frames, even other lists, etc. It is not even required that these objects are related to each other in any way.

#You could say that a list is some kind super data type: you can store practically any piece of information in it!

######Creating a list

# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Construct list with these different elements:
my_list <- list(my_vector , my_matrix , my_df)

######Creating a named list
# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Adapt list() call to give the components names
my_list <- list(my_vector, my_matrix, my_df)
names(my_list) <- c("vec", "mat" , "df")

# Print out my_list
print(my_list)



#####Creating a named list
# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Adapt list() call to give the components names
my_list <- list(my_vector, my_matrix, my_df)
names(my_list) <- c("vec", "mat" , "df")

# Print out my_list
print(my_list)

########Creating a named list (2)
#Complete the code in the editor to create shining_list; it contains three elements:

#moviename: a character string with the movie title (stored in mov)
#actors: a vector with the main actors' names (stored in act)
#reviews: a data frame that contains some reviews (stored in rev)
#Do not forget to name the list components accordingly (names are moviename, actors and reviews).

# The variables mov, act and rev are available

# Finish the code to build shining_list
shining_list <- list(moviename = mov , actors =act , reviews =rev)



#######Selecting elements from a list
#Besides selecting components, you often need to select specific elements out of these components. For example, with shining_list[[2]][1] you select from the second component, actors (shining_list[[2]]), the first element ([1]). When you type this in the console, you will see the answer is Jack Nicholson.

#Select from shining_list the vector representing the actors. Simply print out this vector.
#Select from shining_list the second element in the vector representing the actors. Do a printout like before.

# shining_list is already pre-loaded in the workspace
shining_list
# Print out the vector representing the actors
print(shining_list$actors)

# Print the second element of the vector representing the actors
print(shining_list$actors[2])


######Creating a new list for another movie
#Create two vectors, called scores and comments, that contain the information from the reviews shown in the table.
#Find the average of the scores vector and save it as avg_review.
#Combine the scores and comments vectors into a data frame called reviews_df.
#Create a list, called departed_list, that contains the movie_title, movie_actors, reviews data frame as reviews_df, and the average review score as avg_review, and print it out.

# Use the table from the exercise to define the comments and scores vectors
scores <- c(4.6, 5, 4.8, 5, 4.2)
comments <- c("I would watch it again", "Amazing!", "I liked it", "One of the best movies", "Fascinating plot")

# Save the average of the scores vector as avg_review 
avg_review <- mean(scores)

# Combine scores and comments into the reviews_df data frame
reviews_df <- data.frame(scores, comments)

# Create and print out a list, called departed_list
departed_list <- list(movie_title, movie_actors, reviews_df, avg_review)
departed_list