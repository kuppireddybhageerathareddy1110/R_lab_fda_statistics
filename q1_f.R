#q1
# Create three vectors: numeric, character, and logical
numeric_vector <- c(1, 2, 3, 4, 5)
character_vector <- c("a", "b", "c", "d", "e")
logical_vector <- c(TRUE, FALSE, TRUE, FALSE, TRUE)

# Display the contents of the vectors
print("Numeric Vector:")
print(numeric_vector)
print("Character Vector:")
print(character_vector)
print("Logical Vector:")
print(logical_vector)

# Display the types of the vectors
print("Type of Numeric Vector:")
print(typeof(numeric_vector))
print("Type of Character Vector:")
print(typeof(character_vector))
print("Type of Logical Vector:")
print(typeof(logical_vector))




#q2
import numpy as np

# Create a 3x3 matrix with values ranging from 3 to 11
matrix = np.arange(3, 12).reshape((3, 3))

print("Original 3x3 Matrix:")
print(matrix)

# Reshape the array to (2, 4)
reshaped_matrix = matrix.reshape((2, 4))

print("Reshaped (2, 4) Matrix:")
print(reshaped_matrix)





#q3
# Create a data frame
data <- data.frame(
  Age = c(25, 31, 23, 52, 76, 49, 26),
  Name = c("Alex", "Lilly", "Mark", "Oliver", "Martha", "Lucas", "Caroline"),
  Height = c(177, 163, 190, 179, 163, 183, 164),
  Weight = c(57, 69, 83, 75, 70, 83, 53),
  Sex = c("F", "F", "M", "M", "F", "M", "F")
)

print("Original Data Frame:")
print(data)
data$Sex <- ifelse(data$Sex == "M", "F", "M")

print("Data Frame after Inverting Sex:")
print(data)
age_column <- data$Age
print("Age Column:")
print(age_column)
num_females <- sum(data$Sex == "F")
print("Number of people whose sex is 'F':")
print(num_females)
females_above_65kg <- data[data$Sex == "F" & data$Weight > 65, ]
print("Females with weight > 65:")
print(females_above_65kg)
avg_height <- mean(data$Height)
print("Average height:")
print(avg_height)
column_types <- sapply(data, class)
print("Column types:")
print(column_types)


































import pandas as pd

# Create the data frame with given data
data = {
  "Age": [25, 31, 23, 52, 76, 49, 26],
  "Name": ["Alex", "Lilly", "Mark", "Oliver", "Martha", "Lucas", "Caroline"],
  "Height": [177, 163, 190, 179, 163, 183, 164],
  "Weight": [57, 69, 83, 75, 70, 83, 53],
  "Sex": ["F", "F", "M", "M", "F", "M", "F"]
}

df = pd.DataFrame(data)

# Invert Sex for all individuals
df["Sex"] = df["Sex"].apply(lambda x: "F" if x == "M" else "M")

# Access the age column
age_column = df["Age"]

# Display the number of people whose sex is 'F'
num_females = df[df["Sex"] == "F"].shape[0]

# Find out the females of weight > 65
females_above_65kg = df[(df["Sex"] == "F") & (df["Weight"] > 65)]

# What is the average of height column?
avg_height = df["Height"].mean()

# Find out each column type in the dataframe
column_types = df.dtypes

# Outputs
print("Age Column:")
print(age_column)

print("Number of people whose sex is 'F':")
print(num_females)

print("Females with weight > 65:")
print(females_above_65kg)

print("Average height:")
print(avg_height)

print("Column types:")
print(column_types)
