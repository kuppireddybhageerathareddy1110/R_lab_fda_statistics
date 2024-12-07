# Create the data for the histogram
x <- c(7, 13, 20, 8, 36, 22, 12, 40, 31, 33, 18)

# Create a histogram
hist(
  x,
  main = "Histogram of Given Data",  # Set the title of the chart
  col = "lightblue",  # Set the color of the bars
  border = "blue",  # Set the border color
  xlab = "Values",  # Set the x-axis label
  ylab = "Frequency"  # Set the y-axis label
)


# Create the data frame
df <- data.frame(
  a = c(rep("A", 3), rep("B", 3), rep("C", 2)),
  b = c(1, 1, 2, 4, 1, 1, 2, 2)
)

# i. Find the duplicate values in the data frame
duplicates <- df[duplicated(df), ]
print("Duplicate rows in 'df':")
print(duplicates)

# ii. Extract duplicate elements from the data frame
duplicate_elements <- df[duplicated(df), ]
print("Extracted duplicate elements:")
print(duplicate_elements)

# iii. Extract unique elements from the data frame
unique_elements <- df[!duplicated(df), ]
print("Extracted unique elements:")
print(unique_elements)

# iv. Print the indices of duplicate elements
duplicate_indices <- which(duplicated(df))
print("Indices of duplicate elements:")
print(duplicate_indices)

# v. Count the number of unique elements in the data frame
num_unique_elements <- length(unique(paste(df$a, df$b, sep = ",")))
print("Number of unique elements in 'df':")
print(num_unique_elements)




# Function to reverse a given number
def reverse_number(n):
  # Convert the number to a string
  str_n = str(n)
# Reverse the string
reversed_str_n = str_n[::-1]
# Convert back to an integer
return int(reversed_str_n)

# Example number
n = 12345

# Get the reverse of the given number
reversed_number = reverse_number(n)

print("Original number:", n)
print("Reversed number:", reversed_number)
