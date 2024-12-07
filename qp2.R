# Binomial distribution function (PMF)
binomial_pmf <- function(n, k, p) {
  choose(n, k) * p^k * (1 - p)^(n - k)
}

# Cumulative binomial distribution function (CDF)
binomial_cdf <- function(n, k, p) {
  # CDF is the sum of PMF from 0 to k
  sum(sapply(0:k, function(x) binomial_pmf(n, x, p)))
}

# Example usage:
n <- 10  # Number of trials
k <- 3   # Number of successes
p <- 0.5  # Probability of success

pmf_value <- binomial_pmf(n, k, p)
cdf_value <- binomial_cdf(n, k, p)

cat("Binomial PMF (n =", n, ", k =", k, ", p =", p, "):", pmf_value, "\n")
cat("Binomial CDF (n =", n, ", k =", k, ", p =", p, "):", cdf_value, "\n")





# Given data
capital_employed <- c(1, 2, 3, 4, 5, 7, 8, 9, 11, 12)
profit <- c(3, 5, 4, 7, 9, 8, 10, 11, 12, 14)

# Scatter plot
plot(capital_employed, profit, main = "Scatter Plot of Capital Employed vs. Profit",
     xlab = "Capital Employed (Rs. In Crore)",
     ylab = "Profit (Rs. In Lakhs)",
     pch = 19, col = "blue")

# Correlation
correlation <- cor(capital_employed, profit)

cat("Correlation between Capital Employed and Profit:", correlation, "\n")

# Determine whether the correlation is positive or negative, and if it's high or low
correlation_description <- ifelse(correlation > 0, "positive", "negative")
correlation_strength <- ifelse(abs(correlation) >= 0.7, "high", "low to moderate")

cat("The correlation is", correlation_description, "and it is considered", correlation_strength, ".\n")



# Given average rate (lambda)
lambda <- 3

# Part a: Exactly 5 accidents
prob_5_accidents <- dpois(5, lambda)

# Part b: Fewer than 3 accidents
prob_fewer_than_3 <- ppois(2, lambda)

# Part c: At least 2 accidents
prob_at_least_2 <- 1 - ppois(1, lambda)

cat("Probability of exactly 5 accidents:", prob_5_accidents, "\n")
cat("Probability of fewer than 3 accidents:", prob_fewer_than_3, "\n")
cat("Probability of at least 2 accidents:", prob_at_least_2, "\n")




# Given levels of Salmonella in MPN/g
salmonella_levels <- c(0.418, 0.593, 0.142, 0.231, 0.329, 0.691, 0.793, 0.519, 0.392)

# Calculate basic statistics
mean_level <- mean(salmonella_levels)
median_level <- median(salmonella_levels)
sd_level <- sd(salmonella_levels)

cat("Mean level of Salmonella:", mean_level, "\n")
cat("Median level of Salmonella:", median_level, "\n")
cat("Standard deviation of Salmonella:", sd_level, "\n")
