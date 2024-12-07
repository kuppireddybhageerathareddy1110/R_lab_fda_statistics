import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# Data for the operations
data = {
    'Year': [2015, 2016, 2017, 2018, 2019, 2020],
    'Sales': [100, 150, 200, 180, 220, 250],
    'Profit': [10, 20, 25, 15, 30, 35]
}
df = pd.DataFrame(data)

# Part 1: Visualization with Matplotlib
# a) Line plot to visualize the trend of sales over the years
plt.figure(figsize=(8, 6))
plt.plot(df['Year'], df['Sales'], marker='o', linestyle='-', color='b', label='Sales')
plt.xlabel("Year")
plt.ylabel("Sales")
plt.title("Trend of Sales over the Years")
plt.grid(True)
plt.legend()
plt.show()

# b) Bar plot to compare the sales and profit for each year
plt.figure(figsize=(10, 6))
bar_width = 0.4
index = np.arange(len(df['Year']))
plt.bar(index, df['Sales'], bar_width, color='b', label='Sales')
plt.bar(index + bar_width, df['Profit'], bar_width, color='g', label='Profit')
plt.xlabel("Year")
plt.ylabel("Value")
plt.title("Sales and Profit Comparison by Year")
plt.xticks(index + bar_width / 2, df['Year'])
plt.legend()
plt.show()

# c) Scatter plot to show the relationship between sales and profit
plt.figure(figsize=(8, 6))
plt.scatter(df['Sales'], df['Profit'], color='r', label='Sales vs Profit')
plt.xlabel("Sales")
plt.ylabel("Profit")
plt.title("Scatter Plot of Sales vs Profit")
plt.grid(True)
plt.show()

# d) Box plot to display the distribution of sales and profit
plt.figure(figsize=(8, 6))
plt.boxplot([df['Sales'], df['Profit']], labels=['Sales', 'Profit'])
plt.xlabel("Category")
plt.ylabel("Value")
plt.title("Box Plot of Sales and Profit")
plt.show()

# e) Histogram to visualize the distribution of sales
plt.figure(figsize=(8, 6))
plt.hist(df['Sales'], bins=5, color='b', alpha=0.7)
plt.xlabel("Sales")
plt.ylabel("Frequency")
plt.title("Histogram of Sales")
plt.show()

# f) Pie chart to represent the proportion of sales for each year
plt.figure(figsize=(8, 8))
plt.pie(df['Sales'], labels=df['Year'], autopct='%1.1f%%', startangle=90, colors=plt.cm.tab20.colors)
plt.title("Pie Chart of Sales by Year")
plt.show()  # Displaying all plots
