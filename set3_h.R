# Create a vector with random integers
set.seed(123)  # To ensure reproducibility
random_vector <- sample(1:100, 10, replace = TRUE)  # 10 random integers between 1 and 100

# Display the vector
print("Random Vector:")
print(random_vector)

# i. Convert the vector to a list
random_list <- as.list(random_vector)
print("Converted to List:")
print(random_list)

# ii. Check if the object is a list
is_list <- is.list(random_list)
print("Is it a list?")
print(is_list)

# iii. Sort the list and find the data type and value type
sorted_list <- sort(unlist(random_list))  # unlist to sort
data_type <- typeof(sorted_list)
value_type <- mode(sorted_list)

print("Sorted List:")
print(sorted_list)

print("Data Type of List:")
print(data_type)

print("Value Type of List:")
print(value_type)














# Function to separate even and odd numbers
separate_even_odd <- function(num_list) {
  even_numbers <- sapply(num_list, function(x) x %% 2 == 0)  # Check if even
  odd_numbers <- sapply(num_list, function(x) x %% 2 == 1)  # Check if odd
  
  even_values <- num_list[even_numbers]
  odd_values <- num_list[odd_numbers]
  
  list(even = even_values, odd = odd_values)
}

# Apply the function to the list
even_odd_list <- separate_even_odd(unlist(random_list))

print("Even Numbers:")
print(even_odd_list$even)

print("Odd Numbers:")
print(even_odd_list$odd)






# Load necessary package
library(dplyr)

# Import the 'iris' dataset
data("iris")

# i. Group all rows corresponding to "Species" using group_by() function
grouped_species <- iris %>%
  group_by(Species)

# ii. Filter all rows where 'Sepal.Length' is greater than 6
filtered_sepal_length <- iris %>%
  filter(Sepal.Length > 6)

print("Filtered rows where Sepal.Length > 6:")
print(filtered_sepal_length)

# iii. Construct a histogram to find the frequencies of 'Sepal.Length'
hist(
  iris$Sepal.Length,  # Data to plot
  main = "Histogram of Sepal Length",  # Title
  xlab = "Sepal Length",  # X-axis label
  ylab = "Frequency",  # Y-axis label
  col = "orange",  # Color of bins
  border = "red"  # Color of bin borders
)



import numpy as np

# Create a 4x5 array
array_4x5 = np.array([
  [0, 1, 2, 3, 4],
  [5, 6, 7, 8, 9],
  [10, 11, 12, 13, 14],
  [15, 16, 17, 18, 19]
])

print("Original Array:")
print(array_4x5)

# Swap column 1 (index 0) with column 4 (index 3)
array_4x5[:, [0, 3]] = array_4x5[:, [3, 0]]  # Swapping using array slicing

print("Array after swapping column 1 with column 4:")
print(array_4x5)


