import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

#  Read the Excel file into a Pandas DataFrame
df = pd.read_excel('D:\GITHUB\Excel\Procter and Gamble\Customers.xlsx')
# set display option to show all columns
# Just when needed(displays all columns) pd.set_option('display.max_columns', None)


# Renaming the columns to remove spaces and special characters:
df = df.rename(columns={'Customer ID' : 'Customer_ID',
                        'Most purchased product(by customer)': 'Most_purchased_product',
                        'Product Category': 'Product_Category',
                        'Purchase amount in 2021': 'Purchase_amount_2021',
                        'Purchase amount in 2022': 'Purchase_amount_2022',
                        'Loyalty Program': 'Loyalty_Program',
                        'Promo Code Used(last purchase)': 'Promo_code_last_purchase',
                        'Payment method': 'Payment_Method',
                        'Channel Purchased': 'Channel_Purchased',
                        })
print(df.columns)

# Here are 10 business intelligence questions and their respective answers in Python:
# 1.What is the total purchase amount for each customer in 2021 and 2022?
total_purchase_amount = df.groupby('Customer_ID')[['Purchase_amount_2021' , 'Purchase_amount_2022']].sum()
print(total_purchase_amount)

# 2. How many customers made a purchase in each city?
# Count the number of unique customers in each city
customers_by_city = df.groupby('City')['Customer_ID'].nunique()
print(customers_by_city)

# Creating a bar chart of the results
customers_by_city.plot(kind='bar')

# Setting the title and axis labels
plt.title('Number of Customers by City')
plt.xlabel('City')
plt.ylabel('Number of Customers')

# display the chart
plt.show()

# 3.What is the most purchased product by category
# Group the DataFrame by product category and count the number of occurrences of each product
most_purchased_product = df.groupby(['Product_Category','Most_purchased_product']).size().reset_index(name='count')

# Sort the result by count in descending order
most_purchased_product = most_purchased_product.sort_values(by='count', ascending=False)

# print the result
print(most_purchased_product)

# 4. What is the average purchase amount by payment method?
# group the DataFrame by payment method and calculate the mean purchase amount
average_purchase_amount = df.groupby('Payment_Method')[['Purchase_amount_2021','Purchase_amount_2022']].mean()

# print the result
print(average_purchase_amount)

# 5. How many customers made a purchase through each channel?
customers_by_channel = df.groupby('Channel_Purchased')['Customer_ID'].nunique()
# print the result
print(customers_by_channel)

# 6.What is the loyalty program by City?
# group the data by city and loyalty program, and calculate the count of customers
loyalty_by_city = df.groupby(['City', 'Loyalty_Program'])['Customer_ID'].count().unstack()

# create a stacked bar chart of the results
loyalty_by_city.plot(kind='bar', stacked=True)

# set the title and axis labels
plt.title('Loyalty Program Users by City')
plt.xlabel('City')
plt.ylabel('Number of Customers')

# display the chart
plt.show()

#7. What is the distribution of customers by age group
# create age groups based on predefined bins
age_bins = [0,18,25,35,45,55,65,100]
age_labels = ['<18', '18-25', '26-35', '36-45', '46-55', '56-65', '65+']
customer_age_groups = pd.cut(df['Age'], bins=age_bins , labels= age_labels)

# group the data by age group and calculate the count of customers
customer_age_counts = df.groupby(customer_age_groups)['Customer_ID'].count()

# filter out age groups with zero counts
customer_age_counts = customer_age_counts[ customer_age_counts > 0]

# create a pie chart of the results
customer_age_counts.plot(kind='pie', autopct='%1.1f%%')

# set the title
plt.title('Distribution of Customers by Age Group')
plt.show()

#8.What is the average purchase amount by product category and gender?

# group the DataFrame by product category and gender and calculate the mean purchase amount
average_purchase_amount = df.groupby(['Product_Category','Gender'])[['Purchase_amount_2021', 'Purchase_amount_2022']].mean()

print(average_purchase_amount)

#9.How many customers have made a purchase in each canton?

# count the number of customers who have made a purchase in each canton
customers_by_canton = df.groupby('Canton')['Customer_ID'].nunique()
print(customers_by_canton)

#10.What is the total purchase amount by payment method in 2021?
# group the data by payment method and calculate the mean purchase amount
payment_sum = df.groupby('Payment_Method')['Purchase_amount_2021'].sum().sort_values()

# create a bar chart to visualize the results
plt.bar(payment_sum.index, payment_sum.values)
plt.xlabel('Payment Method')
plt.ylabel('Total Purchase Amount ($)')
plt.title('Total Purchase Amount by Payment Method')
plt.show()
