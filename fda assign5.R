#1
x <- c(9:20, 1:5, 3:7, 0:8)
duplicated(x)

duplicated(x, fromLast = TRUE)

duplicates <- x[duplicated(x)]
print(duplicates)

uniques <- x[!duplicated(x)]
print(uniques)

duplicates_from_last <- x[duplicated(x, fromLast = TRUE)]
print(duplicates_from_last)

uniques_from_last <- x[!duplicated(x, fromLast = TRUE)]
print(uniques_from_last)

duplicate_indices <- which(duplicated(x))
print(duplicate_indices)

unique_indices <- which(!duplicated(x))
print(unique_indices)



a <- c(rep("A", 3), rep("B", 3), rep("C",2)) 
b <- c(1,1,2,4,1,1,2,2)
df <-data.frame(a,b) 
print(df)

duplicated_rows <- duplicated(df)  
print(duplicated_rows)

duplicate_df <- df[duplicated_rows, ]
print(duplicate_df)

unique_df <- df[!duplicated_rows, ]
print(unique_df)

duplicate_indices <- which(duplicated_rows)
print(duplicate_indices)


unique_indices <- which(!duplicated_rows)
print(unique_indices)

n_unique <- nrow(unique_df)
n_duplicate <- nrow(df) - n_unique
print(c("Number of unique rows:", n_unique))
print(c("Number of duplicate rows:", n_duplicate))

length(duplicate_indices)
length(unique_indices)



print(iris)
str(iris)
summary(iris)
ncol(iris)
nrow(iris)
duplicated_rows <- duplicated(iris)
print(duplicated_rows)

duplicate_iris <- iris[duplicated_rows, ]
print(duplicate_iris)

unique_iris <- iris[!duplicated_rows, ]
print(unique_iris)

duplicate_indices <- which(duplicated_rows)
print(duplicate_indices)

unique_indices <- which(!duplicated_rows)
print(unique_indices)

n_unique <- nrow(unique_iris)
print(n_unique)

n_duplicate <- nrow(iris) - n_unique
print(n_duplicate)



x <- c(1, 5, 9, 67, NA, 32, NA, NA, 12)
# Using is.na()
is.na(x)
# Using sum()
sum(is.na(x))
# Using colSums() (applicable to data.frames)
 colSums(is.na(x))  # Would return 3 in this case
 omitted_x <- x[!is.na(x)]
omitted_x 
replaced_with_0 <- replace(x, is.na(x), 0)
replaced_with_0
