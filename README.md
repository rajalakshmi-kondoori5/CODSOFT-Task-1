🚢 Titanic Survival Prediction

This project uses the Titanic dataset to build a machine learning model that predicts whether a passenger survived or not. The Titanic dataset is one of the most famous beginner-friendly datasets in data science and machine learning, making it a great starting point for learning classification tasks.

📌 Project Overview

The sinking of the Titanic is one of the most infamous shipwrecks in history. Using passenger data (such as name, age, gender, ticket class, and fare), we aim to predict which passengers were likely to survive.

This project demonstrates the end-to-end data science workflow, including:

Data preprocessing

Exploratory Data Analysis (EDA)

Feature engineering

Model training and evaluation

📂 Dataset

The dataset includes passenger details such as:
Age, Gender, Ticket Class, Fare, Family members onboard, Embarked location, etc.
Target variable: Survived (0 = Did not survive, 1 = Survived)

⚙️ Tech Stack

Language: R
Libraries:

caret → Data partitioning & evaluation

ggplot2 → Visualization

stats → Logistic Regression (glm)

🔎 Approach

Load dataset and inspect structure (str, summary)

Handle missing values (impute missing Age with median)

Convert Survived column to factor (classification target)

Train/test split (70% training, 30% testing)

Build Logistic Regression model (glm)

Make predictions and classify (ifelse threshold = 0.5)

Evaluate with Confusion Matrix

Visualize survival by gender & class using ggplot2

Output:

<img width="1280" height="763" alt="image" src="https://github.com/user-attachments/assets/980e3850-bba9-4490-9449-c0610e6acf7c" />

The matrix & statistics

<img width="340" height="415" alt="image" src="https://github.com/user-attachments/assets/7eec7e48-eee5-44e0-9781-86b41aef33df" />

The plot

<img width="887" height="544" alt="image" src="https://github.com/user-attachments/assets/5db7dbfe-2738-47f8-b835-9a855c1bf053" />
