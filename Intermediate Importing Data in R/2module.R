getwd()
setwd("E:\\Self_GitKraken\\Working_Repo_GitHub\\Data-Camp-Learn\\Intermediate Importing Data in R")
getwd()

# Module : second module 
# date  : 01 Sept 2020

# SQL Queries from inside R


##############################################
#Use dbGetQuery() to create a data frame, elisabeth, that selects the tweat_id column from the comments table where elisabeth is the commenter, her user_id is 1
#Print out elisabeth so you can see if you queried the database correctly.

# Connect to the database
library(DBI)
con <- dbConnect(RMySQL::MySQL(),
                 dbname = "tweater",
                 host = "courses.csrrinzqubik.us-east-1.rds.amazonaws.com",
                 port = 3306,
                 user = "student",
                 password = "datacamp")

# Import tweat_id column of comments where user_id is 1: elisabeth
elisabeth <- dbGetQuery(con , "SELECT tweat_id FROM comments 
                          WHERE user_id = 1")

# Print elisabeth
elisabeth



##############################################
#Create a data frame, latest, that selects the post column from the tweats table observations where the date is higher than '2015-09-21'.
# Print out latest.

# Connect to the database
library(DBI)
con <- dbConnect(RMySQL::MySQL(),
                 dbname = "tweater",
                 host = "courses.csrrinzqubik.us-east-1.rds.amazonaws.com",
                 port = 3306,
                 user = "student",
                 password = "datacamp")

# Import post column of tweats where date is higher than '2015-09-21': latest
latest <- dbGetQuery(con , "SELECT post FROM tweats 
                            WHERE date > '2015-09-21'")

# Print latest
latest



##############################################

#Create an R data frame, specific, that selects the message column from the comments table where the tweat_id is 77 and the user_id is greater than 4.
#Print specific.

# Connect to the database
library(DBI)
con <- dbConnect(RMySQL::MySQL(),
                 dbname = "tweater",
                 host = "courses.csrrinzqubik.us-east-1.rds.amazonaws.com",
                 port = 3306,
                 user = "student",
                 password = "datacamp")

# Create data frame specific
specific <- dbGetQuery(con , "SELECT message FROM comments
                              WHERE tweat_id = 77 and user_id > 4")

# Print specific
specific


##############################################
#Create a data frame, short, that selects the id and name columns from the users table where the number of characters in the name is strictly less than 5.
#Print short.

# Connect to the database
library(DBI)
con <- dbConnect(RMySQL::MySQL(),
                 dbname = "tweater",
                 host = "courses.csrrinzqubik.us-east-1.rds.amazonaws.com",
                 port = 3306,
                 user = "student",
                 password = "datacamp")

# Create data frame short
short <- dbGetQuery(con , "SELECT id, name FROM users
                            WHERE CHAR_LENGTH(name) < 5")

# Print short
short

##############################################
# DBI internals
#Inspect the dbSendQuery() call that has already been coded for you. It selects the comments for the users with an id above 4.
#Use dbFetch() twice. In the first call, import only two records of the query result by setting the n argument to 2. In the second call, import all remaining queries (don't specify n). In both calls, simply print the resulting data frames.
#Clear res with dbClearResult().

# Connect to the database
library(DBI)
con <- dbConnect(RMySQL::MySQL(),
                 dbname = "tweater",
                 host = "courses.csrrinzqubik.us-east-1.rds.amazonaws.com",
                 port = 3306,
                 user = "student",
                 password = "datacamp")

# Send query to the database
res <- dbSendQuery(con, "SELECT * FROM comments WHERE user_id > 4")

# Use dbFetch() twice
dbFetch(res,2)
dbFetch(res)

# Clear res
dbClearResult(res)



##############################################
#Using the technique you prefer, build a data frame long_tweats. It selects the post and date columns from the observations in tweats where the character length of the post variable exceeds 40.
#Print long_tweats.
#Disconnect from the database by using dbDisconnect().

# Connect to the database
library(DBI)

con <- dbConnect(RMySQL::MySQL(),
                 dbname = "tweater",
                 host = "courses.csrrinzqubik.us-east-1.rds.amazonaws.com",
                 port = 3306,
                 user = "student",
                 password = "datacamp")

# Create the data frame  long_tweats
long_tweats <- dbGetQuery(con , " SELECT post , date FROM tweats 
                                    WHERE CHAR_LENGTH(post) > 40" )

# Print long_tweats
print(long_tweats)

# Disconnect from the database
dbDisconnect(con)



##############################################
