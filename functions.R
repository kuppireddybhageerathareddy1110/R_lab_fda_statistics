binomial_prob<- function(n,k,p){
  choose(n,k)p^k(1-p)^(n-k)
}


# Probability mass function
dbinom(x, size, prob)

# Cumulative distribution function
pbinom(q, size, prob)

# Quantile function (inverse CDF)
qbinom(p, size, prob)

# Generate random numbers
rbinom(n, size, prob)


poisson_prob <- function(x, lambda) {
  (exp(-lambda) * lambda^x) / factorial(x)
}

# Probability mass function
dpois(x, lambda)

# Cumulative distribution function
ppois(q, lambda)

# Quantile function (inverse CDF)
qpois(p, lambda)

# Generate random numbers
rpois(n, lambda)


normal_pdf <- function(x, mean, sd) {
  exp(-((x - mean)^2) / (2 * sd^2)) / (sqrt(2 * pi) * sd)
}



# Probability density function
dnorm(x, mean, sd)

# Cumulative distribution function
pnorm(q, mean, sd)

# Quantile function (inverse CDF)
qnorm(p, mean, sd)

# Generate random numbers
rnorm(n, mean, sd)



# Correlation function
correlation <- function(x, y) {
  n <- length(x)
  mean_x <- mean(x)
  mean_y <- mean(y)
  num <- sum((x - mean_x) * (y - mean_y))
  den <- sqrt(sum((x - mean_x)^2) * sum((y - mean_y)^2))
  r <- num / den
  return(r)
}

# Simple Linear Regression function
simple_linear_regression <- function(x, y) {
  n <- length(x)
  mean_x <- mean(x)
  mean_y <- mean(y)
  
  # Calculating coefficients
  beta_1 <- sum((x - mean_x) * (y - mean_y)) / sum((x - mean_x)^2)
  beta_0 <- mean_y - beta_1 * mean_x
  
  # Return coefficients
  return(list(beta_0 = beta_0, beta_1 = beta_1))
}