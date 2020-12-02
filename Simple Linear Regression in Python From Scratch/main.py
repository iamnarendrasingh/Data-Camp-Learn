import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

data = pd.read_csv("E:\Self_GitKraken\Working_Repo_GitHub\Data-Camp-Learn\Simple Linear Regression in Python From Scratch\Salary_Data.csv")
x = data['YearsExperience']
y = data['Salary']
print(data.head())

def linear_regression(x, y):     
    N = len(x)
    x_mean = x.mean()
    y_mean = y.mean()
    
    B1_num = ((x - x_mean) * (y - y_mean)).sum()
    B1_den = ((x - x_mean)**2).sum()
    B1 = B1_num / B1_den
    
    B0 = y_mean - (B1*x_mean)
    
    reg_line = 'y = {} + {}β'.format(B0, round(B1, 3))
    
    return (B0, B1, reg_line)