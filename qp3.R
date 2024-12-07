# Mean and standard deviation of IQ
mean_iq <- 100
std_dev_iq <- 15

# Cumulative distribution function for IQ < 125
prob_iq_less_than_125 <- pnorm(125, mean = mean_iq, sd = std_dev_iq)

cat("Percentage of people with IQ < 125:", prob_iq_less_than_125 * 100, "%\n")


# Complementary cumulative distribution function for IQ > 110
prob_iq_greater_than_110 <- 1 - pnorm(110, mean = mean_iq, sd = std_dev_iq)

cat("Percentage of people with IQ > 110:", prob_iq_greater_than_110 * 100, "%\n")


# Difference in cumulative distribution functions
prob_iq_between_110_and_125 <- pnorm(125, mean = mean_iq, sd = std_dev_iq) - pnorm(110, mean = mean_iq, sd = std_dev_iq)

cat("Percentage of people with 110 < IQ < 125:", prob_iq_between_110_and_125 * 100, "%\n")




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
mu <- 140  # Hypothesized mean
sigma <- 15  # Known standard deviation
sample_mean <- mean(blood_pressure)
sample_size <- length(blood_pressure)

# Standard error
standard_error <- sigma / sqrt(sample_size)

# Z-score
z_score <- (sample_mean - mu) / standard_error

# Two-tailed p-value
p_value <- 2 * pnorm(-abs(z_score))

# Significance level
alpha <- 0.05

cat("Z-score:", z_score, "\n")
cat("P-value:", p_value, "\n")

# Determine whether to reject the null hypothesis
if (p_value < alpha) {
  cat("Reject the null hypothesis: The mean is not 140 mmHg.\n")
} else {
  cat("Fail to reject the null hypothesis: The mean is 140 mmHg.\n")
}




# Given data for swim times and heart rates
swim_time <- c(34.12, 35.72, 34.72, 34.05, 34.13, 35.73, 36.17, 35.57, 35.37, 35.57)
heart_rate <- c(144, 152, 120, 147, 152, 146, 128, 138, 144, 148)

# Scatter plot
plot(swim_time, heart_rate, main = "Scatter Plot of Swim Time vs. Heart Rate",
     xlab = "Swim Time (minutes)",
     ylab = "Heart Rate (beats per minute)",
     pch = 19, col = "blue")

# Regression model
regression_model <- lm(heart_rate ~ swim_time)

# Equation of the regression line
regression_slope <- coef(regression_model)[2]
regression_intercept <- coef(regression_model)[1]

# Add regression line to the scatter plot
abline(regression_model, col = "red")

cat("Equation of the least-squares regression line: y =", regression_intercept, "+", regression_slope, "* x", "\n")

# Interpretation of slope and intercept
cat("The slope indicates the change in heart rate for each additional minute in swim time.\n")
cat("A positive slope suggests that as swim time increases, heart rate also tends to increase.\n")
cat("The intercept represents the estimated heart rate when the swim time is zero.\n")
