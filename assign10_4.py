import pandas as pd
import numpy as np

# Create the DataFrame with missing values
data = {
    'Name': ['John', 'Emily', np.nan, 'Jessica'],
    'Age': [25, np.nan, 32, 30],
    'City': ['New York', 'Los Angeles', 'Chicago', np.nan],
    'Salary': [50000, 60000, np.nan, 55000]
}
df = pd.DataFrame(data)

# Part 1: Detection of Missing Data
# a) Identify the total number of missing values in each column
missing_values_per_column = df.isna().sum()

# b) Determine the percentage of missing values in the 'Age' column
total_rows = len(df)
age_missing_percentage = (missing_values_per_column['Age'] / total_rows) * 100

# Part 2: Handling of Missing Data
# a) Remove rows with missing values and assign to a new DataFrame df_clean
df_clean = df.dropna()

# b) Fill the missing values in the 'Salary' column with the mean salary value
mean_salary = df['Salary'].mean()  # Calculate the mean salary
df_filled = df.copy()  # Create a copy to avoid altering the original DataFrame
df_filled['Salary'] = df_filled['Salary'].fillna(mean_salary)  # Fill the missing salary with the mean

# Print results
print("Total number of missing values in each column:\n", missing_values_per_column)
print("\nPercentage of missing values in the 'Age' column:", age_missing_percentage, "%")
print("\nDataFrame after removing rows with any missing values (df_clean):\n", df_clean)
print("\nDataFrame after filling missing values in the 'Salary' column with the mean salary (df_filled):\n", df_filled)
