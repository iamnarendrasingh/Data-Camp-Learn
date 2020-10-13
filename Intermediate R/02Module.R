#Write a while loop
# while (condition) {
# expr
# }

# Initialize the speed variable
speed <- 64

# Code the while loop
while (speed > 30 ) {
  print("Slow down!")
  speed <- speed-7
  
}

# Print out the speed variable
speed


#######Throw in more conditionals
# Initialize the speed variable
speed <- 64

# Extend/adapt the while loop
while (speed > 30) {
  print(paste("Your speed is",speed))
  if ( speed > 48 ) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed<-speed-6
  }
}


############Stop the while loop: break
# Adapt the while loop such that it is abandoned when the speed of the vehicle is greater than 80.
# This time, the speed variable has been initialized to 88; keep it that way.
# Initialize the speed variable
#
speed <- 88

while (speed > 30) {
  print(paste("Your speed is", speed))
  
  # Break the while loop when speed exceeds 80
  if ( speed > 80 ) {
    break
  }
  
  if (speed > 48) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
}


#Finish the while loop so that it:

# prints out the triple of i, so 3 * i, at each run.
# is abandoned with a break if the triple of i is divisible by 8, but still prints out this triple before breaking.

# Initialize i as 1 
i <- 1

# Code the while loop
while (i <= 10) {
  print(3 * i)
  if ( (3 * i) %% 8 == 0) {
    break
  }
  i <- i + 1
}
