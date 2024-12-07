import pandas as pd
import numpy as np

# Define the DataFrame with some missing data
data = {
    'Name': ['John', 'Emily', np.nan, 'Jessica'],
    'Age': [25, np.nan, 32, 30],
    'City': ['New York', 'Los Angeles', 'Chicago', np.nan],
    'Salary': [50000, 60000, np.nan, 55000]
}
df = pd.DataFrame(data)

# Part 1: Detection of Missing Data
# a) Identify and print the total number of missing values in each column
total_missing = df.isnull().sum()  # Total missing values in each column

# b) Determine and print the percentage of missing values in the 'Age' column
age_missing_percentage = df['Age'].isnull().mean() * 100  # Percentage of missing values in the 'Age' column

print("Total Missing Values in Each Column:")
print(total_missing)

print("\nPercentage of Missing Values in 'Age' Column:")
print(f"{age_missing_percentage:.2f}%")

# Part 2: Handling of Missing Data
# a) Remove rows that contain missing values and assign the result to a new DataFrame `df_clean`
df_clean = df.dropna()  # Remove rows with any missing values

# b) Fill the missing values in the 'Salary' column with the mean salary value
mean_salary = df['Salary'].mean()  # Calculate mean salary
df_filled = df.copy()  # Create a copy of the original DataFrame
df_filled['Salary'] = df_filled['Salary'].fillna(mean_salary)  # Fill missing salary with mean salary

print("\nDataFrame After Removing Rows with Missing Values:")
print(df_clean.to_string(index=False))

print("\nDataFrame After Filling Missing Salary with Mean:")
print(df_filled.to_string(index=False))
