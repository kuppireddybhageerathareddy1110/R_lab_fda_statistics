# Required Libraries
#if (!require(data.table)) install.packages("data.table")  # Install if not installed
#library(data.table)  # Load the data.table package

# Sample Data
data <- data.frame(
  price = c(52.00, 54.75, 57.50, 57.50, 59.75, 62.50, 64.75, 67.25, 67.50, 69.75,
            70.00, 75.50, 77.50, 78.00, 81.25, 82.50, 86.25, 87.50, 88.00, 92.00),
  FloorArea = c(1225, 1230, 1200, 1000, 1420, 1450, 1380, 1510, 1400, 1550, 1720,
                1700, 1660, 1800, 1830, 1790, 2010, 2000, 2100, 2240),
  Rooms = c(3, 3, 3, 24.8, 4, 3, 4, 49.2, 50.0, 6, 6, 5, 6, 70.7, 65.6, 6, 6, 6,
            85.6, 73.4),
  Age = c(6.2, 7.5, 4.2, 1.9, 5.2, 6.5, 4.5, 6.8, 3.4, 5.7, 7.3, 4.5, 6.8, 14,
          15, 2.3, 6.7, 3.4, 21, 18),
  CentralHeating = c("YES", "NO", "NO", "NO", "YES", "YES", "NO", "NO", "NO",
                     "YES", "YES", "NO", "YES", "YES", "YES", "NO", "YES", "NO", "YES", "YES")
)

# a) Number of Rows and Columns
num_rows <- nrow(data)  # Number of rows
num_columns <- ncol(data)  # Number of columns
cat("Number of rows:", num_rows, "\n")  # Output
cat("Number of columns:", num_columns, "\n")  # Output

# b) Dimension of the Data (using a single command)
print(dim(data))  # Returns the dimensions as a vector (rows, columns)

# c) Names of Variables (Column Names)
print(names(data))  # Output column names

# d) Top and Bottom Few Lines
print(head(data))  # Returns the first few rows
print(tail(data))  # Returns the last few rows

# e) First 5 Rows and First 3 Columns
first_five_first_three <- data[1:5, 1:3]  # Extract first 5 rows and first 3 columns
print("First 5 rows and first 3 columns:")
print(first_five_first_three)

# f) 1st, 3rd, 6th, and 10th row; 2nd, 4th, and 5th column
specific_rows_columns <- data[c(1, 3, 6, 10), c(2, 4, 5)]  # Extract specific rows and columns
print("1st, 3rd, 6th, and 10th row; 2nd, 4th, and 5th column:")
print(specific_rows_columns)

# g) Specific Row (e.g., Row 8) or Specific Column (e.g., Column 3)
specific_row <- data[8, ]  # Extracts the entire 8th row
print("Specific 8th row:")
print(specific_row)

specific_column <- data[, 3]  # Extracts the entire 3rd column
print("Specific 3rd column:")
print(specific_column)







# Given data for advertisement expenses and sales volume
advertisement_expenses <- c(11, 13, 14, 16, 16, 15, 15, 14, 13, 13)
sales_volume <- c(50, 50, 55, 60, 65, 65, 65, 60, 60, 50)

# Calculate the Pearson correlation coefficient
correlation <- cor(advertisement_expenses, sales_volume)

cat("Pearson correlation coefficient:", correlation, "\n")



# Given data for systolic blood pressure
blood_pressure <- c(
  120, 115, 94, 118, 111, 102, 102, 131, 105, 107, 115, 139, 115, 113, 114,
  105, 115, 134, 109, 109, 93, 118, 109, 106, 125, 150, 142, 119, 127, 141,
  149, 144, 142, 149, 161, 143, 140, 148, 149, 141, 146, 159, 152, 135, 134,
  161, 130, 125, 141, 148, 153, 145, 137, 147, 175
)

# Hypothesis:
# H0: The mean systolic blood pressure is 140 mmHg
# H1: The mean systolic blood pressure is not 140 mmHg

# Parameters
mu <- 140  # hypothesized mean
sigma <- 15  # given standard deviation
sample_mean <- mean(blood_pressure)
sample_size <- length(blood_pressure)

# Standard error
standard_error <- sigma / sqrt(sample_size)

# Z-score
z_score <- (sample_mean - mu) / standard_error

# Calculate the p-value for a two-tailed test
p_value <- 2 * pnorm(-abs(z_score))

# Significance level
alpha <- 0.05

cat("Z-score:", z_score, "\n")
cat("P-value:", p_value, "\n")

# Determine if the null hypothesis should be rejected
if (p_value < alpha) {
  cat("Reject the null hypothesis: The mean is not 140 mmHg.\n")
} else {
  cat("Fail to reject the null hypothesis: The mean is 140 mmHg.\n")
}










