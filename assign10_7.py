import pandas as pd

# Define the Series
series = pd.Series(['apple', 'banana', 'cherry', 'durian', 'elderberry'])

# Part 1: Vectorized String Operations
# a) Convert all strings to uppercase
upper_series = series.str.upper()
print("Uppercase Series:")
print(upper_series)

# b) Determine the length of each string
string_lengths = series.str.len()
print("\nLength of each string:")
print(string_lengths)

# c) Check if each string contains the letter 'a'
contains_a = series.str.contains('a')
print("\nContains 'a':")
print(contains_a)

# d) Replace all occurrences of the letter 'a' with 'x'
replace_a_with_x = series.str.replace('a', 'x')
print("\nReplace 'a' with 'x':")
print(replace_a_with_x)

# e) Extract the first three characters from each string
first_three_characters = series.str[:3]
print("\nFirst three characters:")
print(first_three_characters)

# f) Count the occurrences of the letter 'r' in each string
count_r = series.str.count('r')
print("\nCount of 'r' in each string:")
print(count_r)
