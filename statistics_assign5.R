#Given data
p_claimed<-30/70
p_sample<-80/150
n<-150
#calculate standard error
SE <- sqrt(p_claimed*(1-p_claimed)/n)
#calculate z-value
z<-(p_sample-p_claimed)/SE
#calculate p-value
p_value<-2*pnorm(-abs(z))
#print the result
cat("z-value",z,"\n")
cat("p-value",p_value,"\n")



p_existing<-0.80
p_new<-95/150
n<-150
#calculate standard error
SE<-sqrt(p_existing*(1-p_existing)/n)
#calculate the value
z<-(p_new-p_existing)/SE
#calculate p-value for one-tailed test
p_value<-1-pnorm(z)
#print the result
cat("z-value:",z,"\n")
cat("p-value:",p_value,"\n")




# Average rate of radioactive particles passing through the counter in 1 millisecond
lambda <- 4
# Number of particles we want to calculate the probability for
k <- 6
# Calculate the probability using the Poisson distribution
probability <- dpois(k, lambda)
# Print the probability
print(probability)



# Parameters
p <- 0.99 # Probability of a successful start
n <- 10 # Number of consecutive starts required for acceptance
# (a) Probability of acceptance after 10 starts
prob_accept_10_starts <- dbinom(n, size = n, prob = p)
cat("(a) Probability of acceptance after 10 starts:", prob_accept_10_starts, "\n")
# (b) Probability of 12 attempted starts during the acceptance process
prob_12_starts <- dbinom(12, size = n, prob = p)
cat("(b) Probability of 12 attempted starts during the acceptance process:",
    prob_12_starts, "\n")



