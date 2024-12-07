import numpy as np
import pandas as pd

# Define the DataFrame
data = {
    'Name': ['John', 'Emily', 'Michael', 'Jessica'],
    'Age': [25, 28, 32, 30],
    'City': ['New York', 'Los Angeles', 'Chicago', 'Houston'],
    'Salary': [50000, 60000, 70000, 55000]
}
df = pd.DataFrame(data)
# Part 1: Operating on Data in Pandas
# a) Calculate the mean age
mean_age = df['Age'].mean()
# b) Calculate the total salary of all employees
total_salary = df['Salary'].sum()
# c) Calculate the maximum salary among all employees
max_salary = df['Salary'].max()
# Part 2: Data Manipulation
# a) Add a new column 'Bonus' with random values between 1000 and 5000 for each employee
np.random.seed(42)  # Setting seed for reproducibility
df['Bonus'] = np.random.randint(1000, 5000, size=len(df))
# b) Increase the salary of all employees by 10%
df['Salary'] *= 1.10  # Applying a 10% increase
# Part 3: Data Aggregation
# a) Group by 'City' and calculate the average age for each city
grouped_avg_age = df.groupby('City')['Age'].mean().reset_index()
# b) Group by 'City' and calculate the total salary for each city
grouped_total_salary = df.groupby('City')['Salary'].sum().reset_index()
# Print results
print("Mean Age:", mean_age)  # Mean age
print("Total Salary:", total_salary)  # Total salary
print("Maximum Salary:", max_salary)  # Maximum salary
print("\nDataFrame with Bonus Column:")
print(df.to_string(index=False))  # DataFrame with bonus column
print("\nAverage Age by City:")
print(grouped_avg_age.to_string(index=False))  # Average age by city
print("\nTotal Salary by City:")
print(grouped_total_salary.to_string(index=False))  # Total salary by city
