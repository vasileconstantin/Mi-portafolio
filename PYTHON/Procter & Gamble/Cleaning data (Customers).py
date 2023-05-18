import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
# DATA EXPLORATION
#  Read the Excel file into a Pandas DataFrame
df = pd.read_excel('D:\GITHUB\Excel\Procter and Gamble\Customers.xlsx')
# set display option to show all columns
# Just when needed(displays all columns) pd.set_option('display.max_columns', None)
print(df.head())

# Checking the Data. We need to understand its structure , size, and quality
print(df.shape)
print(df.head())
print(df.tail())
print(df.info())
print(df.describe())

# Check for Missing Values
print(df.isnull().sum())
print(df.dropna())
print(df)

# Renaming the columns to remove spaces and special characters:
df = df.rename(columns={'Customer ID' : 'Customer_ID',
                        'Most purchased product(by customer)': 'Most_purchased_product_by_customers',
                        'Product Category': 'Product_Category',
                        'Purchase amount in 2021': 'Purchase_amount_2021',
                        'Purchase amount in 2022': 'Purchase_amount_2022',
                        'Loyalty Program': 'Loyalty_Program',
                        'Promo Code Used(last purchase)': 'Promo_code_last_purchase',
                        'Payment method': 'Payment_Method',
                        'Channel Purchased': 'Channel_Purchased',
                        })
print(df.columns)

# Converting the 'Purchase_amount_2021' and 'Purchase_amount_2022' columns to float type:
#df['Purchase_amount_2021'] = df['Purchase_amount_2021'].astype(float)
#df['Purchase_amount_2022'] = df['Purchase_amount_2022'].astype(float)

# set display options to show all the rows and columns
pd.set_option('display.max_rows', None)
pd.set_option('display.max_columns', None)

print(df)

