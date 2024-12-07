x<-c(4,6,5,7,10,9,4,15)
x<7

p<-c(3,5,6,8)
q<-c(3,3,3)
p+q


c(3,5,7)+c(4,6,8)
c(3,5,7)+c(4,6,8,10)
c(3,5)-c(4,6,8,10)

x<-c(4,6,5,7,10,9,6,15)
y<-c(10,1,0,8,2,3,4,1)
x*y

z<-c(0:9)
digits<-as.character(z)
as.integer(digits)


x<-c(0,1,2,3,4)
(x+2)[!is.na(x)&x>0]->k
k

x<-c(3,5,7,9)
y<-c(TRUE,TRUE,FALSE,TRUE)
sum(x[y])

x<-c(34,56,55,87,NA,4,77,NA,21,NA,39)
is.na(x)
na_positions <- which(is.na(x))
 sum(is.na(x))


a<-c(3,2,4,1,9)
b<-c(1,2,4,5,6)
cbind(a,b)
rbind(a,b)
append(a,b)
cat(a,b)

a=c(3,5,2,1,6)
b=c(1,5,4,3,9)
a<=b
a>=b
a=>b

x=c(1:12)
dim(x)
length(x)

a=c(12:5)
is.numeric(a)

x=letters[1:10]
y=letters[15:24]
x<y

x=c('blue','red','green','yellow')
is.character(x)


x=c('blue',10,'green',20)
is.character(x)

x<-c(a=1,b=2,c=3,d=4)
seq(5,11,along.with=x)


x=seq(4,12,4)
rep(x,each=2)

seq(5,11,by=2,length.out=3)

rep(letters[1:10],3)
seq(from=100,to=50,by=-5)
seq(from=10,to=0,by=-5)
seq(from=2,to=10,by=4)==c(2,6,10)
rep(c('seq','rep'),each=4)

A=as.Date("2016-11-01")
B=as.Date("2016-11-15")
seq.Date(A,B,by="1 day")

C= as.Date("2016-02-01")
D = as.Date("2016-06-15")
seq.Date(D,C, by = "-1 month")

Age <- c(22, 25, 18, 20)
Name <- c("James", "Mathew", "Olivia", "Stella")
Gender <- c("M", "M", "F", "F")

df <- data.frame(Age = c(22, 25, 18, 20),
                 Name = c("James", "Mathew", "Olivia", "Stella"),
                 Gender = c("M", "M", "F", "F"))


output <- df[c(1, 2), ]
print(output)


M=matrix(c(1:10),nrow=5,ncol=2,dimnames = list(c('a','b','c','d','e'),c('A','B')))
M
M[1,]
M[,1]
M[3,2]
M['e','A']


N=matrix(c(1:9),nrow=3,ncol=3,dimnames=list(c('a','b','c'),c('A','B',"C")))
diag(N)
diag(4,3,3)

M=matrix(c(1:9),3,3,byrow=T,dimnames=list(c('a','b','c'),c('d','e','f')))
rownames(M)
colnames(M)
upper.tri(M)
lower.tri(M)
lower.tri(M,diag=T)


M=matrix(c(1:9),3,3,byrow=T)
N=matrix(c(1:9),3,3)
M*N
M%*%N
(M+N)^2
M/N

A=matrix(c(2,0,1,3), ncol=2)
A
B=matrix(c(5,2,4,-1), ncol=2)
A + B
A-B

a=3
a*A

diag_matrix <- diag(c(4, 1, 2, 3))
print(diag_matrix)

b<-c(7,4)
A*b
A*B
t(A)
solve(A)
x<-(solve(A)*b)
x
eigen(A)
eigen(t(A)*A)
eigen(t(A))
# Given matrix A
A <- matrix(c(2, 0, 1, 3), ncol = 2)

# Compute A^TA using crossprod
ATA <- crossprod(A)

# Display the result
print(ATA)

diagonal_matrix <- diag(diagonal_values, nrow = 4, ncol = 4)


print(diagonal_matrix)





