import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
import plotly.express as px

base_credit = pd.read_csv('credit_risk_dataset.csv')
base_credit
base_credit.head(10)
base_credit.tail(8)
base_credit.describe()
base_credit[base_credit['person_income'] >= 69995.685578]
base_credit[base_credit['loan_amnt'] <= 9589.3711060]
np.unique(base_credit['loan_status'], return_counts=True)
sns.countplot(x = base_credit['loan_status']);
plt.hist(x = base_credit['person_age']);
plt.hist(x = base_credit['person_income']);
plt.hist(x = base_credit['loan_amnt']);
grafico = px.scatter_matrix(base_credit, dimensions=['person_age', 'person_income', 'loan_intent'], color = 'loan_status')
grafico.show()
base_credit.loc[base_credit['person_emp_length'] < 0]
base_credit[base_credit['person_emp_length'] < 0]
base_credit2 = base_credit.drop('person_emp_length', axis = 1)
base_credit2
base_credit.index
base_credit[base_credit['person_emp_length'] < 0].index
base_credit3 = base_credit.drop(base_credit[base_credit['person_emp_length'] < 0].index)
base_credit3
base_credit3.loc[base_credit3['person_emp_length'] < 1]
base_credit.mean()
base_credit['person_emp_length'].mean()
base_credit.head(27)
base_credit.isnull()
base_credit.isnull().sum()