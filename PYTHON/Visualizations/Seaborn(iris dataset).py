import seaborn as sns
import matplotlib.pyplot as plt

# Load the Iris dataset
iris = sns.load_dataset('iris')

# Exploratory Data Analysis (EDA)
# Scatter plot of sepañ length versus sepal width
sns.scatterplot( data = iris, x = 'sepal_length', y='sepal_width', hue='species')
plt.title('Scatter plot of Sepal Length vs Sepal Width')
plt.show()

# Box plot of petal length by species
sns.boxplot(data= iris ,x='species', y ='petal_length')
plt.title('Box plot of Petal Length by Species')
plt.show()

# Distribution of sepal width by species
sns.histplot( data=iris, x='sepal_width', hue='species', multiple='stack')
plt.title('Distribution of Sepal Width by Species')
plt.show()

# Pairwise relationships between variables
sns.pairplot(data=iris, hue='species')
plt.title('Pairwise Relationships between Variables')
plt.show()