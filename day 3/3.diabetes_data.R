# Load required libraries
library(dplyr)
library(readr)
library(ggplot2)
library(caret)

# Load the dataset
diabetes_data <- read_csv("D:/diabetes.csv")

# Preprocess and explore the dataset
# (You may need to clean, transform, and handle missing values if required)

# Linear Regression: Analyze diabetes trend based on age
linear_model <- lm(DiabetesPedigreeFunction ~ Age, data = diabetes_data)

# Display linear regression results
summary(linear_model)

# Create scatter plot with regression line
ggplot(diabetes_data, aes(x = Age, y = DiabetesPedigreeFunction)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Diabetes Trend by Age (Linear Regression)",
       x = "Age",
       y = "Diabetes Status")

# Multiple Regression: Analyze diabetes trend with other variables
multiple_model <- lm(DiabetesPedigreeFunction ~ Age + BMI + BloodPressure + Glucose, data = diabetes_data)

# Display multiple regression results
summary(multiple_model)
