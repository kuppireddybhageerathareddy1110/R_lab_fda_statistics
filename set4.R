# Create an integer vector of length 10
int_vector <- sample(1:100, 10, replace = FALSE)  # Randomly generate 10 unique numbers

print("Integer vector:")
print(int_vector)

# Find the second largest element
sorted_vector <- sort(int_vector, decreasing = TRUE)  # Sort in descending order
second_largest <- sorted_vector[2]  # Get the second largest

print("Second largest element:")
print(second_largest)




# Function to find the Nth Fibonacci number using recursion
def fibonacci(n):
  if n <= 0:
  return "Invalid input. N should be a positive integer."
elif n == 1 or n == 2:
  return 1
else:
  return fibonacci(n - 1) + fibonacci(n - 2)

# Example to find the 10th Fibonacci number
n = 10
fib_n = fibonacci(n)

print(f"The {n}th Fibonacci number is: {fib_n}")






library(dplyr)
library(ggplot2)

# Load the "iris" dataset
data("iris")

# i. Group the rows by "Species"
grouped_species <- iris %>%
  group_by(Species)

print("Grouped by Species:")
print(grouped_species)

# ii. Filter rows where "Sepal.Length" is greater than 6
filtered_sepal_length <- iris %>%
  filter(Sepal.Length > 6)

print("Filtered rows with Sepal.Length > 6:")
print(filtered_sepal_length)

# iii. Construct a histogram for "Sepal.Length"
ggplot(iris, aes(x = Sepal.Length)) +
  geom_histogram(
    bins = 30,  # Adjust number of bins for better granularity
    fill = "orange",  # Color of the bars
    color = "red"  # Border color
  ) +
  labs(
    title = "Histogram of Sepal.Length in Iris Dataset",
    x = "Sepal.Length",
    y = "Frequency"
  ) +
  theme_minimal()



# Load the "iris" dataset
data("iris")

# Construct a histogram for "Sepal.Length"
hist(
  iris$Sepal.Length,
  main = "Histogram of Sepal.Length in Iris Dataset",
  xlab = "Sepal.Length",
  ylab = "Frequency",
  col = "orange",  # Bar color
  border = "red",  # Border color
  breaks = 20  # Number of breaks/bins
)
