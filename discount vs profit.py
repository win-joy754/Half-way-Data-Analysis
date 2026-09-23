import pandas as pd
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_absolute_error,mean_squared_error,r2_score
df=pd.read_csv(r"C:\Users\admin\OneDrive\Desktop\Sample - Superstore.csv",encoding="latin1")
print(df.head())
print("\ndiscount and profit")
print(df[["Discount","Profit"]].head())
df_model=df[["Sales","Discount","Profit"]]
plt.figure(figsize=(8,5))
plt.scatter(
    df_model["Discount"],
    df_model["Profit"],
    alpha=0.5
    )
plt.xlabel("Discount")
plt.ylabel("Profit")
plt.title("Discount vs Profit")
plt.grid(True)
plt.show()
X=df_model[["Sales","Discount"]]
y=df_model[["Profit"]]
X_train,X_test,y_train,y_test=train_test_split(X,y,test_size=0.2,random_state=42)
model=LinearRegression()
model.fit(X_train,y_train)
y_pred=model.predict(X_test)
mae=mean_absolute_error(y_test,y_pred)
mse=mean_squared_error(y_test,y_pred)
r2=r2_score(y_test,y_pred)
print("\nmodel results")
print("mean absolute error:",mae)
print("mean squared error:",mse)
print("R2score:",r2)
Price=float(input("enter the price/sales amount"))
Discount=float(input("enter the discount"))
Discount_decimal=Discount/100
user_data=pd.DataFrame({"Sales":[Price],"Discount":[Discount_decimal]})
predicted_profit=model.predict(user_data)[0]
print(f"Prize/sales:${Price:.2f}")
print(f"Discount:{Discount:.1f}%")
print(f"Predicted Profit:${predicted_profit[0]:.2f}")