# Create the vector
x <- c(1, 5, 9, 67, NA, 32, NA, NA, 12)

# Check for missing values
is_na <- is.na(x)
complete_cases <- complete.cases(x)

print("Using is.na:")
print(is_na)  # Shows TRUE for missing values and FALSE for others

print("\nUsing complete.cases:")
print(complete_cases)  # Shows TRUE for rows without missing values, FALSE otherwise

# Count missing values
n_missing_sum <- sum(is.na(x))


print("\nNumber of missing values (sum):")
print(n_missing_sum)  # Output: 3

# Handling missing values
print("\nHandling missing values:")

# 1. Omitting missing values
omitted <- x[!is.na(x)]
print("Omitted:", omitted)

# 2. Replacing with 0
replaced_with_zero <- x
replaced_with_zero[is.na(x)] <- 0
print("Replaced with 0:", replaced_with_zero)

# 3. Replacing with previous element
replaced_with_prev <- x
for (i in 2:length(x)) {
  if (is.na(x[i])) {
    replaced_with_prev[i] <- x[i - 1]
  }
}
print("Replaced with previous element:", replaced_with_prev)

# 4. Replacing with mean
replaced_with_mean <- x
replaced_with_mean[is.na(x)] <- mean(x, na.rm = TRUE)
print("Replaced with mean:", replaced_with_mean)

# 5. Replacing with median
replaced_with_median <- x
replaced_with_median[is.na(x)] <- median(x, na.rm = TRUE)
print("Replaced with median:", replaced_with_median)

# 6. Replacing with sum (not recommended as it might not be statistically accurate)
replaced_with_sum <- x
replaced_with_sum[is.na(x)] <- sum(x, na.rm = TRUE)
print("Replaced with sum:", replaced_with_sum)




















# Given vector
x <- c(1, 5, 9, 67, NA, 32, NA, NA, 12)

# Check for missing values using is.na()
print("Missing values using is.na():")
print(is.na(x))

# Check for missing values using complete.cases()
print("Missing values using complete.cases():")
print(!complete.cases(x))

# Count missing values
num_missing <- sum(is.na(x))
print("Number of missing values:")
print(num_missing)

# Count missing values using colSums
missing_colsum <- colSums(is.na(x))
print("Column sums of missing values:")
print(missing_colsum)

# Handling missing values using omit
x_no_missing <- na.omit(x)
print("Vector after omitting missing values:")
print(x_no_missing)

# Handling missing values by replacing with 0
x_replace_zero <- ifelse(is.na(x), 0, x)
print("Vector after replacing missing values with 0:")
print(x_replace_zero)

install.packages("zoo")

# Handling missing values by replacing with previous element
x_replace_previous <- zoo::na.locf(x, na.rm = FALSE)
print("Vector after replacing missing values with previous element:")
print(x_replace_previous)

# Handling missing values by replacing with mean
x_replace_mean <- ifelse(is.na(x), mean(x, na.rm = TRUE), x)
print("Vector after replacing missing values with mean:")
print(x_replace_mean)

# Handling missing values by replacing with median
x_replace_median <- ifelse(is.na(x), median(x, na.rm = TRUE), x)
print("Vector after replacing missing values with median:")
print(x_replace_median)

# Handling missing values by replacing with sum
x_replace_sum <- ifelse(is.na(x), sum(x, na.rm = TRUE), x)
print("Vector after replacing missing values with sum:")
print(x_replace_sum)





# Create the vector
x <- c(1, 5, 9, 67, NA, 32, NA, NA, 12)

# Check for missing values
is_na <- is.na(x)
complete_cases <- complete.cases(x)

print("Using is.na:")
print(is_na)  # Shows TRUE for missing values and FALSE for others

print("\nUsing complete.cases:")
print(complete_cases)  # Shows TRUE for rows without missing values, FALSE otherwise

# Count missing values
n_missing_sum <- sum(is.na(x))


print("\nNumber of missing values (sum):")
print(n_missing_sum)  # Output: 3

# Handling missing values
print("\nHandling missing values:")

# 1. Omitting missing values
omitted <- x[!is.na(x)]
print( omitted)

# 2. Replacing with 0
replaced_with_zero <- x
replaced_with_zero[is.na(x)] <- 0
print( replaced_with_zero)

# 3. Replacing with previous element
replaced_with_prev <- x
for (i in 2:length(x)) {
  if (is.na(x[i])) {
    replaced_with_prev[i] <- x[i - 1]
  }
}
print( replaced_with_prev)

# 4. Replacing with mean
replaced_with_mean <- x
replaced_with_mean[is.na(x)] <- mean(x, na.rm = TRUE)
print( replaced_with_mean)

# 5. Replacing with median
replaced_with_median <- x
replaced_with_median[is.na(x)] <- median(x, na.rm = TRUE)
print( replaced_with_median)

# 6. Replacing with sum (not recommended as it might not be statistically accurate)
replaced_with_sum <- x
replaced_with_sum[is.na(x)] <- sum(x, na.rm = TRUE)
print( replaced_with_sum)





#5
df <- data.frame(
  ID = c(1, 2, 3, NA, 5),
  Name = c("John", "Alice", NA, "Bob", "Jane")
)
df
is_na_df <- is.na(df)
complete_cases_df <- complete.cases(df)
print(is_na_df)
print(complete_cases_df)
n_missing_sum <- sum(is.na(df))
n_missing_colsums <- colSums(is.na(df))
print(n_missing_sum)
print(n_missing_colsums)
omitted_df <- df[!rowSums(is.na(df)) == 2, ]  
print( omitted_df)
replaced_with_zero_df <- df
replaced_with_zero_df[is.na(df)] <- 0
print( replaced_with_zero_df)
replaced_with_prev_df <- df  
for (i in 2:nrow(df)) {
  if (is.na(df[i, "Name"])) {
    replaced_with_prev_df[i, "Name"] <- df[i - 1, "Name"]
   }
 }
 print( replaced_with_prev_df)
 replaced_with_mean_df <- df 
 replaced_with_mean_df[is.na(df)] <- sapply(df, mean, na.rm = TRUE)  # Use sapply for column-wise mean
 print( replaced_with_mean_df)
 
 replaced_with_median_df <- df  
  replaced_with_median_df[is.na(df)] <- sapply(df, median, na.rm = TRUE) # Use sapply for column-wise median
  print( replaced_with_median_df)
  
  replaced_with_sum_df <- df
   replaced_with_sum_df[is.na(df)] <- sapply(df, sum, na.rm = TRUE)  # Use sapply for column-wise sum
   print(replaced_with_sum_df)
   
   
   
   
   
   # Create a sample dataframe
   df <- data.frame(
     ID = c(1, 2, 3, NA, 5),
     Name = c("John", "Alice", NA, "Bob", "Jane")
   )
   
   # Display the original dataframe
   print("Original DataFrame:")
   print(df)
   
   # Check for missing values
   is_na_df <- is.na(df)
   complete_cases_df <- complete.cases(df)
   print("is.na(df):")
   print(is_na_df)
   print("complete.cases(df):")
   print(complete_cases_df)
   
   # Sum of missing values
   n_missing_sum <- sum(is.na(df))
   n_missing_colsums <- colSums(is.na(df))
   print("Total missing values:")
   print(n_missing_sum)
   print("Column-wise missing values sum:")
   print(n_missing_colsums)
   
   # Omit rows with 2 or more missing values
   omitted_df <- df[!rowSums(is.na(df)) == 2, ]
   print("Omitted rows with 2 or more missing values:")
   print(omitted_df)
   
   # Replace missing values with 0
   replaced_with_zero_df <- df
   replaced_with_zero_df[is.na(df)] <- 0
   print("Replaced missing values with 0:")
   print(replaced_with_zero_df)
   
   # Replace missing values with the previous value in the column
   replaced_with_prev_df <- df
   for (i in 2:nrow(df)) {
     if (is.na(df[i, "Name"])) {
       replaced_with_prev_df[i, "Name"] <- df[i - 1, "Name"]
     }
   }
   print("Replaced missing values with the previous value:")
   print(replaced_with_prev_df)
   
   
   #Replace missing values with mean, median, and sum (imputation)
   print("\nDataframe after replacing missing values with mean:")
   df_replace_mean <- df
   df_replace_mean$ID[is.na(df_replace_mean$ID)] <- mean(df_replace_mean$ID, na.rm = TRUE)
   df_replace_mean$Name[is.na(df_replace_mean$Name)] <- "NA"  # Replace with specific string for categorical data
   print(df_replace_mean)
   
   print("\nDataframe after replacing missing values with median:")
   df_replace_median <- df
   df_replace_median$ID[is.na(df_replace_median$ID)] <- median(df_replace_median$ID, na.rm = TRUE)
   df_replace_median$Name[is.na(df_replace_median$Name)] <- "NA"
   print(df_replace_median)
   
   print("\nDataframe after replacing missing values with sum (not applicable for categorical data):")
   # Imputing with sum is not appropriate for categorical data like 'Name'
   df_replace_sum <- df
   df_replace_sum$ID[is.na(df_replace_sum$ID)] <- sum(df_replace_sum$ID, na.rm = TRUE)
   print(df_replace_sum)
   
   
   
   
   
   # Replace missing values with column-wise mean
   replaced_with_mean_df <- df
   replaced_with_mean_df[is.na(df)] <- lapply(df, function(x) ifelse(is.na(x), mean(x, na.rm = TRUE), x))
   print("Replaced missing values with column-wise mean:")
   print(replaced_with_mean_df)
   
   # Replace missing values with column-wise median
   replaced_with_median_df <- df
   replaced_with_median_df[is.na(df)] <- lapply(df, function(x) ifelse(is.na(x), median(x, na.rm = TRUE), x))
   print("Replaced missing values with column-wise median:")
   print(replaced_with_median_df)
   
   # Replace missing values with column-wise sum of non-missing values
   replaced_with_sum_df <- df
   replaced_with_sum_df[] <- lapply(df, function(x) ifelse(is.na(x), sum(x, na.rm = TRUE), x))
   print("Replaced missing values with column-wise sum of non-missing values:")
   print(replaced_with_sum_df)
   
   
   
   
   
   
   
   
   #6
   # Print the dataset
   print(airquality)
   
   # Print the structure of the dataset
   str(airquality)
   
   # Print the summary of all variables
   summary(airquality)
   
   # Number of columns
   ncol(airquality)
   
   # Number of rows
   nrow(airquality)
   
   # Check for missing values
   anyNA(airquality)
   
   # Indices of missing values in column-major representation
   which(is.na(airquality), arr.ind = TRUE)
   
   # Indices of missing values in row-major representation
   which(is.na(airquality), arr.ind = FALSE)
   
   # Indices with row and column numbers
   which(is.na(airquality), arr.ind = TRUE)
   
   # Number of missing values
   sum(is.na(airquality))
   
   # Variables with missing values
   colnames(airquality)[apply(is.na(airquality), 1, any)]
   
   # Omitting rows with missing values (not recommended in many cases)
   airquality_no_na <- airquality[complete.cases(airquality), ]
   airquality_no_na
   # Records without missing values using complete.cases()
   airquality_complete <- airquality[complete.cases(airquality), ]
   airquality_complete
   # Records without missing values using na.omit()
   airquality_na_omit <- na.omit(airquality)
   airquality_na_omit
   # Records without missing values using na.exclude()
   airquality_na_exclude <- na.exclude(airquality)
   airquality_na_exclude
   # Records with missing values using complete.cases() (opposite of above)
   airquality_missing <- airquality[!complete.cases(airquality), ]
   airquality_missing