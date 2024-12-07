# Function to generate the Fibonacci series up to 'n' terms
fibonacci <- function(n) {
  fib <- c(0, 1)
  for (i in 3:n) {
    fib <- c(fib, fib[i - 1] + fib[i - 2])
  }
  return(fib[1:n])
}

# Example: Get the first 10 terms of the Fibonacci series
first_10_fib <- fibonacci(10)
print(first_10_fib)



# Create matrix M with row-wise insertion
M <- matrix(1:9, nrow = 3, byrow = TRUE)

# Create matrix N with column-wise insertion
N <- matrix(11:19, nrow = 3, byrow = FALSE)

# Multiply M and N
result <- M %*% N
print(result)







# Load the 'datasets' package to access 'Airquality' dataset
library(datasets)

# Import the dataset
data("airquality")

# i. Print the first and last 10 rows
head_10 <- head(airquality, 10)
tail_10 <- tail(airquality, 10)

# ii. Count the Null values in each column
null_count <- sapply(airquality, function(x) sum(is.na(x)))

# iii. Print the summary details
summary_details <- summary(airquality)

# iv. Fill all the NA values with the mean (rounded) of each column
fill_with_mean <- function(data) {
  new_data <- data
  for (col in names(data)) {
    if (is.numeric(data[[col]])) {
      mean_val <- round(mean(data[[col]], na.rm = TRUE))
      new_data[[col]][is.na(data[[col]])] <- mean_val
    }
  }
  return(new_data)
}

NewAir <- fill_with_mean(airquality)

# v. Export the NewAir data frame to NewAirquality.csv
write.csv(NewAir, "NewAirquality.csv", row.names = FALSE)

# vi. Construct a box plot to compare distributions of "Temp" across "Months"
boxplot(Temp ~ Month, data = airquality, 
        main = "Temperature by Month",
        xlab = "Month",
        ylab = "Temperature (°F)")





import numpy as np

# i. Create a two-dimensional array with 1 on the border and 0 inside
def border_array(n, m):
  array = np.zeros((n, m))
array[0, :] = 1
array[:, 0] = 1
array[-1, :] = 1
array[:, -1] = 1
return array

border_result = border_array(5, 5)
print("Border Array:")
print(border_result)

# ii. Reverse an array (first element becomes last)
def reverse_array(arr):
  return arr[::-1]

arr = np.array([1, 2, 3, 4, 5])
reversed_arr = reverse_array(arr)

print("Original Array:")
print(arr)

print("Reversed Array:")
print(reversed_arr)
