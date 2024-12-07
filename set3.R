# Function to check if a number is a perfect number
is_perfect <- function(num) {
  # Find the factors excluding the number itself
  factors <- sapply(1:(num - 1), function(x) if (num %% x == 0) x else NA)
  factors <- factors[!is.na(factors)]
  
  # Check if the sum of factors equals the number
  return(sum(factors) == num)
}

# Find perfect numbers between 1 and 500
perfect_numbers <- sapply(1:500, function(x) if (is_perfect(x)) x else NA)
perfect_numbers <- perfect_numbers[!is.na(perfect_numbers)]

# Output perfect numbers
print("Perfect numbers between 1 and 500:")
print(perfect_numbers)




library(dplyr)

# Create data frames
HeroesVillain <- data.frame(
  Name = c("MAGNETO", "Storm", "Mystique", "Batman", "Joker", "CatWoman", "Harry Po", 
           "Lord Voldemort", "Gandalf", "Hellboy", "Hermione", "Sauron"),
  Publisher = c("Marvel", "Marvel", "Marvel", "DC", "DC", "DC", "WB", "WB", "WB", 
                "Dark Horse", "WB", "NewLine")
)

Production <- data.frame(
  publisher = c("DC", "Marvel", "Image", "WB", "NewLine"),
  Yr_Founded = c(1923, 1939, 1992, 1934, 1984)
)

# i) Inner join
inner_join_result <- inner_join(HeroesVillain, Production, by = c("Publisher" = "publisher"))
print("Inner join:")
print(inner_join_result)

# ii) Left join
left_join_result = left_join(HeroesVillain, Production, by = c("Publisher" = "publisher"))
print("Left join:")
print(left_join_result)

# iii) Right join
right_join_result = right_join(HeroesVillain, Production, by = c("Publisher" = "publisher"))
print("Right join:")
print(right_join_result)

# iv) Full outer join
full_join_result = full_join(HeroesVillain, Production, by = c("Publisher" = "publisher"))
print("Full join:")
print(full_join_result)

# v) Cross join (Cartesian product)
cross_join_result = merge(HeroesVillain, Production, by = NULL)
print("Cross join:")
print(cross_join_result)




# Function to find the largest among three numbers
def find_largest(a, b, c):
  if a >= b and a >= c:
  return a
elif b >= a and b >= c:
  return b
else:
  return c

# Example inputs
A = 3
B = 7
C = 5

largest = find_largest(A, B, C)

print("Largest among the three numbers is:", largest)
