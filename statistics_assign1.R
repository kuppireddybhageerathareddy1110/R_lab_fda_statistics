#1 a) Enter the data (2,5,3,7,1,9,6} directly and store it in a variable x.
x <- c(2,5,3,7,1,9,6)
# b) Find the number of elements in x, i.e. in the data list.
length(x)
# c) Find the last element of x.
x[length(x)]
# d) Find the minimum element of x.
min(x)
# e) Find the maximum element of x.
max(x)


#2.enter the data {1,2,...,19,20}in a variable x
x<-c(1:20)
x
#a)find the 3rd element in the data list
x[3]
#b)find 3rd to 5th element in the data list
x[3:5]
#c)find 2nd,5th,6th,and 12th element in the list
x[c(2,5,6,12)]
#d) print the data as {20,19,...,2,1}without again entering the data
rev(x)


#3.a)create a data list (4,4,4,4,3,3,3,5,5,5)using rep function
# Using the rep function
data_list <- rep(c(4, 3, 5), times = c(4, 3, 3))
print(data_list)
#b) Create a list (4, 6, 3, 4, 6, 3, ..., 4, 6, 3) where there 10 occurrences of 4, 6, and 3 in the given order.
b <- rep(c(4, 6, 3), times = 10)
b
# c) Create a list (3, 1, 5, 3, 2, 3, 4, 5, 7,7, 7, 7, 7,7, 6, 5, 4, 3, 2, 1, 34, 21, 54) using one line command.
c <- c(3, 1, 5, 3, 2, 3, 4, 5, rep(7, 6), 6:1, 34, 21, 54)
c
#d) First create a list (2, 1, 3, 4). Then append this list at the end with another list (5, 7, 12, 6, -8). Check
#whether the number of elements in the augmented list is 11.
# Create the first list
first_list <- c(2, 1, 3, 4)
first_list
# Append the first list with another list
augmented_list <- c(first_list, 5, 7, 12, 6, -8)
augmented_list
# Check whether the number of elements in the augmented list is 11
is_equal_11 <- length(augmented_list) == 11
is_equal_11



# 4.(a) Print all numbers starting with 3 and ending with 7 with an increment of 0:0.5. Store these
#numbers in x.
x <- seq(from = 3, to = 7, by = 0.5)
x
# (b) Print all even numbers between 2 and 14 (both inclusive)
y <- seq(from = 2, to = 14, by = 2)
y
#5(a) Type 2*x and see what you get. Each element of x is multiplied by 2.
x<-c(1:5)
2 * x