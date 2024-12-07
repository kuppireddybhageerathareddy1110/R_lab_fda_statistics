# Function to count the number of even numbers in a vector
count_even_numbers <- function(vector) {
  # Use the modulo operator to check for even numbers
  even_numbers <- vector %% 2 == 0
  
  # Count the number of TRUE values (even numbers)
  count <- sum(even_numbers)
  
  return(count)
}

# Example usage
vector <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
result <- count_even_numbers(vector)

cat("Number of even numbers in the vector:", result, "\n")


#2.Write a R program whether the given number is prime or not.
# Function to check if a number is prime
is_prime <- function(num) {
  # Handle cases for 0 and 1
  if (num <= 1) {
    return(FALSE)
  }
  
  # Check for factors from 2 to the square root of the number
  for (i in 2:sqrt(num)) {
    if (num %% i == 0) {
      return(FALSE)  # It has a factor other than 1 and itself
    }
  }
  
  return(TRUE)  # It's a prime number
}

# Example usage
number <- 17
if (is_prime(number)) {
  cat(number, "is a prime number.\n")
} else {
  cat(number, "is not a prime number.\n")
}


# Function to check if a number is perfect
is_perfect <- function(num) {
  divisors <- which(num %% 1:(num/2) == 0)
  sum_of_divisors <- sum(divisors)
  return(sum_of_divisors == num)
}

# Find and print perfect numbers between 1 and 500
perfect_numbers <- which(sapply(1:500, is_perfect))
cat("The perfect numbers between 1 and 500 are:", perfect_numbers, "\n")



# Function to check if a number is prime
is_prime <- function(num) {
  # Handle cases for 0 and 1
  if (num <= 1) {
    return(FALSE)
  }
  
  # Check for factors from 2 to the square root of the number
  for (i in 2:sqrt(num)) {
    if (num %% i == 0) {
      return(FALSE)  # It has a factor other than 1 and itself
    }
  }
  
  return(TRUE)  # It's a prime number
}

# Get user input
user_input <- as.numeric(readline("Input a number to check prime or not: "))

# Check if the entered number is prime
if (is_prime(user_input)) {
  cat("The entered number is a prime number.\n")
} else {
  cat("The entered number is not a prime number.\n")
}


# Function to check if a number is prime
is_prime <- function(num) {
  # Handle cases for 0 and 1
  if (num <= 1) {
    return(FALSE)
  }
  
  # Check for factors from 2 to the square root of the number
  for (i in 2:sqrt(num)) {
    if (num %% i == 0) {
      return(FALSE)  # It has a factor other than 1 and itself
    }
  }
  
  return(TRUE)  # It's a prime number
}

# Get user input for the starting and ending range
start_range <- as.numeric(readline("Input number for starting range: "))
end_range <- as.numeric(readline("Input number for ending range: "))

# Find and print prime numbers within the specified range
prime_numbers <- which(sapply(start_range:end_range, is_prime))
cat("The prime numbers between", start_range, "and", end_range, "are:", prime_numbers, "\n")
cat("The total number of prime numbers between", start_range, "to", end_range, "is:", length(prime_numbers), "\n")



# Function to calculate the factorial of a number
factorial <- function(num) {
  if (num == 0 || num == 1) {
    return(1)
  } else {
    return(num * factorial(num - 1))
  }
}

# Get user input for the number
user_input <- as.numeric(readline("Input a number to find the factorial: "))

# Calculate and print the factorial of the given number
result <- factorial(user_input)
cat("The factorial of the given number is:", result, "\n")


# Function to calculate the GCD using Euclidean algorithm
gcd <- function(a, b) {
  while (b != 0) {
    remainder <- a %% b
    a <- b
    b <- remainder
  }
  return(abs(a))
}

# Get user input for the two numbers
num1 <- as.numeric(readline("Input the first number: "))
num2 <- as.numeric(readline("Input the second number: "))

# Calculate and print the GCD of the two numbers
result <- gcd(num1, num2)
cat("The Greatest Common Divisor is:", result, "\n")



# Function to calculate the sum of digits of a number
sum_of_digits <- function(num) {
  num_str <- as.character(num)
  digits <- as.numeric(strsplit(num_str, '')[[1]])
  return(sum(digits))
}

# Get user input for the number
user_input <- as.numeric(readline("Input a number: "))

# Calculate and print the sum of digits of the given number
result <- sum_of_digits(user_input)
cat("The sum of digits of", user_input, "is:", result, "\n")


#9.Write a program in R to list non-prime numbers from 1 to an upper bound. 
#Sample Output:
 # Input the upper limit: 25 
#The non-prime numbers are: 
 # 4 6 8 9 10 12 14 15 16 18 20 21 22 24 25 
# Function to check if a number is prime
is_prime <- function(num) {
  if (num <= 1) {
    return(FALSE)
  }
  
  for (i in 2:sqrt(num)) {
    if (num %% i == 0) {
      return(FALSE)
    }
  }
  
  return(TRUE)
}

# Get user input for the upper limit
upper_limit <- as.numeric(readline("Input the upper limit: "))

# Find and print non-prime numbers within the specified range
non_prime_numbers <- which(!sapply(1:upper_limit, is_prime))
cat("The non-prime numbers are:", non_prime_numbers, "\n")


# Function to print a square pattern with # character
print_square_pattern <- function(side_length) {
  for (i in 1:side_length) {
    cat(rep("# ", side_length), "\n")
  }
}

# Get user input for the number of characters for a side
side_length <- as.numeric(readline("Input the number of characters for a side: "))

# Print the square pattern
cat("Print a pattern like square with # character:\n")
print_square_pattern(side_length)


# Function to calculate the cube of a number
cube <- function(num) {
  return(num^3)
}

# Get user input for the number of terms
num_terms <- as.numeric(readline("Input the number of terms: "))

# Display the cube of numbers up to the given integer
for (i in 1:num_terms) {
  result <- cube(i)
  cat("Number is:", i, "and the cube of", i, "is:", result, "\n")
}


# Function to generate the Fibonacci series up to n terms
fibonacci_series <- function(n) {
  series <- numeric(n)
  series[1] <- 0
  if (n > 1) {
    series[2] <- 1
    for (i in 3:n) {
      series[i] <- series[i-1] + series[i-2]
    }
  }
  return(series)
}

# Get user input for the number of terms
num_terms <- as.numeric(readline("Input number of terms to display: "))

# Display the Fibonacci series up to the given number of terms
result <- fibonacci_series(num_terms)
cat("Here is the Fibonacci series up to", num_terms, "terms:\n")
cat(result, "\n")


# Function to reverse a number
reverse_number <- function(num) {
  reversed <- as.numeric(paste(rev(strsplit(as.character(num), '')[[1]]), collapse = ''))
  return(reversed)
}

# Get user input for the number
user_input <- as.numeric(readline("Input a number: "))

# Display the number in reverse order
result <- reverse_number(user_input)
cat("The number in reverse order is:", result, "\n")



# Function to calculate the sum of an A.P. series
sum_ap_series <- function(start, num_items, common_difference) {
  n <- num_items
  sum_series <- n * (2 * start + (n - 1) * common_difference) / 2
  return(sum_series)
}

# Get user input for the A.P. series
start_number <- as.numeric(readline("Input the starting number of the A.P. series: "))
num_items <- as.numeric(readline("Input the number of items for the A.P. series: "))
common_difference <- as.numeric(readline("Input the common difference of A.P. series: "))

# Calculate and print the sum of the A.P. series
result <- sum_ap_series(start_number, num_items, common_difference)
cat("The Sum of the A.P. series are :\n")
cat(paste(seq(start_number, length.out = num_items, by = common_difference), collapse = " + "), " = ", result, "\n")



# Function to check if a number is prime
is_prime <- function(num) {
  if (num <= 1) {
    return(FALSE)
  }
  
  for (i in 2:sqrt(num)) {
    if (num %% i == 0) {
      return(FALSE)
    }
  }
  
  return(TRUE)
}

# Function to find prime pairs that sum to the given number
find_prime_pairs <- function(num) {
  prime_pairs <- list()
  for (i in 2:(num-2)) {
    if (is_prime(i) && is_prime(num - i)) {
      prime_pairs <- c(prime_pairs, paste(i, "+", num - i))
    }
  }
  return(prime_pairs)
}

# Get user input for a positive integer
user_input <- as.numeric(readline("Input a positive integer: "))

# Check and print prime pairs that sum to the given number
result <- find_prime_pairs(user_input)
cat(paste(user_input, "=", result, collapse = "\n"), "\n")



# Function to find the length of a string
string_length <- function(input_string) {
  count <- 0
  for (char in strsplit(input_string, '')[[1]]) {
    count <- count + 1
  }
  return(count)
}

# Get user input for a string
user_input <- readline("Input a string: ")

# Find and print the length of the string
result <- string_length(user_input)
cat("The string contains", result, "number of characters.\n")
cat("So, the length of the string", user_input, "is:", result, "\n")



# Function to print a right-angled triangle pattern
print_triangle_pattern <- function(num_rows) {
  for (i in 1:num_rows) {
    cat(rep("*", i), "\n")
  }
}

# Get user input for the number of rows
num_rows <- as.numeric(readline("Input number of rows: "))

# Print the right-angled triangle pattern
print_triangle_pattern(num_rows)


# Function to print a right-angled triangle pattern with numbers
print_number_triangle <- function(num_rows) {
  for (i in 1:num_rows) {
    cat(1:i, "\n")
  }
}

# Get user input for the number of rows
num_rows <- as.numeric(readline("Input number of rows: "))

# Print the right-angled triangle pattern with numbers
print_number_triangle(num_rows)


# Function to print a right-angled triangle pattern with repeating numbers
print_repeating_number_triangle <- function(num_rows) {
  for (i in 1:num_rows) {
    cat(rep(i, i), "\n")
  }
}

# Get user input for the number of rows
num_rows <- as.numeric(readline("Input number of rows: "))

# Print the right-angled triangle pattern with repeating numbers
print_repeating_number_triangle(num_rows)


# Function to print a right-angled triangle pattern with numbers increased by 1
print_increasing_number_triangle <- function(num_rows) {
  count <- 1
  for (i in 1:num_rows) {
    cat(seq(count, count + i - 1), "\n")
    count <- count + i
  }
}

# Get user input for the number of rows
num_rows <- as.numeric(readline("Input number of rows: "))

# Print the right-angled triangle pattern with numbers increased by 1
print_increasing_number_triangle(num_rows)


# Function to find the sum of first and last digit of a number
sum_first_last_digit <- function(num) {
  num_str <- as.character(num)
  
  # Extract the first and last digits
  first_digit <- as.numeric(substr(num_str, 1, 1))
  last_digit <- as.numeric(substr(num_str, nchar(num_str), nchar(num_str)))
  
  sum_digits <- first_digit + last_digit
  return(list(first_digit = first_digit, last_digit = last_digit, sum_digits = sum_digits))
}

# Get user input for any number
user_input <- as.numeric(readline("Input any number: "))

# Find and print the first and last digit, and their sum
result <- sum_first_last_digit(user_input)
cat("The first digit of", user_input, "is:", result$first_digit, "\n")
cat("The last digit of", user_input, "is:", result$last_digit, "\n")
cat("The sum of first and last digit of", user_input, "is:", result$sum_digits, "\n")


# Function to find the frequency of each digit in a number
digit_frequency <- function(num) {
  num_str <- as.character(num)
  frequency <- table(strsplit(num_str, '')[[1]])
  
  # Initialize frequencies for 0-9
  frequencies <- setNames(rep(0, 10), 0:9)
  
  # Update frequencies based on the actual frequencies
  for (digit in names(frequency)) {
    frequencies[as.numeric(digit)] <- frequency[digit]
  }
  
  return(frequencies)
}

# Get user input for any number
user_input <- as.numeric(readline("Input any number: "))

# Find and print the frequency of each digit
result <- digit_frequency(user_input)
for (i in 0:9) {
  cat("The frequency of", i, "=", result[i], "\n")
}
