# Given data
data <- c(200, 300, 400, 600, 1000)

# Min-Max normalization
min_value <- 0
max_value <- 1

normalized_data_min_max <- (data - min_value) / (max_value - min_value)

# Display normalized data
print(normalized_data_min_max)

# Z-Score normalization
mean_value <- mean(data)
standard_deviation <- sd(data)

normalized_data_z_score <- (data - mean_value) / standard_deviation

# Display normalized data
print(normalized_data_z_score)