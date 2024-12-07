# Create the data frame using vectors a and b
a <- c(rep("Ant", 3), rep("Puppy", 3), rep("Cat", 2))
b <- c(1, 1, 2, 4, 1, 1, 2, 2)

dx <- data.frame(a = a, b = b)

# i. Display the data frame 'dx'
print("Data frame 'dx':")
print(dx)

# ii. Find the indexes of duplicated elements in 'dx'
duplicate_indexes <- which(duplicated(dx))
print("Indexes of duplicated elements:")
print(duplicate_indexes)

# iii. Extract the duplicate elements from 'dx'
duplicate_elements <- dx[duplicated(dx), ]
print("Duplicate elements in 'dx':")
print(duplicate_elements)

# iv. Extract the unique elements from 'dx'
unique_elements <- dx[!duplicated(dx), ]
print("Unique elements in 'dx':")
print(unique_elements)

# v. Count the duplicate elements and unique elements in 'dx'
count_duplicates <- sum(duplicated(dx))
count_uniques <- length(unique(paste(dx$a, dx$b, sep = ",")))

print("Number of duplicate elements:")
print(count_duplicates)

print("Number of unique elements:")
print(count_uniques)







# Load the 'iris' dataset
data("iris")

# i. Create a scatter plot following given instructions
plot(
  iris$Sepal.Width, iris$Sepal.Length, 
  type = "o",  # Type 'o' for overlaid points and lines
  main = "Scatter plot for Sepal Width Vs Length",
  xlab = "Sepal-Width",
  ylab = "Sepal-Length",
  col = "blue"
)

# ii. Create a box plot following given instructions
boxplot(
  iris$Sepal.Length ~ iris$Species,  # Group by 'Species'
  data = iris,
  main = "Sepal Length by Species",
  xlab = "Species",
  ylab = "Sepal-Length",
  col = "blue"
)






# Function to check if a given number is prime
def is_prime(number):
  if number <= 1:  # Numbers less than or equal to 1 are not prime
  return False
if number == 2:  # 2 is a prime number
  return True
if number % 2 == 0:  # Even numbers greater than 2 are not prime
  return False
for i in range(3, int(number ** 0.5) + 1, 2):  # Test odd divisors only
  if number % i == 0:
  return False
return True

# Example number to test
test_number = 29

if is_prime(test_number):
  print(f"{test_number} is a prime number.")
else:
  print(f"{test_number} is not a prime number.")
