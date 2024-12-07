# Load the dataset
data(mtcars)

# Print the structure of the dataset
str(mtcars)

# Use head() command to print the first 10 observations
head(mtcars, 10)

# Use tail() command to print the last 15 observations
tail(mtcars, 15)

# Sort the observations in increasing order based on the values in the column "mpg"
mtcars_sorted_mpg <- mtcars[order(mtcars$mpg), ]
mtcars_sorted_mpg
# Sort the observations in decreasing order based on the values in the column "cyl"
mtcars_sorted_cyl <- mtcars[order(mtcars$cyl, decreasing = TRUE), ]
mtcars_sorted_cyl
# Sort the observations in increasing order based on the values in both "mpg" and "cyl"
mtcars_sorted_mpg_cyl <- mtcars[order(mtcars$mpg, mtcars$cyl), ]
mtcars_sorted_mpg_cyl
# Sort the observations in decreasing order based on the values in both "mpg" and "cyl"
mtcars_sorted_mpg_cyl_desc <- mtcars[order(mtcars$mpg, mtcars$cyl, decreasing = TRUE), ]
mtcars_sorted_mpg_cyl_desc
# Sort the observations by column "mpg" in increasing order and column "cyl" in decreasing order
mtcars_sorted_mpg_cyl_mix <- mtcars[order(mtcars$mpg, mtcars$cyl, decreasing = c(FALSE, TRUE)), ]
mtcars_sorted_mpg_cyl_mix





x<-c(9:20,1:5,3:7,0:8)
duplicated_vector<-duplicated(x)
duplicated_vector
duplicated(x,fromLast=TRUE)
#duplicated(x): By default, it checks for duplicates starting from the first occurrence. If an element appears later in the vector, it's not considered a duplicate.
#duplicated(x, fromLast = TRUE): This variation checks for duplicates starting from the last occurrence. If an element appears earlier, it's not considered a duplicate.
duplicates<-x[duplicated_vector]
duplicates
unique_elements<-unique(x)
unique_elements
duplicates_from_last <- x[duplicated(x, fromLast = TRUE)]
print("Duplicate elements in different order:")
print(duplicates_from_last)
unique_elements_order <- unique(x[duplicated(x, fromLast = TRUE)])
print("Unique elements in different order:")
print(unique_elements_order)
indices_duplicates <- which(duplicated_vector)
print("Indices of duplicate elements:")
print(indices_duplicates)
indices_unique <- which(!duplicated_vector)
print("Indices of unique elements:")
print(indices_unique)
num_unique_elements <- length(unique_elements)
print("Number of unique elements in x:")
print(num_unique_elements)
num_duplicate_elements <- length(duplicates)
print("Number of duplicate elements in x:")
print(num_duplicate_elements)




a <- c(rep("A", 3), rep("B", 3), rep("C", 2))
b <- c(1, 1, 2, 4, 1, 1, 2, 2)
df <- data.frame(a, b)
df
duplicated_vector <- duplicated(df)
print("Logical vector indicating duplicate values in dataframe:")
print(duplicated_vector)
duplicates_df <- df[duplicated_vector, ]
print("Duplicate elements in dataframe:")
print(duplicates_df)
unique_df <- unique(df)
print("Unique elements in dataframe:")
print(unique_df)
indices_duplicates_df <- which(duplicated_vector)
print("Indices of duplicate elements in dataframe:")
print(indices_duplicates_df)
indices_unique_df <- which(!duplicated_vector)
print("Indices of unique elements in dataframe:")
print(indices_unique_df)
num_unique_elements_df <- nrow(unique_df)
print("Number of unique elements in dataframe:")
print(num_unique_elements_df)
num_duplicate_elements_df <- nrow(duplicates_df)
print("Number of duplicate elements in dataframe:")
print(num_duplicate_elements_df)



# Print the dataset iris
print(iris)

# Print the structure of the dataset iris
str(iris)

# Print the summary of all the variables of the dataset iris
summary_iris <- summary(iris)
print("Summary of all variables in the dataset iris:")
print(summary_iris)

# How many variables (columns) are in the dataset iris
num_variables <- ncol(iris)
print("Number of variables (columns) in the dataset iris:")
print(num_variables)

# How many observations (rows) are in the dataset iris
num_observations <- nrow(iris)
print("Number of observations (rows) in the dataset iris:")
print(num_observations)

# Use duplicated() function to print the logical vector indicating duplicate values in the dataset iris
duplicated_vector_iris <- duplicated(iris)
print("Logical vector indicating duplicate values in the dataset iris:")
print(duplicated_vector_iris)

# Extract duplicate elements from the dataset iris
duplicates_iris <- iris[duplicated_vector_iris, ]
print("Duplicate elements in the dataset iris:")
print(duplicates_iris)

# Extract unique elements from the dataset iris
unique_iris <- unique(iris)
print("Unique elements in the dataset iris:")
print(unique_iris)

# Print the indices of duplicate elements in the dataset iris
indices_duplicates_iris <- which(duplicated_vector_iris)
print("Indices of duplicate elements in the dataset iris:")
print(indices_duplicates_iris)

# Print the indices of unique elements in the dataset iris
indices_unique_iris <- which(!duplicated_vector_iris)
print("Indices of unique elements in the dataset iris:")
print(indices_unique_iris)

# How many unique elements are in the dataset iris
num_unique_elements_iris <- nrow(unique_iris)
print("Number of unique elements in the dataset iris:")
print(num_unique_elements_iris)

# How many duplicate elements are in the dataset iris
num_duplicate_elements_iris <- nrow(duplicates_iris)
print("Number of duplicate elements in the dataset iris:")
print(num_duplicate_elements_iris)



# Print the dataset airquality
print(airquality)

# Print the structure of the dataset airquality
str(airquality)

# Print the summary of all variables in the dataset airquality
summary_airquality <- summary(airquality)
print("Summary of all variables in the dataset airquality:")
print(summary_airquality)

# How many variables (columns) are in the dataset airquality
num_variables_airquality <- ncol(airquality)
print("Number of variables (columns) in the dataset airquality:")
print(num_variables_airquality)

# How many observations (rows) are in the dataset airquality
num_observations_airquality <- nrow(airquality)
print("Number of observations (rows) in the dataset airquality:")
print(num_observations_airquality)

# Use is.na() function to find whether any missing values are in the dataset airquality
any_missing_values <- any(is.na(airquality))
print("Are there any missing values in the dataset airquality?")
print(any_missing_values)

# Print the indices of the missing values in column major representation
indices_missing_column_major <- which(is.na(airquality), arr.ind = TRUE)
print("Indices of missing values in column major representation:")
print(indices_missing_column_major)

# Print the indices of the missing values in row major representation
indices_missing_row_major <- which(is.na(airquality), arr.ind = FALSE)
print("Indices of missing values in row major representation:")
print(indices_missing_row_major)

# Print indices of the missing values in row and column number-wise
indices_missing_row_col <- which(is.na(airquality), arr.ind = TRUE)
print("Indices of missing values in row and column number-wise:")
print(indices_missing_row_col)

# How many missing values are in the dataset airquality
num_missing_values <- sum(is.na(airquality))
print("Number of missing values in the dataset airquality:")
print(num_missing_values)

# Which variables are the missing values concentrated in
variables_with_missing_values <- names(airquality)[colSums(is.na(airquality)) > 0]
print("Variables with missing values:")
print(variables_with_missing_values)

# Omit all rows containing missing values
airquality_no_missing <- airquality[complete.cases(airquality), ]
print("Records without missing values using complete.cases():")
print(airquality_no_missing)

# Omit all rows containing missing values using na.omit()
airquality_no_missing_omit <- na.omit(airquality)
print("Records without missing values using na.omit():")
print(airquality_no_missing_omit)

# Omit all rows containing missing values using na.exclude()
airquality_no_missing_exclude <- na.exclude(airquality)
print("Records without missing values using na.exclude():")
print(airquality_no_missing_exclude)

# Print the records containing missing values using complete.cases()
airquality_missing <- airquality[!complete.cases(airquality), ]
print("Records containing missing values using complete.cases():")
print(airquality_missing)



# Consider a numeric vector
x <- c(3, 4, 5, 6, 7, 8)

# Recode the values less than 6 with zero in the vector x
x[x < 6] <- 0
print("After recoding values less than 6 with zero:")
print(x)

# Recode the values between 4 and 8 with 100
x[(x >= 4) & (x <= 8)] <- 100
print("After recoding values between 4 and 8 with 100:")
print(x)

# Recode the values that are less than 5 or greater than 6 with 50
x[(x < 5) | (x > 6)] <- 50
print("After recoding values less than 5 or greater than 6 with 50:")
print(x)

# Recode the values less than 6 with NA in the vector x
x[x < 6] <- NA
print("After recoding values less than 6 with NA:")
print(x)
sum(is.na(x))

# Recode the values between 4 and 8 with NA
x[(x >= 4) & (x <= 8)] <- NA
print("After recoding values between 4 and 8 with NA:")
print(x)
 sum(is.na(x))

# Recode the values that are less than 5 or greater than 6 with NA
x[(x < 5) | (x > 6)] <- NA
print("After recoding values less than 5 or greater than 6 with NA:")
print(x)
 sum(is.na(x))

# Find mean of x (exclude NA values)
mean_x <- mean(x, na.rm = TRUE)
print("Mean of x (exclude NA values):")
print(mean_x)

# Find median of x (exclude NA values)
median_x <- median(x, na.rm = TRUE)
print("Median of x (exclude NA values):")
print(median_x)

# Recode the values less than 6 with "NA" (enclose with double quotes) in the vector x
x[x < 6] <- "NA"
print("After recoding values less than 6 with \"NA\":")
print(x)
 sum(is.na(x))

# Recode the values between 4 and 8 with "NA"
x[(x >= 4) & (x <= 8)] <- "NA"
print("After recoding values between 4 and 8 with \"NA\":")
print(x)
 sum(is.na(x))

# Recode the values that are less than 5 or greater than 6 with "NA"
x[(x < 5) | (x > 6)] <- "NA"
print("After recoding values less than 5 or greater than 6 with \"NA\":")
print(x)
sum(is.na(x))

# Find mean of x (exclude "NA" values)
mean_x_string_na <- mean(as.numeric(x), na.rm = TRUE)
print("Mean of x (exclude \"NA\" values):")
print(mean_x_string_na)

# Find median of x (exclude "NA" values)
median_x_string_na <- median(as.numeric(x), na.rm = TRUE)
print("Median of x (exclude \"NA\" values):")
print(median_x_string_na)











# Given vectors
A <- c(3, 2, NA, 5, 3, 7, NA, NA, 5, 2, 6)
B <- c(3, 2, NA, 5, 3, 7, NA, "NA", 5, 2, 6)

# Find the length of vector A
length_A <- length(A)
print("Length of vector A:")
print(length_A)

# Find the length of vector B
length_B <- length(B)
print("Length of vector B:")
print(length_B)

# Sort the values in vector A and put it in p
p <- sort(A)
print("Sorted vector A:")
print(p)

# Find the length of p
length_p <- length(p)
print("Length of sorted vector A (p):")
print(length_p)

# Sort the values in vector B and put it in q
q <- sort(B)
print("Sorted vector B:")
print(q)

# Find the length of q
length_q <- length(q)
print("Length of sorted vector B (q):")
print(length_q)






# Create the "buildings" dataframe
buildings <- data.frame(location = c(1, 2, 3), name = c("building1", "building2", "building3"))

# Create the "surveydata" dataframe
surveydata <- data.frame(survey = c(1, 1, 1, 2, 2, 2), 
                         location = c(1, 2, 3, 2, 3, 1), 
                         efficiency = c(51, 64, 70, 71, 80, 58))

# Use the merge() function to merge the dataframes by "location"
buildingStats <- merge(buildings, surveydata, by = "location")

# Print the merged dataframe
print("Merged dataframe buildingStats:")
print(buildingStats)





# Create the "buildings" dataframe
buildings <- data.frame(location=c(1, 2, 3), name=c("building1", "building2", "building3"))

# Create the "surveydata" dataframe with different key variable names
surveydata <- data.frame(survey=c(1,1,1,2,2,2), LocationID=c(1,2,3,2,3,1), efficiency=c(51,64,70,71,80,58))

# Perform inner join
inner_join_result <- merge(buildings, surveydata, by.x = "location", by.y = "LocationID")
print("Inner Join:")
print(inner_join_result)

# Perform outer join (full join)
outer_join_result <- merge(buildings, surveydata, by.x = "location", by.y = "LocationID", all = TRUE)
print("Outer Join (Full Join):")
print(outer_join_result)

# Perform left outer join
left_outer_join_result <- merge(buildings, surveydata, by.x = "location", by.y = "LocationID", all.x = TRUE)
print("Left Outer Join:")
print(left_outer_join_result)

# Perform right outer join
right_outer_join_result <- merge(buildings, surveydata, by.x = "location", by.y = "LocationID", all.y = TRUE)
print("Right Outer Join:")
print(right_outer_join_result)

# Perform cross join (cartesian join)
cross_join_result <- merge(buildings, surveydata, by = NULL)
print("Cross Join (Cartesian Join):")
print(cross_join_result)





# Create the "buildings" dataframe
buildings <- data.frame(location=c(1, 2, 3), name=c("building1", "building2", "building3"))

# Create another "buildings2" dataframe
buildings2 <- data.frame(location=c(5, 4, 6), name=c("building5", "building4", "building6"))

# Merge the rows of the two dataframes using rbind()
allBuildings <- rbind(buildings, buildings2)

# Print the new dataframe "allBuildings"
print("Merged dataframe allBuildings:")
print(allBuildings)



# Data for Super Heroes
df_super_heroes <- data.frame(
  Name = c("Magneto", "Storm", "Mystique", "Batman", "Joker", "Catwoman", "Hellboy"),
  Bad = c(NA, "good", "bad", "good", "bad", "bad", "good"),
  Alignment = c("male", "female", "female", "male", "male", "female", "male"),
  Gender = c("Marvel", "Marvel", "Marvel", "DC", "DC", "DC", "Dark Horse Comics")
)

# Data for Publishers
df_publishers <- data.frame(
  Publisher = c("Marvel", "DC", "Image Comics", "Dark Horse Comics")
)

# Include year founded for publishers (assuming this information is available)
df_publishers$Year_Founded <- c(1939, 1934, 1992, 2011)  # Modify year values as needed

inner_join_result <- merge(df_super_heroes, df_publishers, by.x = "Gender", by.y = "Publisher")
print("Inner Join:")
print(inner_join_result)

left_join_result <- merge(df_super_heroes, df_publishers, by.x = "Gender", by.y = "Publisher", all.x = TRUE)
print("Left Join:")
print(left_join_result)

right_join_result <- merge(df_super_heroes, df_publishers, by.x = "Gender", by.y = "Publisher", all.y = TRUE)
print("Right Join:")
print(right_join_result)

full_join_result <- merge(df_super_heroes, df_publishers, by.x = "Gender", by.y = "Publisher", all = TRUE)
print("Full (Outer) Join:")
print(full_join_result)








# Load dplyr package
library(dplyr)

# Create data frames for Super Heroes and Publishers
super_heroes <- data.frame(
  Name = c("Magneto", "Storm", "Mystique", "Batman", "Joker", "Catwoman", "Hellboy"),
  Alignment = c("bad", "good", "bad", "good", "bad", "bad", "good"),
  Gender = c("male", "female", "female", "male", "male", "female", "male"),
  Publisher = c("Marvel", "Marvel", "Marvel", "DC", "DC", "DC", "Dark Horse Comics")
)
super_heroes
publishers <- data.frame(
  Publisher = c("DC", "Marvel", "Image"),
  Year_Founded = c(1934, 1939, 1992)
)
publishers
# Perform join operations
inner_join_result <- inner_join(super_heroes, publishers, by = "Publisher")
inner_join_result
left_join_result <- left_join(super_heroes, publishers, by = "Publisher")
left_join_result
right_join_result <- right_join(super_heroes, publishers, by = "Publisher")
right_join_result
full_join_result <- full_join(super_heroes, publishers, by = "Publisher")
full_join_result

# You can view the results using the View() function or print them to the console



# Create the dataframe 'dtf'
dtf <- data.frame(
  city = c("Franklin", "Spring hill", "Rockvale", "Fairview", "Waverly"),
  salesrep = c("thomas", "thomas", "jones", "thomas", "jones"),
  employees = c(17, 20, 11, 22, 26),
  monthsales = c(15100, 22500, 13800, 27300, 19900)
)
dtf
# Now, you can proceed with the sorting tasks as described earlier.
# Assuming dtf is already created and has the columns: city, salesrep, employees, monthsales

# a) Sort the dataframe in descending order by monthsales
dtf_sorted_by_sales <- dtf[order(-dtf$monthsales), ]

# b) Sort the dataframe by salesrep in ascending order and then by monthsales in descending order
dtf_sorted_by_rep_sales <- dtf[order(dtf$salesrep, -dtf$monthsales), ]

# Display the sorted dataframes
print(dtf_sorted_by_sales)
print(dtf_sorted_by_rep_sales)


# Create a matrix with duplicate elements
my_matrix <- matrix(c(1, 2, 3, 4, 1, 2, 3, 4, 5, 6, 5, 7, 8, 9, 10), nrow = 4, ncol = 5, byrow = TRUE)

# Print the original matrix
cat("Original Matrix:\n")
print(my_matrix)

# Print unique elements from the matrix
unique_elements <- unique(as.vector(my_matrix))
cat("Unique Elements:\n")
print(unique_elements)



# Install and load necessary packages
install.packages("readxl")
install.packages("writexl")

library(readxl)
library(writexl)

# Read the first file (Create an Excel file and name it as file1)
Data1 <- read_excel("file1.xlsx")
print("Data from file1:")
print(head(Data1))

# Read the second file (Create an Excel file and name it as file2)
Data2 <- read_excel("file2.xlsx")
print("Data from file2:")
print(head(Data2))

# Merge file1 and file2 using merge() function
Data3 <- merge(Data1, Data2, all.x = TRUE, all.y = TRUE)
print("Merged Data:")
print(head(Data3))

# Write the merged data to a new Excel file named "final.xlsx"
write_xlsx(Data3, "final.xlsx")
print("Merged Data written to final.xlsx.")




#15.Practice the following.
#Reading Files
install.packages("readxl")
library(readxl)

# read first file (Create a excel file and name it as file1)
Data1 <- read_excel("file1.xlsx")
head(Data1)

# read second file (Create a excel file and name it as file2)
Data2 <- read_excel("file2.xlsx")
head(Data2)

# merge file 1 and file 2
Data3 <- merge(Data1, Data2, all.x = TRUE, all.y = TRUE)
head(Data3)

#Writing Files
install.packages("writexl")
library(writexl)
write_xlsx(Data1, "final.xlsx")




#12
data(cars)
print(cars)
dim(cars)
str(cars)

getwd()
