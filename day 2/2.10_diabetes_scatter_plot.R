# Load required libraries
library(ggplot2)
library(dplyr)

# Create or load a sample diabetes dataset (replace this with your actual data)
# Here's a simplified example dataset for demonstration purposes
diabetes_data <- data.frame(
  age = c(35, 45, 50, 55, 60, 65, 70, 75, 80, 85),
  blood_pressure = c(120, 130, 140, 150, 160, 170, 180, 190, 200, 210),
  diabetes_status = c("No", "Yes", "No", "No", "Yes", "Yes", "No", "No", "Yes", "No")
)

# Define age categories
age_breaks <- c(30, 40, 50, 60, 70, 80, 90)

# Categorize ages
diabetes_data <- diabetes_data %>%
  mutate(age_group = cut(age, breaks = age_breaks, labels = c("30-39", "40-49", "50-59", "60-69", "70-79", "80-89")))

# Create scatter plot
scatter_plot <- ggplot(diabetes_data, aes(x = age, y = blood_pressure, color = diabetes_status)) +
  geom_point() +
  labs(title = "Scatter Plot of Age vs Blood Pressure by Diabetes Status",
       x = "Age",
       y = "Blood Pressure") +
  theme_minimal()

# Create bar chart
bar_chart <- ggplot(diabetes_data, aes(x = age_group, fill = diabetes_status)) +
  geom_bar(position = "dodge") +
  labs(title = "Bar Chart of Age Groups vs Diabetes Status by Blood Pressure",
       x = "Age Group",
       y = "Count") +
  theme_minimal()

# Display the plots
scatter_plot
bar_chart
