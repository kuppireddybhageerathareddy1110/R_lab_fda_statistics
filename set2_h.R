# Function to check if a number is prime
is_prime <- function(num) {
  if (num <= 1) {
    return(FALSE)  # Numbers less than or equal to 1 are not prime
  }
  for (i in 2:sqrt(num)) {
    if (num %% i == 0) {
      return(FALSE)  # If num is divisible by i, it's not prime
    }
  }
  return(TRUE)  # If no divisors are found, it's prime
}

# Test with a given number
number <- 29
if (is_prime(number)) {
  cat(number, "is a prime number\n")
} else {
  cat(number, "is not a prime number\n")
}



# Function to convert binary string to integer
bin_to_int <- function(binary_str) {
  return(strtoi(binary_str, base = 2))
}

# Function to convert integer to binary string
int_to_bin <- function(integer, bits = 8) {
  bin <- as.character(intToBits(integer))
  bin <- paste(rev(bin[1:bits]), collapse = "")
  return(bin)
}

# Function to get one's complement of a binary string
ones_complement <- function(binary_str) {
  complement <- chartr("01", "10", binary_str)  # Flip the bits
  return(complement)
}

# Function to get two's complement of a binary string
twos_complement <- function(binary_str) {
  ones_comp <- ones_complement(binary_str)
  # Add 1 to one's complement
  twos_comp <- bin_to_int(ones_comp) + 1
  return(int_to_bin(twos_comp, nchar(binary_str)))
}

# Example with a binary string
original_binary <- "01101110"

ones_comp <- ones_complement(original_binary)
twos_comp <- twos_complement(original_binary)

cat("Original binary =", original_binary, "\n")
cat("After one's complement =", ones_comp, "\n")
cat("After two's complement =", twos_comp, "\n")





# Load the required package
library(dplyr)

# Import the 'morley' dataset
data("morley")

# i. Sort in decreasing order of "speed" and "Run"
sorted_desc <- morley %>%
  arrange(desc(speed), desc(Run))

print("Sorted in descending order of speed and Run:")
print(sorted_desc)

# ii. Sort in increasing order of "speed" and "Run"
sorted_asc <- morley %>%
  arrange(speed, Run)

print("Sorted in ascending order of speed and Run:")
print(sorted_asc)

# iii. Sort in increasing order of "speed" and decreasing order of "Run"
sorted_mix <- morley %>%
  arrange(speed, desc(Run))

print("Sorted in ascending order of speed and descending order of Run:")
print(sorted_mix)

# iv. Add a new column 'cartype' based on 'speed'
NewMorley <- morley %>%
  mutate(
    cartype = case_when(
      speed >= 1000 ~ "Sports",
      speed >= 800  ~ "SUV",
      TRUE          ~ "Passengertype"
    )
  )

print("NewMorley with 'cartype' column:")
print(NewMorley)

# v. Export the NewMorley dataframe to CSV
write.csv(NewMorley, "NewMorley.csv", row.names = FALSE)

# vi. Construct a pie chart to compare 'speed' distributions across different 'cartype'
library(ggplot2)

pie_data <- NewMorley %>%
  group_by(cartype) %>%
  summarise(count = n())

ggplot(pie_data, aes(x = "", y = count, fill = cartype)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  theme_void() +
  labs(title = "Distribution of 'speed' across different 'cartype'")


# Create a dataset for the pie chart
pie_data <- data.frame(
  cartype = c("Sports", "SUV", "Passengertype"),
  count = c(4, 7, 5)
)

# Convert data frame to a named vector
pie_counts <- setNames(pie_data$count, pie_data$cartype)

# Create a pie chart using the pie() function
pie(
  pie_counts,  # Data for the pie chart
  main = "Distribution of 'cartype'",  # Title of the pie chart
  col = c("red", "blue", "green"),  # Colors for each segment
  labels = names(pie_counts)  # Labels for each segment
)







import numpy as np

# Create an array with numbers between 5 and 20 using `arange`
one_d_array = np.arange(5, 21)  # end index is exclusive, so we use 21

print("One-dimensional array with numbers between 5 and 20:")
print(one_d_array)
