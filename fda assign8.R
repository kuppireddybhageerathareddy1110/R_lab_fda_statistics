#1
# Load airquality dataset
data(airquality)
print(airquality)
# Create a new data frame "aq" with the first 6 lines of airquality
aq <- head(airquality)
aq
# 1. Write the data frame "aq" to a tab-separated values (TSV) file called "data.txt"
write.table(aq, file = "data.txt", sep = "\t", row.names = FALSE)

# 2. Read the contents of "data.txt" using the read.table function and store it in a new data frame called "data_new"
data_new <- read.table("data.txt", header = TRUE)

# 3. Display the structure and contents of "data_new" to verify that it matches the original data frame
str(data_new)
head(data_new)





#2
# 1. Write a new file called "output.txt" with the same content using writeLines
writeLines(c("Hello, World!", "How are you?", "I'm doing great!"), "output.txt")

# 2. Read the contents of "output.txt" using the readLines function and store it in a variable
file_contents <- readLines("output.txt")

# 3. Display the contents of the variable to verify that it matches the original text
cat(file_contents, sep = "\n")



#3
# Original dataframe
students <- data.frame(
  Name = c("Alice", "Bob", "John", "Jane"),
  Age = c(25, 30, 35, 40),
  Grade = c("A", "B", "A", "B")
)

# 1. Write the dataframe to a tab-separated values (TSV) file
write.table(students, file = "students.tsv", sep = "\t",row.names=FALSE)

# 2. Read the contents of "students.tsv" using read.delim
students_new <- read.table("students.tsv", header = TRUE)

# 3. Display the structure and contents of "students_new"
print("Structure of students_new:")
str(students_new)
print("Contents of students_new:")
print(students_new)



#4
# Original dataframe
students <- data.frame(
  Name = c("John", "Jane", "Alice", "Bob"),
  Math = c(90, 85, 92, 88),
  Science = c(95, 88, 90, 94),
  English = c(80, 92, 85, 88)
)

# 1. Write the data frame "students" to a comma-separated values (CSV) file called "students_data.csv"
write.csv(students, file = "students_data.csv", row.names = FALSE)

# 2. Read the contents of "students_data.csv" using the read.csv function and store it in a new data frame called "students_new"
students_new <- read.csv("students_data.csv")

# 3. Display the structure and contents of "students_new" to verify that it matches the original data frame
# Structure
str(students_new)

# Contents
students_new




#5
# Define the students data frame
students <- data.frame(
  Name = c("John", "Jane", "Alice", "Bob"),
  Math = c(90, 85, 92, 88),
  Science = c(95, 88, 90, 94),
  English = c(80, 92, 85, 88)
)

# Save the data frame as a binary file
save(students, file = "students_data.RData")

# Clear the current environment
rm(students)

# Load the saved data frame from the file
load("students_data.RData")

# Display the structure and contents of the loaded data frame
str(students)
print(students)




#6
# Create a text file named "sales.txt" with the provided data
sales_text <- c(
  "January,10000",
  "February,15000",
  "March,12000",
  "April,18000"
)
writeLines(sales_text, "sales.txt")

# 1. Read the "sales.txt" file and store the data in a vector
sales_data <- scan("sales.txt", what = list(month = "", sales = 0), sep = ",", strip.white = TRUE, quiet = TRUE)
sales_vector <- unlist(sales_data$sales)

# 2. Calculate the total sales for all the months
total_sales <- sum(sales_vector)

# 3. Display the total sales
print(paste("Total sales for all months:", total_sales))




#7
# Load the mtcars dataset
data(mtcars)

# 1. Create a boxplot to visualize the distribution of the "mpg" variable
boxplot(mtcars$mpg, main = "Distribution of MPG", ylab = "Miles per Gallon")

# 2. Generate a histogram to examine the frequency distribution of the "hp" variable
hist(mtcars$hp, main = "Frequency Distribution of Horsepower", xlab = "Horsepower", col = "skyblue")

# 3. Create a pie chart to display the proportion of different car cylinders
cyl_counts <- table(mtcars$cyl)
pie(cyl_counts, labels = names(cyl_counts), main = "Proportion of Car Cylinders")

# 4. Generate a line graph to visualize the trend of the "wt" variable across different car models
plot(mtcars$wt, type = "l", main = "Weight Variation Across Car Models", xlab = "Car Model", ylab = "Weight", xaxt = "n")
axis(1, at = 1:32, labels = rownames(mtcars))

# 5. Create a scatter plot to analyze the relationship between the "mpg" variable and the "hp" variable
plot(mtcars$mpg, mtcars$hp, main = "MPG vs. Horsepower", xlab = "Miles per Gallon", ylab = "Horsepower", col = "green")

# 6. Generate a bar plot to compare the average "mpg" values for different car models
mpg_avg <- tapply(mtcars$mpg, rownames(mtcars), mean)
barplot(mpg_avg, main = "Average MPG for Different Car Models", xlab = "Car Model", ylab = "Average MPG", col = "blue")










#8
# Load the airquality dataset
data(airquality)

# 1. Create a boxplot to visualize the distribution of ozone levels
boxplot(airquality$Ozone, main = "Distribution of Ozone Levels", ylab = "Ozone")

# 2. Generate a histogram to examine the frequency distribution of temperatures
hist(airquality$Temp, main = "Frequency Distribution of Temperatures", xlab = "Temperature", col = "skyblue")

# 3. Create a pie chart to display the proportion of different wind directions
wind_counts <- table(airquality$Wind)
pie(wind_counts, labels = names(wind_counts), main = "Proportion of Wind Directions")

# 4. Generate a line graph to visualize the variation of solar radiation over time
plot(airquality$Solar.R, type = "l", main = "Solar Radiation Variation Over Time", xlab = "Index", ylab = "Solar Radiation")

# 5. Create a scatter plot to analyze the relationship between ozone levels and wind speeds
plot(airquality$Ozone, airquality$Wind.Speed, main = "Ozone Levels vs. Wind Speed", xlab = "Ozone", ylab = "Wind Speed", col = "green")

# 6. Generate a bar plot to compare the average temperatures for different months
airquality$Month <- factor(month.name[as.POSIXlt(airquality$Date)$mon + 1], levels = month.name)
monthly_temp <- aggregate(Temp ~ Month, data = airquality, FUN = mean)
barplot(monthly_temp$Temp, names.arg = monthly_temp$Month, main = "Average Temperatures for Different Months", xlab = "Month", ylab = "Average Temperature", col = "blue")
