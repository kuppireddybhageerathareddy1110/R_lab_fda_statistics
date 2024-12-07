#Hypothesis Test: T-test
#1. Suppose that 10 volunteers have taken an intelligence test; here are the results
#obtained.The average score of the entire population is 75 in the same test. Is there any
#significant difference (with a significance level of 95%) between the sample and population
#means,assuming that the variance of the population is not known.
#Scores: 65, 78, 88, 55, 48, 95, 66. 57. 79, 81 ,write r code
# Sample data
scores <- c(65, 78, 88, 55, 48, 95, 66, 57, 79, 81)
# Population mean
pop_mean <- 75
# Perform one-sample t-test
t_test <- t.test(scores, mu = pop_mean)
# Print the result
print(t_test)



#2. Comparing two independent sample means, taken from two populations with unknown
#variance.
#The following data shows the heights of individuals of two different countries with
#unknown population variances. Is there any significant difference b/n the average heights
#of two groups.
#a(175, 168, 168, 190, 156, 181, 182, 175, 174, 179),b(185, 169, 173, 173, 188, 186, 175,
#174, 179, 180)
group_A <- c(175, 168, 168, 190, 156, 181, 182, 175, 174, 179)
group_B <- c(185, 169, 173, 173, 188, 186, 175, 174, 179, 180)
t_test <- t.test(group_A, group_B)
print(t_test)


#3. Scientist wanted to test if the great white sharks are on average 20 feet in length. He
#measured 10 great white sharks. The sample mean is caleulated to be 22.27 and the
#sample standard deviation is 3.19. Did he find the evidenee that great white sharks are
#longer than 20 feet in length at the a=0.05 level of significance?
  # 21.8. 22.7, 17.3, 26.1, 26.4, 21.1, 19.8, 24.1, 18.3, 25.1
  shark_length <- c(21.8, 22.7, 17.3, 26.1, 26.4, 21.1, 19.8, 24.1, 18.3, 25.1)
sample_mean <- mean(shark_length)
sample_sd <- sd(shark_length)
sample_size <- length(shark_length)
null_mean <- 20
t_value <- (sample_mean - null_mean) / (sample_sd / sqrt(sample_size))
p_value <- 2 * pt(abs(t_value), df = sample_size - 1)
cat("t-value:", t_value, "\n")
cat("p-value:", p_value, "\n")
