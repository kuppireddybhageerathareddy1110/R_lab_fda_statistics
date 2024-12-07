# Function to find factors of a given number
find_factors <- function(num) {
  factors <- c()  # initialize empty vector
  for (i in 1:num) {
    if (num %% i == 0) {  # check if `i` is a factor
      factors <- c(factors, i)  # append to factors list
    }
  }
  return(factors)
}

# Example: Find factors of 24
factors_24 = find_factors(24)
print(paste("Factors of 24:", paste(factors_24, collapse=", ")))





library(dplyr)

# Load the 'morley' dataset
data("morley")

# i. Sort in increasing order of "speed" and "Run"
sorted_morley_1 <- morley %>%
  arrange(speed, Run)

print("Sorted by speed and Run (both increasing):")
print(sorted_morley_1)

# ii. Sort in increasing order of "speed" and decreasing order of "Run"
sorted_morley_2 <- morley %>%
  arrange(speed, desc(Run))

print("Sorted by speed (increasing) and Run (decreasing):")
print(sorted_morley_2)

# iii. Add a new column "cartype" based on "speed" conditions
NewMorley <- morley %>%
  mutate(cartype = case_when(
    speed >= 1000 ~ "Sports",
    speed >= 800 ~ "SUV",
    TRUE ~ "Passenger"
  ))

print("NewMorley with added 'cartype' column:")
print(NewMorley)

# iv. Export NewMorley dataframe to NewMorley.csv
write.csv(NewMorley, "NewMorley.csv", row.names = FALSE)

# v. Construct a pie chart to compare distributions of "speed" across different "cartype"
library(ggplot2)

ggplot(NewMorley, aes(x = "", fill = cartype)) +
  geom_bar(width = 1, stat = "count") +
  coord_polar(theta = "y") +
  labs(title = "Distribution of speed across different cartypes") +
  theme_minimal()






import numpy as np

# Original array
original_array = np.array([12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23])

# Reverse the array
reversed_array = original_array[::-1]

# Output
print("Original array:")
print(original_array)

print("Reversed array:")
print(reversed_array)
