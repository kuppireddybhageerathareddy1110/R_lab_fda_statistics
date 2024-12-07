import numpy as np

# Define the NumPy array
arr = np.array([1, 2, 3, 4, 5, 6])

# 1. NumPy Array Attributes:
# a) Determine the shape and size of the array arr
print("Shape of arr:", arr.shape)
print("Size of arr:", arr.size)

# b) Change the dtype of the array arr to float
arr_float = arr.astype(float)
print("Array with float dtype:", arr_float)

# 2. Array Indexing: Accessing Single Elements:
# a) Access and print the third element of the array arr
third_element = arr[2]
print("Third element of arr:", third_element)

# b) Update the value of the fourth element in the array arr to 10
arr[3] = 10
print("Updated arr:", arr)

# c) Access and print a sub-array containing the first three elements of the array arr
sub_arr = arr[:3]
print("Sub-array of first three elements:", sub_arr)

# d) Using negative indexing, access and print the last element of the array arr
last_element = arr[-1]
print("Last element of arr:", last_element)


