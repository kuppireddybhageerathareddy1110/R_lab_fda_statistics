import pandas as pd

# Your DataFrame
data = {
    'Name': ['John', 'Emily', 'Michael', 'Jessica'],
    'Age': [25, 28, 32, 30],
    'City': ['New York', 'Los Angeles', 'Chicago', 'Houston'],
    'Salary': [50000, 60000, 70000, 55000]
}
df = pd.DataFrame(data)

# 1. Introducing Pandas Objects:
# a) Print the entire DataFrame `df`
print(df)

# b) Determine and print the shape of the DataFrame `df`
print(df.shape)

# c) Identify the data types of each column in the DataFrame `df`
print(df.dtypes)

# 2. Data Indexing and Selection:
# a) Access and print the 'Name' column of the DataFrame `df`
print(df['Name'])

# b) Access and print the second row of the DataFrame `df`
print(df.iloc[1])

# c) Access and print the salary of the employee with the name 'Michael'
print(df.loc[df['Name'] == 'Michael', 'Salary'])

# d) Create a new DataFrame `df_filtered` that includes only the rows where the age is greater than 27
df_filtered = df[df['Age'] > 27]
print(df_filtered)
