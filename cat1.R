n=c(2,3,5)
s=c("aa","bb","cc","dd","ee")
x=list(n,s,TRUE)
x


vector1<-c(5,9,3)
vector2<-c(10,11,12,13,14,15)
result<-array(c(vector1,vector2),c(3,3,2))
result

matrix(c(1:16),nrow=4,ncol=4,byrow=TRUE)

matrix(c(1,2,3,11,12,13),nrow=2,ncol=3,byrow=TRUE,dimnames=list(c("row1","row2"),c("c1","c2","c3")))

letter.sample<-sample(letters,size=30,replace=TRUE)
summary(letter.sample)
letter.sample<-factor(letter.sample)
summary(letter.sample)

poker_vector<-c(140,-50,20,-120,240)
roulette_vector<-c(-24,-50,100,-350,10)
poker_vector[5]
roulette_vector[3]
poker_vector[3][4][5]
roulette_vector[1][3][5]
print(poker_vector[3:5])
print(roulette_vector[c(1, 3, 5)])

# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Selecting poker results for Monday, Tuesday, and Wednesday
selected_poker <- poker_vector[c("Monday", "Tuesday", "Wednesday")]

# Printing the selected poker results
print(selected_poker)
