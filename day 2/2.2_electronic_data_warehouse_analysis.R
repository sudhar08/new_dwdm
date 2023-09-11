# Load required libraries
library(ggplot2)

# Original data
data <- c(1, 1, 5, 5, 5, 5, 5, 8, 8, 10, 10, 10, 10, 12, 14, 14, 14, 15, 15, 15, 15, 15, 15, 18, 18, 18, 18, 18, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 25, 25, 25, 25, 25, 28, 28, 30)

# (i) Equal-Frequency Partitioning with 3 Bins
bins <- cut(data, breaks = 3, labels = c("Bin 1", "Bin 2", "Bin 3"))

# (ii) Data Smoothing Using Bin Means and Bin Boundaries
bin_means <- tapply(data, bins, mean)
bin_boundaries <- tapply(data, bins, min)

# (iii) Plotting the Histogram
ggplot(data.frame(data = data, bins = bins), aes(x = data, fill = bins)) +
  geom_histogram(binwidth = 1, position = "identity", alpha = 0.7) +
  scale_fill_manual(values = c("Bin 1" = "blue", "Bin 2" = "green", "Bin 3" = "red")) +
  geom_vline(xintercept = bin_boundaries, color = "black", linetype = "dashed") +
  geom_text(data = data.frame(bins = unique(bins), x = bin_means, y = 3), 
            aes(x = x, y = y, label = round(x, 2)),
            position = position_nudge(y = 1), vjust = -0.5, color = "black") +
  labs(title = "Histogram with Equal-Frequency Partitioning",
       x = "Data", y = "Frequency", fill = "Bin") +
  theme_minimal()
