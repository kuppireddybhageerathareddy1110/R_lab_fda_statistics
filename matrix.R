#create  a Matrix in R

# In R ,we use the matrix() function to create a matrix.
#The syntax of the matrix() function is 
matrix(vector,nrwow,ncol)
#create a 2 by 3 matrix
matrix1<-matrix(c(1,2,3,4,5,6),nrow=2,ncol=3)
print(matrix1)
matrix2<-matrix(c("Sabby","Cathy","Larry","Harry"),nrow=2,ncol=3,byrow=TRUE)
print(matrix2)
cat("\n1st Row:",matrix)
#create 2 by 3 matrix
matrix6<-matrix(c(10,20,30,40,50,60),nrow=2,ncol=3,byrow=TRUE)
print(matrix6)
#acess entire element of 1st row and 2nd row
cat()
#access entire element of 2nd and 3rd column
cat("\n2nd and 3rd column",)

even_numbers<-matrix(c(2,4,6,8),nrow=2,ncol=2)
odd_numbers<-matrix(c(1,3,5,7),nrow=2,ncol=2)

total1<-cbind(even_numbers,odd_numbers)
print(total1)

#combine two matrices by row
total2<-rbind(even_numbers,odd_numbers)
print(total2)
#create bar plot in r
#in r we use barplot() function to create bar plots,for example,
temperatures<-c(22,23,24,25,26,27,28)
#bar plot of temperatures vector
result<-barplot(temperatures,
                main="maximum Temparature in a week"
                ,xlab="Degree Celsius",
                ylab="Day"
                ,names.arg=c("Sun","Mon","Tue","Wed","Thu","Fri","Sat"),
                col="blue")
print(result)


temperatures<-c(67,72,74,62,76,66,65,59,61,69)
#histogram of temperature vector
result<-hist(temperatures,
             main="maximum Temperature in a week",xlim=c(50,100),
                             ylim=c(0,5),names.arg=c("Sun","Mon","Tue","Wed","Thu","Fri","Sat"),
            col="red" )
print(result)
#import plotrix to use pie3d()
 library(plotrix)

expenditure<-c(600,300,150,100,200)
result<-pie30(
  expenditure,main="monthly expenditure breakdown",labels=c("housing","food","cloths","entertainment","other")
  col=c("red","orange","yellow","blue","green")

)
print(result)
#boxplot
boxplot(mpg=cyl,data=mtcars,
        main="mileage data boxplot",
        ylab="miles per galloon(mpg)",
        xlab="no of cylinders",
        col="orange",
        notch=TRUE)
