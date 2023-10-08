# Abdul-Rahman Abdel-Fattah (Student ID: 210046015)
# Assignment 2 

# Task 1 : Creating Vectors
vector1 <- 12:40; # creating a vector filled with values 12 to 40
vector1 # displaying the vector

vector2 <- seq(12,40, by=4) # creating a vector containing every fourth value between 12 and 40
vector2 # displaying the vector

# Task 2 : Logical Vector
logicalVector <- rep(c(TRUE,FALSE),each=10)
print(typeof(logicalVector))
logicalVector

# Task 3 : Using Mathematical Functions

x <- floor(runif(n = 100, min = 1, max = 1000)) # creating a random 100-integer vector with minimum value 1 and max value of 1000
x

xSd <- sqrt(sum((x-mean(x))^2/(length(x)-1))) #finding standard deviation w/o using function
cat("Standard Deviation w/o using builtin function: ", xSd)
usingFunction <- sd(x) #finding SD using built-in function
cat("Standard Deviation using the built-in function: " , usingFunction)

print("After using both methods, both results are the same." ) 


# Task 4: Finding CoVariance of two hobbies
datasetHobbies = read.csv("C:\\Users\\Desktop\\dataset.csv") # importing the dataset in order to be used 

cov(datasetHobbies$football,datasetHobbies$reading) # variance of football vs reading 

# Task 5: Second and Third Central Moments
library(e1071)
movies <- datasetHobbies[['movies']]
second_moment <- moment(movies,2,TRUE)
cat(" The Second Central Moment of Movies is:" , second_moment)
third_moment <- moment(movies,3,TRUE)
cat(" The Third Central Moment of Movies is:" , third_moment)

# Task 6: Covariance Matrix
covM=cov(datasetHobbies[, 6:19])
covM
diag(covM) <- -Inf
covM
covM == max(covM)
which(covM == max(covM), arr.ind=TRUE)

rm(list=ls())
