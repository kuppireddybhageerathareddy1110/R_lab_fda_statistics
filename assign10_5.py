import pandas as pd

# Create the DataFrame with a MultiIndex
data = {
    'Group': ['A', 'A', 'B', 'B', 'C', 'C'],
    'Category': ['X', 'Y', 'X', 'Y', 'X', 'Y'],
    'Value': [10, 20, 30, 40, 50, 60]
}
df = pd.DataFrame(data)

# Set a hierarchical index with 'Group' and 'Category'
df = df.set_index(['Group', 'Category'])

# Part 1: Hierarchical Indexing
# a) Print the DataFrame with hierarchical index
print("DataFrame with Hierarchical Index:")
print(df)

# b) Access and print the value corresponding to Group 'A' and Category 'X'
value_a_x = df.loc[('A', 'X'), 'Value']
print("\nValue for Group 'A' and Category 'X':", value_a_x)

# c) Access and print the sub-dataframe corresponding to all rows with Group 'B'
sub_df_b = df.loc['B']  # Retrieve the sub-dataframe for Group 'B'
print("\nSub-dataframe for Group 'B':")
print(sub_df_b)
