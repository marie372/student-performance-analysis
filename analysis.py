import pandas as pd
from sqlalchemy import create_engine

engine = create_engine(
    "postgresql+psycopg2://postgres:December2003@localhost:5432/student_analysis"
)

query = "SELECT * FROM student_performance"

df = pd.read_sql(query, engine)

print(df.head())
print(df.info())
print(df.describe())

average_score = df["examscore"].mean()

print("Average Exam Score:", average_score)

top_students = df.sort_values(by="examscore", ascending=False)

print(top_students.head(10))
correlation = df.corr(numeric_only=True)

print(correlation)

import matplotlib.pyplot as plt

plt.scatter(df["studyhours"], df["examscore"])

plt.xlabel("Study Hours")
plt.ylabel("Exam Score")
plt.title("Study Hours vs Exam Score")

plt.show()