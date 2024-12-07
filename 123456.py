import numpy as np
# Define the NumPy arrays
arr1 = np.array([1, 2, 3])
arr2 = np.array([4, 5, 6])
# 1. Array Concatenation and Splitting:
# a) Concatenate arr1 and arr2 horizontally (column-wise) and print the result.
horizontal_concatenation = np.hstack((arr1.reshape(-1, 1), arr2.reshape(-1, 1)))
print("Horizontal Concatenation:")
print(horizontal_concatenation)
# b) Concatenate arr1 and arr2 vertically (row-wise) and print the result.
vertical_concatenation = np.vstack((arr1, arr2))
print("\nVertical Concatenation:")
print(vertical_concatenation)
# c) Split the array arr1 into three equal-sized subarrays. Print the resulting subarrays.
arr1_split = np.array_split(arr1, 3)
print("\nSplitting arr1 into three subarrays:")
for subarr in arr1_split:
    print(subarr)
# d) Split the array arr2 at indices 1 and 2. Print the resulting subarrays.
arr2_split = np.split(arr2, [1, 2])
print("\nSplitting arr2 at indices 1 and 2:")
for subarr in arr2_split:
    print(subarr)
# 2. Aggregations:
# a) Calculate and print the sum of all elements in arr1 and arr2.
print("\nSum of elements in arr1:", np.sum(arr1))
print("Sum of elements in arr2:", np.sum(arr2))
# b) Find and print the minimum and maximum values in arr1 and arr2.
print("\nMinimum value in arr1:", np.min(arr1))
print("Maximum value in arr1:", np.max(arr1))
print("Minimum value in arr2:", np.min(arr2))
print("Maximum value in arr2:", np.max(arr2))

# c) Calculate and print the mean and standard deviation of arr1 and arr2.
print("\nMean of arr1:", np.mean(arr1))
print("Standard deviation of arr1:", np.std(arr1))
print("Mean of arr2:", np.mean(arr2))
print("Standard deviation of arr2:", np.std(arr2))
