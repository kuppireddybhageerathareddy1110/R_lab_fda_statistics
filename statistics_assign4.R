#Ǫuestion1
# Given data
capital_employed <- c(1, 2, 3, 4, 5, 7, 8, 9, 11, 12) # Capital Employed (Rs. In crore)
profit <- c(3, 5, 4, 7, 9, 8, 10, 11, 12, 14) # Profit(Rs. In lakhs)
# (a) Draw a scatter plot
plot(capital_employed, profit,
     xlab = "Capital Employed (Rs. In crore)",
     ylab = "Profit (Rs. In lakhs)",
     main = "Scatter Diagram of Profits vs Capital Employed")
# (b) Correlation analysis
correlation_coefficient <- cor(capital_employed, profit)
cat("Correlation coefficient between profits and capital employed:",
    round(correlation_coefficient, 3), "\n")
if(correlation_coefficient > 0){
  cat("There is a positive correlation between profits and capital employed.\n")
}else if(correlation_coefficient < 0){
  cat("There is a negative correlation between profits and capital employed.\n")
}else {
  cat("There is no correlation between profits and capital employed.\n")
}
if(abs(correlation_coefficient) > 0.7){
  cat("The correlation is high.\n")
}else {
  cat("The correlation is low.\n")
}



#Ǫuestion 2
#Given data
advertisement_expenses <-c(11,13,14,16,16,15,15,14,13,13) #Advertisement
#Expences(Rs. In Lakhs)
sales_volume <- c(50,50,55,60,65,65,65,60,60,50) #Sales Volume (Rs. In Lakhs)
# Compute the correlation coefficient using cor() function
correlation_coefficient<-cor(advertisement_expenses,sales_volume,method = "pearson")
#print the correlation coefficient
cat("Correlation coefficient between advertisement expenses and sales volume:",
    correlation_coefficient,"\n")



#Question3
#Given data
#Age=15,16,17,18,19,20
Number_of_students=c(250,200,150,120,100,80)
Regular_players=c(200,150,90,48,30,12)
correlation_coefficient = cor(Number_of_students,Regular_players, method =
                                "pearson")
cat("Correlation coefficient between advertisement expenses and sales volume:",
    correlation_coefficient, "\n")



#Ǫuestion 4
# Data
swim_time <- c(34.12, 35.72, 34.72, 34.05, 34.13, 35.73, 36.17, 35.57, 35.37, 35.57)
heart_rate <- c(144,152,124,140,152,146,128,136,144,148)
# Scatter plot
plot(swim_time, heart_rate, main = "Swim Time vs. Heart Rate",
     xlab ="Swim Time (minutes)", ylab = "Heart Rate (beats per minute)")
# Linear regression
regression <- lm(heart_rate ~ swim_time)
abline(regression, col = "red")
# Slope and y-intercept
slope <- coef(regression)[2]
intercept <- coef(regression)[1]
cat("Slope:", slope, "\n")
cat("Y-intercept:", intercept, "\n")
cat("\nThe y-intercept tells us the predicted heart rate when swim time is zero.\n")
# Residuals
residuals <- residuals(regression)
largest_residual_index <- which.max(abs(residuals))
largest_residual_point <- c(swim_time[largest_residual_index],
                            heart_rate[largest_residual_index])
# Explanation of residual
cat("\n\nLargest Residual Point:")
cat("\nThe largest residual occurs at swim time:", largest_residual_point[1], "and heart
rate:",
    largest_residual_point[2])
cat("\nThe residual represents the difference between the observed and predicted values.
In this context, it shows how far off the actual heart rate is from what the regression line
predicts.")
cat("\nThis point might be considered an outlier due to its large residual, but whether it's
influential depends on its leverage and influence on the regression line. We need to check
leverage and influence statistics forthat.")





# Data
white_males <- c(558724, 538584, 519171, 500457, 482418, 465029, 448267, 432109,
                 416533, 401518, 387046, 373095, 359647)
homicide_rate <- c(8.6, 8.9,8.52,8.89, 13.07, 14.57, 21.36, 28.03, 31.49, 37.39, 46.26,
                   47.24, 52.33)
# Scatter plot
plot(white_males, homicide_rate, main = "Scatter Plot", xlab = "Number of White Males",
     ylab = "Homicide Rate per 100,000 People")
# Regression
regression <- lm(homicide_rate ~ white_males)
abline(regression, col = "red")
# Summary of regression
summary(regression)
# Test for linear relationship
correlation <- cor(white_males, homicide_rate)
correlation_p_value <- cor.test(white_males, homicide_rate)$p.value
cat("Correlation coefficient (r):", correlation, "\n")
cat("P-value for correlation test:", correlation_p_value, "\n")
# Test for significance
if (correlation_p_value < 0.05) {
  cat("There is significant evidence of a linear relationship between the number of white
males and the homicide rate.\n")
} else {
  cat("There is no significant evidence of a linear relationship between the number of white
males and the homicide rate.\n")
}
# Slope of the regression equation
slope <- regression$coefficients[2]
cat("Slope of the regression equation:", slope, "\n")
# Y-intercept of the regression equation
intercept <- regression$coefficients[1]
cat("Y-intercept of the regression equation:", intercept, "\n")
# Correlation coefficient (r)
correlation <- cor(white_males, homicide_rate)
cat("Correlation coefficient (r):", correlation, "\n")
# Coefficient of determination (r^2)
r_squared <- summary(regression)$r.squared
cat("Coefficient of determination (r^2):", r_squared, "\n")
# Test for significance
if (correlation_p_value < 0.05) {
  cat("There is significant evidence of a linear relationship between the number of white
males and the homicide rate.\n")
} else {
  cat("There is no significant evidence of a linear relationship between the number of white
males and the homicide rate.\n")
}



