from matplotlib import pyplot as plt

years = [1950, 1960, 1970, 1980, 1990, 2000, 2010]
gdp = [300.2, 543.5, 1075.6, 2000, 2500, 3000, 3010]
plt.plot(years, gdp, color='green', marker='o', linestyle='solid')
plt.title('Norminal GDP')
plt.ylabel('Billions of $')
plt.savefig('testfig')
