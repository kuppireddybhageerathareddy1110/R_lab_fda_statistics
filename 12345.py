import numpy as np

# Define the NumPy array
arr = np.array([[1, 2, 3, 4],
                [5, 6, 7, 8],
                [9, 10, 11, 12]])

# 1. Array Slicing: Accessing Subarrays:
# a) Access and print the subarray consisting of the first two rows of the array arr
subarray_first_two_rows = arr[:2]
print("Subarray of first two rows:")
print(subarray_first_two_rows)

# b) Access and print the subarray consisting of the last two columns of the array arr
subarray_last_two_columns = arr[:, -2:]
print("Subarray of last two columns:")
print(subarray_last_two_columns)

# c) Access and print a subarray consisting of the elements in the second row, starting from the second column, up to and including the third column.
subarray_second_row_second_to_third_column = arr[1, 1:3]
print("Subarray of second row, second to third column:")
print(subarray_second_row_second_to_third_column)

# 2. Reshaping of Arrays:
# a) Reshape the array arr into a 2x6 array. Print the reshaped array and explain the result.
arr_reshaped_2x6 = arr.reshape(2, 6)
print("Reshaped array to 2x6:")
print(arr_reshaped_2x6)
print("Explanation: The reshape operation rearranges the elements of the original array into a new shape while maintaining the same elements. In this case, the original array has 3 rows and 4 columns, so reshaping it into a 2x6 array results in a new array with 2 rows and 6 columns, while preserving the order of elements.")

# b) Reshape the array arr into a 1D array. Print the reshaped array and discuss the purpose of reshaping arrays
arr_reshaped_1d = arr.reshape(-1)
print("Reshaped array to 1D:")
print(arr_reshaped_1d)
print("Purpose of reshaping arrays: Reshaping arrays allows us to manipulate the structure of the data without changing its contents. It can be useful for preparing data for certain operations or for compatibility with functions that expect a specific array shape.")
