#1
# to calculate the binomial probability mass function for x=1,2,3,4,...,10 and a probability ofsuccess in
#each trial of 0.2
dbinom(x=1:10,size=10,prob=0.2)
Output:
  # to calculate the binomial probability mass function for x=1,2,3,4,...,10
  #and a probability of success in each trial of 0.2
 dbinom(x=1:10,size=10,prob=0.2)

#2
#Grid of X-axis values
x<-1:80
#size=80,prob=0.2
plot(dbinom(x,size=80,prob=0.2),type ="h",lwd=2,
     main="Binomial probability function",
     ylab="P(X=x)",xlab="Number ofsuccesses")
#size=80,prob=0.3
lines(dbinom(x,size=80,prob=0.3),type="h",
      lwd=2,col=rgb(1,0,0,0.7))
#size=80,prob=0.4
lines(dbinom(x,size=80,prob=0.4),type="h",
      lwd=2,col=rgb(1,0,0,0.7))
#Add a legend
legend("topright",legend=c("80 0.2","80 0.3","80 0.4"),
       title="size prob",title.adj=0.95,
       lty=1,col=1:3,lwd=2,box.lty=0)




#3
#the probability of the success occuring less than 3 times if the number of trials is 10 and the probability
#ofsuccess is 0.3 is:
  pbinom(3,size=10,prob=0.3)#0.6496107 0r 64.96%
#the probability of the success occuring less than 3 times if the number of
#trials is 10 and the probability of success is 0.3 is:
   pbinom(3,size=10,prob=0.3)#0.6496107 0r 64.96%

#4
#the probabilities that are added to calculate the probability of a binomial variable taking values equal
#or lower than 5 if the number of trials is 20 and the probability of sucess is 0.2
pbinom(5,size=20,prob=0.2)
plot(dbinom(x,size=20,prob=0.2),type="h",lwd=2,
     main="Binomial probability function",
     ylab="P(X=x)",xlab="Number ofsuccessses")
lines(dbinom(x,size=20,prob=0.3),type="h",
      lwd=2,col=rgb(1,0,0,0.7))
lines(dbinom(x,size=20,prob=0.4),type="h",
      lwd=2,col=rgb(1,0,0,0.7))


pbinom(5,size=20,prob=0.2)
plot(dbinom(x,size=20,prob=0.2),type="s",lwd=2,
     main="Binomial probability function",
     ylab="P(X=x)",xlab="Number ofsuccessses")
lines(dbinom(x,size=20,prob=0.3),type="s",
      lwd=2,col=rgb(1,0,0,0.7))
lines(dbinom(x,size=20,prob=0.4),type="s",
      lwd=2,col=rgb(1,0,0,0.7))


pbinom(5,size=20,prob=0.2)
plot(dbinom(x,size=20,prob=0.2),type="l",lwd=2,
     main="Binomial probability function",
     ylab="P(X=x)",xlab="Number ofsuccessses")
lines(dbinom(x,size=20,prob=0.3),type="l",
      lwd=2,col=rgb(1,0,0,0.7))
lines(dbinom(x,size=20,prob=0.4),type="l",
      lwd=2,col=rgb(1,0,0,0.7))




#4. Five terminals on an on-line computer system are attached to a communication line to the central
#computer system. The probability that any terminal is ready to transmit is 0.95. > #Let X denote the
 # number of ready terminals. > #a) Find the probability of getting exactly 3 ready terminals. > # Number of
 # trials (terminals)
# Number of trials (terminals)
n <- 5
# Number of successes (ready terminals)
k <- 3
# Probability ofsuccess (terminal being ready)
p <- 0.95
# Calculate binomial probability
prob <- dbinom(k, size = n, prob = p)
# Print the result
print(prob)

#b)Finding all probabilities
# Number of trials (terminals)
n <- 5
# Probability ofsuccess (terminal being ready)
p <- 0.95
# Calculate all probabilities for 0 to 5 ready terminals
probabilities <- dbinom(0:n, size = n, prob = p)
# Print the probabilities
print(probabilities)

# Plotting the probability mass function
barplot(probabilities, names.arg = 0:n, xlab = "Number of Ready Terminals", ylab = "Probability", main =
          "Binomial Probability Mass Function")


#5.It is known that 20% of integrated circuit chips on a production line are defective. To maintain and
#monitor the quality of the chips, a sample of twenty chips is selected at regular intervals for inspection.
 #Let X denote the number of defectives found in the sample. > #Find the probability of different
 # number of defectives found in the sample?
  # Probability of a defective chip
  p_defective <- 0.20
# Sample size
sample_size <- 20
# Possible number of defectives (0 to 20)
possible_defectives <- 0:sample_size
# Calculate the probability of different numbers of defectives using dbinom
prob_defectives <- dbinom(possible_defectives, size = sample_size, prob = p_defective)
# Print the probabilities
print(prob_defectives)
# Create a bar plot
barplot(prob_defectives, names.arg = possible_defectives, xlab = "Number of Defectives", ylab =
          "Probability", col = "red", main = "Probability of Different Number of Defectives in a Sample")
# Add grid for better readability
grid()
# Show the plot