x_values <- c(4, 1, 5, 7, 10, 2, 50, 25, 90, 36)
y_values <- c(12, 5, 13, 19, 31, 7, 153, 72, 275, 110)

library(ggplot2)  # Load ggplot2 package
# Create a data frame
data <- data.frame(x = x_values, y = y_values)
# Create a scatter plot
scatter_plot <- ggplot(data, aes(x = x, y = y)) +
  geom_point() +  # Add points to the plot
  labs(title = "Scatter Plot of Mobile Phones Sold", x = "Number of Mobile Phones Sold", y = "Money")  # Set title and axis labels
# Display the scatter plot
print(scatter_plot)

