# R program to take user input for name and age

# Prompt user for input
name <- readline("Enter your name: ")
age <- as.numeric(readline("Enter your age: ")) 
# Convert input to numeric

# Display the input values without paste
print(name)
print(age)

#2. write a R programming commands display the getwd() , setwd() ,is()
getwd()
setwd("C:/Users/k bhageeratha reddy/OneDrive/Documents")


#3 write a R program to create the systems idea of the current date with and without time
Sys.time();
Sys.Date();

#4 use R to calculate the following
print(31*78);
print(697/41);

#5 Assign the value of 39 to x
x = 39;
print(x);

#6 Assign the value of 22 to y
y<- 22
print(y);

#7 Assign the value of x-y
z = x-y;
print(z)

#8 display the value of z
print(z);


#9 Type the following code,which assigns members to objects x and y
x <- 10
y<-20
#a)calculate the product of x and y
x*y
#b) storethe result in a new object called z
z = x*y
print(z)

#10. consider two vectors x,y
x = c(4,6,5,7,10,9,4,15)
y = c(0,10,1,8,2,3,4,1)
print(x*y)
print(x+y)

#11. consider two vectors a,b
a = c(1,5,4,3,6)
b = c(3,5,2,1,9)
c = a<=b
print(c)


#12. if x = c(1:12)
#a) what is the value of dim(x)
x = c(1:12)
print(dim(x))
#b) what is the length of x
print(length(x))


#13. consider two vectors x,y
x = letters[1:10]
y = letters[15:24]
#what is the value of x<y
print(x<y)

#14. consider two vectors a,b
a = c(10,2,4,15)
b = c(3,12,4,11)
#what is the value of rbind(a,b)
print(rbind(a,b))

#15. consider two vectors a,b
a = c(10,2,4,15)
b = c(3,12,4,11)
#what is the value of cbind(a,b)
print(cbind(a,b))
#16 write a r program to find the factors of a given number
find_factors <- function(number)
{
  factors <- c()
  
  for (i in 1:number) {
    if (number %% i == 0) {
      factors <- c(factors, i)
    }
  }
  
  return(factors)
}

# Example: Find factors of 24
number_to_factor <- 24
result <- find_factors(number_to_factor)
cat("Factors of", number_to_factor, "are:", result, "\n")


#17 write a R program to find the maximum and the minimum value of a given vector
a = c(1,2,3,4,5,6)
print(max(a))
print(min(a))
#18 write a R program to create three vectors numeric data, character data and logical data.Display the content of the vectors and their type
a = c(1,2,3,4,5,6,7,8)
b = c('a','b','c','d','e','f','g')
d = c(TRUE,FALSE,FALSE,TRUE)
a
b
d
print(class(a))
print(class(b))
print(class(d))

#19 Create a vector and find how many numbers are there in the vector x?

a = c(1,2,3,4,5)
print(length(a))

#20 Create two vectors x and y and find how many numbers will x + y generates?

x = c(1,2,3,4,5,6)
y = c(7,8,9,10,11,12)
z= x+y
z
print(length(z))

#21	Create a vector and find what is the sum of all values in x?

x = c(1,2,3,4,5,6)
print(sum(x))

#22	Create a vector and find what is the sum of y times y?

y = c(1,2,3,4,5,6)
z = y*y
print(sum(z))

#23	Create two vectors x and y and find what do you get if you add x and y?

x= c(1,2,3,4,5,6)
y = c(7,8,9,10,11,12)
print(x+y)


#24	Create a vector x and assign x times 2 to a new vector named z

x = c(1,2,3,4,5,6)
z = x*2
z

#25	How many numbers will z have, why?

print(length(z))

#same as length of x (since we are changing values not no.of values)

#26	Assign the mean of z to a new vector named z.mean and determine the length of  z.mean

z.mean = mean(z)
print(length(z.mean))
z.mean

#27	Create a numeric vector with all integers from 5 to 107

a = vector("integer",0)
for(i in 5:107){
  a = append(a,i)
}
a
#28	Create a numeric vector with the same length as the previous one, but only containing the number 3

b = vector("integer",5)
length(b)
a = append(b,3)
b
a
length(a)


#29	Create a vector that contain all numbers from 1 to 17, where each number occurs the same number of times as the number itself eg. 1, 2, 2, 3, 3, 3…

a = vector("integer",0)
for(i in 1:17){
  for(j in 1:i){
    a =  append(a,i)
  }
}
a

#Q30	Sort the vector x <- c(1, 3, 2, 5, 4) in:
#•	ascending order
#•	descending order

a = c(1,3,2,5,4)
b = sort(a)
c = sort(a,decreasing = TRUE)
b
c
