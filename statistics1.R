temperatures <- c(67,72,74,62,76,66,65,59,61,69)
#histogram of temperatures vector
result<- hist(temperatures,
              main= "Histogram of Temperature",
              xlab="Temperature in degrees Fahrenheit",
              col="red",
              xlim=c(50,100),
              ylim=c(0,5))

print(result)

#pie chart
#import plotrix to use pie3D()
library(plotrix)
expenditure<-c(600,300,150,100,200)
result<- pie3D(expenditure,
               main="Monthly Expenditure Breakdown",
               labels=c("Housing","Food","Cloths","Entertainment","Other",
                        col=c("red","orange","yellow","blue","green")))
print(result)

#boxplot
boxplot(mpg~ cyl,data=mtcars,
        main="Mileage Data Boxplot",
        ylab="Miles Per Gallon(mpg)",
        xlab="No. of Cylinders",
        col="orange",
        notch=TRUE)
