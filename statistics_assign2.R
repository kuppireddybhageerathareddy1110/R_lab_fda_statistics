# Given data
data <- c(1,2,3,4,5,6,7,8,9, 10)
# (a) Sum of the numbers
sum_of_numbers <- sum(data)
# (b) Mean
mean_value <- mean(data)
# (c) Median
median_value <- median(data)
# (d) Sum of squares
sum_of_squares <- sum(data^2)
# (e) Mean Deviation about Mean (MD2)
md2 <- mean(abs(data - mean_value))
# (f) Standard Deviation
standard_deviation <- sd(data)
# Print the results
cat("Sum of the numbers:", sum_of_numbers, "\n")
cat("Mean:", mean_value, "\n")
cat("Median:", median_value, "\n")
cat("Sum of squares:", sum_of_squares, "\n")
cat("Mean Deviation about Mean (MD2):", md2, "\n")
cat("Standard Deviation:", standard_deviation, "\n")


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
# a) Number of rows and columns
num_rows <- nrow(data)
num_columns <- ncol(data)
cat("Number of rows:", num_rows, "\n")
cat("Number of columns:", num_columns, "\n")
# b) Number of rows and columns by a single command
dim(data)
# c) Variables in the data file
names(data)
# d) Top and bottom few lines
head(data)
tail(data)
# e) First 5 rows and first 3 columns
data[1:5, 1:3]
# f) 1st, 3rd, 6th, and 10th row; 2nd, 4th, and 5th column
data[c(1, 3, 6, 10), c(2, 4, 5)]
# g) Values in a specific row (e.g., row 8) or column (e.g., column 3)
data[8, ]
data[, 3]






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
# a) Find means, medians, and standard deviations
means <- sapply(data[, c("price", "FloorArea", "Rooms", "Age")], mean, na.rm =
                  TRUE)
medians <- sapply(data[, c("price", "FloorArea", "Rooms", "Age")], median, na.rm
                  = TRUE)
std_devs <- sapply(data[, c("price", "FloorArea", "Rooms", "Age")], sd, na.rm =
                     TRUE)
# Print means, medians, and standard deviations
print("Means:")
print(means)
print("Medians:")
print(medians)
print("Standard Deviations:")
print(std_devs)
# b) Count houses with central heating
central_heating_count <- sum(data$CentralHeating == "YES")
no_central_heating_count <- sum(data$CentralHeating == "NO")
print(paste("Houses with central heating: ", central_heating_count))
print(paste("Houses without central heating: ", no_central_heating_count))
# c) Plot Price vs. Floor, Price vs. Age, and Price vs. Rooms in separate graphs
par(mfrow = c(3, 1))
plot(data$price, data$FloorArea, main = "Price vs. Floor Area", xlab = "Price",
     ylab = "Floor Area")
plot(data$price, data$Age, main = "Price vs. Age", xlab = "Price", ylab = "Age")
plot(data$price, data$Rooms, main = "Price vs. Rooms", xlab = "Price", ylab =
       "Rooms")
# d) Draw histograms of Prices, FloorArea, and Age
par(mfrow = c(1, 3))
hist(data$price, main = "Histogram of Prices", xlab = "Price", col = "lightblue")
hist(data$FloorArea, main = "Histogram of Floor Area", xlab = "Floor Area", col =
       "lightgreen")
hist(data$Age, main = "Histogram of Age", xlab = "Age", col = "lightcoral")
# e) Draw box plots of Price, FloorArea, and Age
par(mfrow = c(1, 3))
boxplot(data$price, main = "Boxplot of Prices", col = "lightblue")
boxplot(data$FloorArea, main = "Boxplot of Floor Area", col = "lightgreen")
boxplot(data$Age, main = "Boxplot of Age", col = "lightcoral")
# f) Draw all the graphs in the same graph paper
par(mfrow = c(2, 2))
plot(data$price, data$FloorArea, main = "Price vs. Floor Area", xlab = "Price",
     ylab = "Floor Area")
plot(data$price, data$Age, main = "Price vs. Age", xlab = "Price", ylab = "Age")
plot(data$price, data$Rooms, main = "Price vs. Rooms", xlab = "Price", ylab =
       "Rooms")
hist(data$price, main = "Histogram of Prices", xlab = "Price", col = "lightblue")
boxplot(data$price, main = "Boxplot of Prices", col = "lightblue")
