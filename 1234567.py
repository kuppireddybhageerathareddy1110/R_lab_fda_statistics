import numpy as np

# Define the structured array
data = np.array([(1, 2.5, 'A'), (2, 3.6, 'B'), (3, 4.7, 'C')],
                dtype=[('ID', int), ('Value', float), ('Category', 'U1')])

# 1. Computations on Arrays:
# a) Compute the square of the 'Value' column in the structured array and assign it to a new variable. Print the new array.
value_squared = data['Value'] ** 2
print("Square of 'Value' column:")
print(value_squared)

# b) Calculate the mean of the 'ID' column in the structured array. Print the result.
id_mean = np.mean(data['ID'])
print("\nMean of 'ID' column:", id_mean)

# c) Perform element-wise multiplication of the 'ID' column with the 'Value' column and store the result in a new array. Print the new array.
id_value_product = data['ID'] * data['Value']
print("\nElement-wise multiplication of 'ID' and 'Value' columns:")
print(id_value_product)

# 2. NumPy's Structured Arrays:
# a) Access and print the value in the second row of the 'Category' column.
category_value_second_row = data['Category'][1]
print("\nValue in the second row of 'Category' column:", category_value_second_row)

# b) Update the value in the third row of the 'Value' column to 5.2. Print the modified array to verify the change.
data['Value'][2] = 5.2
print("\nModified array after updating value in the third row of 'Value' column:")
print(data)

# c) Sort the structured array based on the 'ID' column in ascending order. Print the sorted array.
sorted_data = np.sort(data, order='ID')
print("\nSorted array based on 'ID' column:")
print(sorted_data)
