#display airquality datset
print(airquality)
#use dim() to get dimension of dataset
#use nrow() to get number of rows
cat("\nRow:",nrow(airquality))
#use nCol() to get number of columns
cat("\nColumn:",ncol(airquality))
#use names() to get name of variable of dataset
cat("\nName of Variables:",names(airquality))
#display all values of Temp variable
print(airquality$Temp)
#sort values of Temp variable ascending order
sort(airquality$Temp)
#get statistical summary of Temp variable (min,first quarti)
summary(airquality$Temp)
print(mtcars)
cat("\nColumn:",ncol(mtcars))
summary(mtcars$hp)
print(iris)
summary(iris)
