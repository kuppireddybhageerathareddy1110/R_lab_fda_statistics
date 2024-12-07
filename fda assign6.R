# Original vector
x <- c(3, 4, 5, 6, 7, 8)
x
# Recode values less than 6 with zero
x[x < 6] <- 0
x
# Count number of NA values after each operation
sum(is.na(x))

# Recode values between 4 and 8 with 100
x[(x >= 4) & (x <= 8)] <- 100
x
# Count number of NA values after each operation
sum(is.na(x))

# Recode values less than 5 or greater than 6 with 50
x[(x < 5) | (x > 6)] <- 50
x
# Count number of NA values after each operation
sum(is.na(x))

# Find mean of x (exclude NA values)
mean(x, na.rm = TRUE)

# Find median of x (exclude NA values)
median(x, na.rm = TRUE)

# Recode values less than 6 with NA
x[x < 6] <- NA
x
# Count number of NA values after each operation
sum(is.na(x))

# Recode values between 4 and 8 with NA
x[(x >= 4) & (x <= 8)] <- NA
x
# Count number of NA values after each operation
sum(is.na(x))

# Recode values less than 5 or greater than 6 with NA
x[(x < 5) | (x > 6)] <- NA
x
# Count number of NA values after each operation
sum(is.na(x))

# Find mean of x 
mean(x, na.rm = TRUE)

# Find median of x 
median(x, na.rm = TRUE)


# Original vector
x <- c(3, 4, 5, 6, 7, 8)
x
# Recode values less than 6 with NA
x[x < 6] <- NA
x
# Count number of NA values after each operation
sum(is.na(x))

# Recode values between 4 and 8 with NA
x[(x >= 4) & (x <= 8)] <- NA
x
# Count number of NA values after each operation
sum(is.na(x))

# Recode values less than 5 or greater than 6 with NA
x[(x < 5) | (x > 6)] <- NA
x
# Count number of NA values after each operation
sum(is.na(x))

# Find mean of x 
mean(x, na.rm = TRUE)

# Find median of x 
median(x, na.rm = TRUE)




# Load the airquality dataset
data(airquality)

# Print the dataset
print(airquality)

# Print the structure of the dataset
str(airquality)

# Print the summary of all variables
summary(airquality)

# Number of variables (columns) in the dataset
num_variables <- ncol(airquality)
cat("Number of variables:", num_variables, "\n")

# Number of observations (rows) in the dataset
num_observations <- nrow(airquality)
cat("Number of observations:", num_observations, "\n")

# Quartiles and their calculation
# Quartiles divide a dataset into four equal parts.
# 1st quartile (Q1) is the value below which 25% of the data falls.
# 3rd quartile (Q3) is the value below which 75% of the data falls.

# Copy the dataset to 'aq'
aq <- airquality

# Print 'aq'
print(aq)

# Print the structure of 'aq'
str(aq)

# Print the summary of all variables in 'aq'
summary(aq)

# Print top 6 observations
head(aq, 6)

# Print last 6 observations
tail(aq, 6)

# Replace NA values in 'Ozone' with zero
aq$Ozone[is.na(aq$Ozone)] <- 0

# Print the summary after replacing NA with zero
summary(aq)

# Replace NA values in 'Ozone' with the mean of the remaining values
aq$Ozone[is.na(aq$Ozone)] <- mean(aq$Ozone, na.rm = TRUE)

# Print the summary after replacing NA with mean
summary(aq)

# Copy 'airquality' to 'aq1' and replace NA values in 'Ozone' with the median
aq1 <- airquality
aq1$Ozone[is.na(aq1$Ozone)] <- median(aq1$Ozone, na.rm = TRUE)

# Print the summary of 'aq1'
summary(aq1)

# Similar operations for 'aq2'
# ...

# Replace values of 'Temp' with a global constant 50 in 'aq1'
aq1$Temp <- 50
aq1
# Replace values below 60 of 'Temp' with a global constant 60 in 'aq2'
aq2$Temp[aq2$Temp < 60] <- 60
aq2
# Replace month numbers with month names
months <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
aq$Month <- months[aq$Month]
aq
# Create a new logical attribute 'Solar.Danger'
aq$Solar.Danger <- aq$Solar.R > 100
aq
# Discretize values in 'Temp'
aq$Temp <- cut(aq$Temp, breaks = c(-Inf, 60, 80, Inf), labels = c("Low", "Medium", "High"))
aq
# 'cut()' function is used for binning or discretizing continuous data into intervals.

# Create a numeric vector 'brks'
brks <- c(0, 50, 100, 200, 250, 300, 350)
brks
# Recode values in 'Solar.R' according to intervals in 'brks'
aq$Solar.R <- cut(aq$Solar.R, breaks = brks, include.lowest = TRUE)
aq

# Create the buildings dataframe
buildings <- data.frame(location=c(1, 2, 3), name=c("building1", "building2", "building3"))
buildings
# Create the data dataframe
data <- data.frame(survey=c(1,1,1,2,2,2), location=c(1,2,3,2,3,1), efficiency=c(51,64,70,71,80,58))
data
# Merge the dataframes based on the "location" column
buildingStats <- merge(buildings, data, by="location")

# Print the merged dataframe
print(buildingStats)

# Dataframes
buildings <- data.frame(location = c(1, 2, 3), name = c("building1", "building2", "building3"))
buildings
data <- data.frame(survey = c(1, 1, 1, 2, 2, 2), LocationID = c(1, 2, 3, 2, 3, 1), efficiency = c(51, 64, 70, 71, 80, 58))
data
# Merge dataframes by corresponding variables
merged_data <- merge(buildings, data, by.x = "location", by.y = "LocationID")

# Print the merged dataframe
print(merged_data)


#5. Consider the following dataframes 
# Employees dataset
employees <- data.frame(
  EmployeeID = c(1, 2, 3, 4, 5),
  Name = c("John", "Jane", "Alice", "Bob", "Eva"),
  Age = c(25, 30, 35, 28, 32),
  DepartmentID = c(101, 102, 101, 103, 102)
)
employees
# Departments dataset
departments <- data.frame(
  DepartmentID = c(101, 102, 103, 104),
  DepartmentName = c("HR", "Marketing", "Finance", "IT")
) 
departments
#Perform innerjoin and outer join.
# Inner join
inner_join_result <- merge(employees, departments, by = "DepartmentID", all = FALSE)
inner_join_result
# Outer join
outer_join_result <- merge(employees, departments, by = "DepartmentID", all = TRUE)
outer_join_result



#6.Consider the following dataframes 
# Orders dataset
orders <- data.frame(
  OrderID = c(1, 2, 3, 4, 5),
  CustomerID = c(101, 102, 103, 101, 104),
  Amount = c(100, 200, 150, 300, 250)
)
orders
# Customers dataset
customers <- data.frame(
  CustomerID = c(101, 102, 103, 104, 105),
  CustomerName = c("John", "Jane", "Alice", "Bob", "Eva")
)
customers
#Perform left join,right join and cross join
# Left join
left_join_result <- merge(orders, customers, by = "CustomerID", all.x = TRUE)
print("Left Join:")
print(left_join_result)

# Right join
right_join_result <- merge(orders, customers, by = "CustomerID", all.y = TRUE)
print("Right Join:")
print(right_join_result)

# Cross join
cross_join_result <- merge(orders, customers, by = NULL)
print("Cross Join:")
print(cross_join_result)










