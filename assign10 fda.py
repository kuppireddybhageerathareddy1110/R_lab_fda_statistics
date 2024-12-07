import numpy as np

arr = np.array([1, 2, 3, 4, 5, 6])

# 1. NumPy Array Attributes:
# a) Determine the shape and size of the array `arr` using the appropriate NumPy array attributes.
print("Shape of arr:", arr.shape)
print("Size of arr:", arr.size)

# b) Change the dtype of the array `arr` to float and explain the purpose of the dtype attribute in a NumPy array.
arr_float = arr.astype(float)
print("Array with float dtype:", arr_float)
# The purpose of the dtype attribute in a NumPy array is to specify the data type of the elements stored in the array. 
# This attribute ensures that all elements in the array have the same data type, allowing for efficient storage and operations.

# 2. Array Indexing: Accessing Single Elements:
# a) Access and print the third element of the array `arr`.
print("Third element of arr:", arr[2])

# b) Update the value of the fourth element in the array `arr` to 10.
arr[3] = 10
print("Updated array:", arr)

# c) Access and print a sub-array containing the first three elements of the array `arr`.
print("Sub-array of first three elements:", arr[:3])

# d) Using negative indexing, access and print the last element of the array `arr`.
print("Last element of arr:", arr[-1])
