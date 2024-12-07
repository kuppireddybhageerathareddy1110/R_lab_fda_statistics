# Function to check if a number is prime
is_prime <- function(num) {
  if (num < 2) {
    return(FALSE)
  }
  for (i in 2:(sqrt(num))) {
    if (num %% i == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}

# Create a list with 20 random numbers
set.seed(42)
random_numbers <- sample(1:100, 20)

# Find all prime numbers in the list
prime_numbers <- Filter(is_prime, random_numbers)

print("Random Numbers:")
print(random_numbers)

print("Prime Numbers in the List:")
print(prime_numbers)







# Vectors 'a' and 'b'
a <- c(rep("Ant", 3), rep("Puppy", 3), rep("Cat", 2))
b <- c(1, 1, 2, 4, 1, 1, 2, 2)

# i. Create a data frame 'dx' using 'a' and 'b'
dx <- data.frame(a, b)
print("Data Frame 'dx':")
print(dx)

# ii. Find indexes of duplicated elements in 'dx'
duplicated_indexes <- which(duplicated(dx))
print("Indexes of Duplicated Elements in 'dx':")
print(duplicated_indexes)

# iii. Extract duplicate elements in 'dx'
duplicates <- dx[duplicated(dx), ]
print("Duplicate Elements in 'dx':")
print(duplicates)

# iv. Extract unique elements in 'dx'
unique_elements <- dx[!duplicated(dx), ]
print("Unique Elements in 'dx':")
print(unique_elements)

# v. Count the duplicate and unique elements in 'dx'
num_duplicates <- nrow(duplicates)
num_uniques <- nrow(unique_elements)

cat("Number of Duplicate Elements:", num_duplicates, "\n")
cat("Number of Unique Elements:", num_uniques, "\n")






# Load 'iris' dataset
data("iris")

# i. Create a scatter plot
plot(
  iris$Sepal.Width,  # X-axis data
  iris$Sepal.Length,  # Y-axis data
  type = 'o',  # 'o' indicates points connected by lines
  main = 'Scatter plot for Sepal Width Vs Length',  # Plot title
  xlab = 'Sepal-Width',  # X-axis label
  ylab = 'Sepal-Length',  # Y-axis label
  col = 'blue'  # Color of the points and lines
)


# ii. Create a box plot
boxplot(
  Sepal.Length ~ Species,  # Y-axis data by 'Species'
  data = iris,  # Dataset
  main = 'Sepal Length by Species',  # Plot title
  xlab = 'Species',  # X-axis label
  ylab = 'Sepal-Length',  # Y-axis label
  col = 'blue',  # Color of the box plot
  border = 'red'  # Color of the box plot borders
)



# Recursive approach to calculate factorial
def factorial(n):
  if n == 0:
  return 1
else:
  return n * factorial(n - 1)

# Test the function
num = 5
result = factorial(num)
print("Factorial of", num, "is", result)


# Function to find the GCD of two numbers
def gcd(a, b):
  while b:
  a, b = b, a % b
return a

# Test the function
num1 = 48
num2 = 18
gcd_result = gcd(num1, num2)
print("GCD of", num1, "and", num2, "is", gcd_result)
