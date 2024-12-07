# Load necessary package
library(dplyr)

# Create example data frames
Alignment <- data.frame(
  Set = c("bac", "good", "bac", "good", "bac", "bac", "good", "goc", "good", "good", "bac"),
  Alignment = c("good", "good", "bad", "good", "good", "bad", "bad", "bad", "good", "bad", "bad")
)

Publisher <- data.frame(
  Publisher = c("Marvel", "Marvel", "Marvel", "DC", "DC", "DC", "WB", "WB", "NewLine", "Dark Horse", "WB", "NewLine"),
  Name = c("Iron Man", "Spider-Man", "Hulk", "Batman", "Superman", "Wonder Woman", "Scooby-Doo", "Fred", "Mikey", "Dark Horse", "Ben", "Jerry")
)

Gender <- data.frame(
  Name = c("Iron Man", "Spider-Man", "Hulk", "Batman", "Wonder Woman", "Fred", "Mikey", "Gandalf", "Hermione", "Harry", "Wonder Woman"),
  Gender = c("male", "male", "male", "male", "female", "male", "male", "male", "female", "male", "male", "female")
)

# i) Inner join
inner_join_result <- inner_join(Publisher, Gender, by = "Name")
print("Inner Join Result:")
print(inner_join_result)

# ii) Left join
left_join_result <- left_join(Publisher, Gender, by = "Name")
print("Left Join Result:")
print(left_join_result)

# iii) Right join
right_join_result <- right_join(Publisher, Gender, by = "Name")
print("Right Join Result:")
print(right_join_result)

# iv) Full outer join
full_join_result <- full_join(Publisher, Gender, by = "Name")
print("Full Outer Join Result:")
print(full_join_result)

# v) Cross join
cross_join_result <- crossing(Publisher, Gender)
print("Cross Join Result:")
print(cross_join_result)







import numpy as np

# Function to check if a number is prime
def is_prime(num):
  if num < 2:
  return False
for i in range(2, int(np.sqrt(num)) + 1):
  if num % i == 0:
  return False
return True

# Create a random array of 20 integers between 1 and 100
random_numbers = np.random.randint(1, 100, 20)

print("Random Numbers:")
print(random_numbers)

# Find prime numbers in the array
prime_numbers = [x for x in random_numbers if is_prime(x)]

print("Prime Numbers:")
print(prime_numbers)





# Create a vector with random integers
set.seed(42)
random_vector <- sample(1:100, 10)

# iv. Convert the vector to a list
random_list <- as.list(random_vector)
print("List from Vector:")
print(random_list)

# v. Check if it's a list
is_it_list <- is.list(random_list)
print("Is it a list?")
print(is_it_list)

# vi. Sort the list, get data type and value type
sorted_list <- sort(unlist(random_list))
data_type <- typeof(sorted_list)
value_type <- mode(sorted_list)

print("Sorted List:")
print(sorted_list)

print("Data Type:")
print(data_type)

print("Value Type:")
print(value_type)

# OR: Print all prime numbers and odd numbers from the list
prime_and_odd_list <- function(lst) {
  primes <- sapply(lst, function(x) is_prime(x))
  odds <- sapply(lst, function(x) x %% 2 == 1)
  
  prime_values <- lst[primes]
  odd_values <- lst[odds]
  
  list(primes = prime_values, odds = odd_values)
}

results <- prime_and_odd_list(sorted_list)

print("Prime Numbers in List:")
print(results$primes)

print("Odd Numbers in List:")
print(results$odds)





