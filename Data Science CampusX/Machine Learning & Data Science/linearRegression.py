import matplotlib.pyplot as plt
import numpy as np
from sklearn import datasets, linear_model
from sklearn.metrics import mean_squared_error

diabetes = datasets.load_diabetes()
# print(diabetes.keys())
# print(diabetes.data)
# print(diabetes.DESCR)   
# diabetes_X = diabetes.data[:,np.newaxis, 2] # this is not recommended to take eonly one feature from the entire data set
diabetes_X = diabetes.data

# print(diabetes_X)
diabetes_X_train = diabetes_X[:-30]
diabetes_X_test = diabetes_X[-30:]

diabetes_Y_train = diabetes.target[:-30]
diabetes_Y_test = diabetes.target[-30:]

model = linear_model.LinearRegression()
model.fit(diabetes_X_train, diabetes_Y_train)
diabetes_Y_predicted = model.predict(diabetes_X_test)

print("Mean Squred Error: ", mean_squared_error(diabetes_Y_test, diabetes_Y_predicted))
print("Weights: ",  model.coef_)
print("Intercepts: ", model.intercept_)

# Hide these line of code because they float an error which we plot only one features from the entire data set
# plt.scatter(diabetes_X_test, diabetes_Y_test)
# plt.plot(diabsetes_X_test, diabetes_Y_predicted)
# plt.show()






