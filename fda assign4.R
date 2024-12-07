# Create the matrix
x <- matrix(1:100, ncol=10)

# Sort by second column in descending order
x1 <- x[order(-x[, 2]), ]

# Sort by second row in descending order
x2 <- x[, order(-x[2, ])]

# Print the sorted matrices
print("Sorted by second column:")
print(x1)

print("Sorted by second row:")
print(x2)




# Given array
arr <- array(1:9, c(3, 3, 2))

# Print statements
print(sum(arr[,,1]))

print(sum(arr[,,1]==arr[,,2]))
print(max(arr[,1,1]))
print(arr[1,,1]==arr[1,,2])
print(arr[,1,])

# Install and load the dplyr package if not already installed
#install.packages("dplyr")
library(dplyr)

# Create the dataframe df
df <- as.data.frame(matrix(sample(1:5, 2000, T), ncol=40))

# Sort in increasing order on all 40 columns from left to right
df_increasing <- df %>%
  arrange(across(everything()))

# Sort in decreasing order on all 40 columns from left to right
df_decreasing <- df %>%
  arrange(across(everything(), desc))

# Sort in increasing order on all 40 columns from right to left
df_right_to_left <- df %>%
  arrange(across(rev(names(df))))

# Print the sorted dataframes
print("Sorted in increasing order on all columns from left to right:")
print(df_increasing)

print("Sorted in decreasing order on all columns from left to right:")
print(df_decreasing)

print("Sorted in increasing order on all columns from right to left:")
print(df_right_to_left)


# Given vector
x <- c(9:20, 1:5, 3:7, 0:8)

# Extract unique elements
unique_elements <- unique(x)

# Print the unique elements
print(unique_elements)



# Given vector
x <- c(9:20, 1:5, 3:7, 0:8)

# Remove duplicates keeping the first occurrence
xu <- x[!duplicated(x)]

# Remove duplicates keeping the last occurrence
xu2 <- x[!duplicated(x, fromLast = TRUE)]

# Print the results
print(xu)
print(xu2)

# Create a matrix with duplicate elements
mat <- matrix(c(1, 2, 3, 4, 1, 5, 2, 6, 3, 7, 4, 8, 5, 9, 6, 10, 7, 8, 9, 10), nrow = 4, ncol = 5, byrow = TRUE)

# Print the original matrix
print("Original Matrix:")
print(mat)

# Extract unique elements
unique_elements <- unique(mat)

# Print the unique elements
print("Unique Elements:")
print(unique_elements)


# Create a data frame with duplicate elements
df <- data.frame(
  A = c(1, 2, 3, 4, 1),
  B = c(5, 6, 2, 7, 8),
  C = c(3, 9, 10, 4, 5)
)

# Print the original data frame
print("Original Data Frame:")
print(df)

# Extract unique elements
unique_df <- unique(df)

# Print the data frame with only unique elements
print("Data Frame with Unique Elements:")
print(unique_df)





# Create a vector with the desired pattern
result_vector <- unlist(sapply(1:17, function(x) rep(x, x)))

# Print the result
print(result_vector)


# Calculation 1
result1 <- c(1, 3, 5) + c(2, 4, 6)
print(result1)  # Expected: c(3, 7, 11)

# Calculation 2
result2 <- c(1, 3, 5) + c(2, 4, 6, 8)
print(result2)  # Expected: c(3, 7, 11, 9)

# Calculation 3
result3 <- c(1, 3) - c(2, 4, 6 ,8)
print(result3)  # Expected: c(-1, -1, -5, -5)




# Function to print factors of a number
print_factors <- function(n) {
  factors <- c()  # Initialize an empty vector to store factors
  
  # Loop through numbers from 1 to the given number
  for (i in 1:n) {
    if (n %% i == 0) {
      factors <- c(factors, i)  # If i is a factor, add it to the vector
    }
  }
  
  factors  # Return the vector of factors
}

# Take user input
num <- as.integer(readline("Input a number: "))

# Call the function to get factors
result <- print_factors(num)

# Print the result
cat("The factors are:", result, "\n")







# Generate a random integer vector of length 10
set.seed(42)  # For reproducibility
integer_vector <- sample(1:100, 10, replace = TRUE)

# Print the generated vector
cat("Generated integer vector:", integer_vector, "\n")

# Find the second largest element
second_largest <- sort(unique(integer_vector), decreasing = TRUE)[2]

# Print the result
cat("The second-largest element is:", second_largest, "\n")




# Function to calculate one's complement of a binary number
ones_complement <- function(binary_number) {
  # Convert the binary number to a character vector
  binary_chars <- strsplit(as.character(binary_number), "")[[1]]
  
  # Perform one's complement by flipping each bit
  complemented_binary <- paste0(ifelse(binary_chars == "0", "1", "0"), collapse = "")
  
  complemented_binary
}

# Take user input for an 8-bit binary number
binary_input <- readline("Input an 8-bit binary value: ")

# Print the original binary number
cat("The original binary =", binary_input, "\n")

# Call the function to get the one's complement
complemented_binary <- ones_complement(binary_input)

# Print the result
cat("After ones complement the number =", complemented_binary, "\n")


# Function to find twos complement
twos_complement <- function(binary_num) {
  # Convert binary to integer
  decimal_num <- as.integer(binary_num, base = 2)
  
  # Calculate twos complement
  twos_comp <- (2^8) - decimal_num
  
  # Convert twos complement back to binary
  twos_comp_binary <- sprintf("%08d", as.integer(intToBits(twos_comp)))
  
  return(twos_comp_binary)
}

# Main program
binary_input <- readline(prompt = "Input an 8-bit binary value: ")

# Display the original binary
cat("The original binary =", binary_input, "\n")

# Calculate and display twos complement
twos_comp_result <- twos_complement(binary_input)
cat("After twos complement the value =", twos_comp_result, "\n")



# Function to convert decimal to binary
decimal_to_binary <- function(decimal_number) {
  binary_representation <- integer(0)  # Initialize an empty integer vector
  
  # Handle the case when the input is 0 separately
  if (decimal_number == 0) {
    binary_representation <- c(0)
  } else {
    # Loop to calculate binary digits
    while (decimal_number > 0) {
      remainder <- decimal_number %% 2  # Get the remainder
      binary_representation <- c(remainder, binary_representation)  # Add remainder to the vector
      decimal_number <- decimal_number %/% 2  # Update decimal_number for the next iteration
    }
  }
  
  return(paste(binary_representation, collapse = ""))  # Convert the vector to a string
}

# Input from the user
decimal_input <- as.integer(readline("Input a decimal number: "))

# Convert decimal to binary using the function
binary_output <- decimal_to_binary(decimal_input)

# Display the result
cat("The binary number is:", binary_output, "\n")






# Function to convert decimal to hexadecimal
decimal_to_hexadecimal <- function(decimal_number) {
  hexadecimal <- as.hexmode(decimal_number)
  return(as.character(hexadecimal))
}

# Input a decimal number
decimal_number <- as.numeric(readline("Input a decimal number: "))

# Convert to hexadecimal
hexadecimal_number <- decimal_to_hexadecimal(decimal_number)

# Display the result
cat("The hexadecimal number is :", hexadecimal_number, "\n")








# Function to convert decimal to octal
decimal_to_octal <- function(decimal_number) {
  octal_representation <- integer(0)  # Initialize an empty integer vector
  
  # Handle the case when the input is 0 separately
  if (decimal_number == 0) {
    octal_representation <- c(0)
  } else {
    # Loop to calculate octal digits
    while (decimal_number > 0) {
      remainder <- decimal_number %% 8  # Get the remainder
      octal_representation <- c(remainder, octal_representation)  # Add remainder to the vector
      decimal_number <- decimal_number %/% 8  # Update decimal_number for the next iteration
    }
  }
  
  return(paste(octal_representation, collapse = ""))  # Convert the vector to a string
}

# Input from the user
decimal_input <- as.integer(readline("Input a decimal number: "))

# Convert decimal to octal using the function
octal_output <- decimal_to_octal(decimal_input)

# Display the result
cat("The octal number is:", octal_output, "\n")







# Function to convert binary to decimal
binary_to_decimal <- function(binary_num) {
  decimal_num <- 0
  binary_digits <- rev(strsplit(as.character(binary_num), "")[[1]])
  
  for (i in seq_along(binary_digits)) {
    decimal_num <- decimal_num + as.numeric(binary_digits[i]) * 2^(i - 1)
  }
  
  return(decimal_num)
}

# Taking input from the user
binary_input <- readline(prompt = "Input a binary number: ")

# Convert binary to decimal
decimal_result <- binary_to_decimal(binary_input)

# Display the result
cat("The decimal number:", decimal_result, "\n")




# Function to convert binary to hexadecimal
binary_to_hex <- function(binary_num) {
  # Using sprintf to format the result as hexadecimal
  hex_num <- sprintf("%X", as.integer(strtoi(binary_num, base = 2)))
  return(hex_num)
}

# Taking input from the user
binary_input <- readline(prompt = "Input a binary number: ")

# Calling the function to convert binary to hexadecimal
hex_output <- binary_to_hex(binary_input)

# Displaying the result
cat("The hexadecimal value:", hex_output, "\n")



# Function to convert binary to octal
binary_to_octal <- function(binary_num) {
  # Using sprintf to format the result as octal
  octal_num <- sprintf("%o", as.integer(strtoi(binary_num, base = 2)))
  return(octal_num)
}

# Taking input from the user
binary_input <- readline(prompt = "Input a binary number: ")

# Calling the function to convert binary to octal
octal_output <- binary_to_octal(binary_input)

# Displaying the result
cat("The equivalent octal value of", binary_input, "is:", octal_output, "\n")







# Creating the data frame
id <- 1:10
name <- letters[1:10]
age <- sample(18:22, 10, replace = TRUE)
score <- sample(1:50, 10, replace = TRUE)
student <- data.frame(id, name, age, score)

# (i) Print the range of the score attribute
cat("Range of the score attribute:", range(student$score), "\n")

# (ii) Print the details of those students whose score is more than 30
cat("Details of students with score > 30:\n")
print(student[student$score > 30, ])

# (iii) Print the details of those students who have received the maximum score
max_score <- max(student$score)
cat("Details of students with maximum score:\n")
print(student[student$score == max_score, ])

# (iv) Print the names of those students whose age is less than 20
cat("Names of students with age < 20:", student$name[student$age < 20], "\n")

# (v) Print the identities of those students whose score is more than the mean of all the score values
mean_score <- mean(student$score)
cat("Identities of students with score > mean score:\n")
print(student$id[student$score > mean_score])







# Create a dataframe with 40 columns
df <- as.data.frame(matrix(sample(1:5, 2000, T), ncol=40))

# Sort the dataframe on all 40 columns, from left to right, in increasing order
df_sorted_increasing <- df[do.call(order, as.data.frame(df)), ]

# Sort the dataframe on all 40 columns, from left to right, in decreasing order
df_sorted_decreasing <- df[do.call(order, as.data.frame(-df)), ]

# Sort the dataframe on all 40 columns, from right to left, in increasing order
df_sorted_reverse_increasing <- df[do.call(order, as.data.frame(df[, ncol(df):1])), ]

# Display the results
print("Sorted in increasing order:")
print(df_sorted_increasing)

print("Sorted in decreasing order:")
print(df_sorted_decreasing)

print("Sorted in reverse increasing order:")
print(df_sorted_reverse_increasing)




# Function to convert decimal to hexadecimal
decimal_to_hexadecimal <- function(decimal_number) {
  hexadecimal <- as.hexmode(decimal_number)
  return(as.character(hexadecimal))
}

# Input a decimal number
decimal_number <- as.numeric(readline("Input a decimal number: "))

# Convert to hexadecimal
hexadecimal_number <- decimal_to_hexadecimal(decimal_number)

# Display the result
cat("The hexadecimal number is :", hexadecimal_number, "\n")
