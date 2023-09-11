# Sample data
data <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)

# (a) Equal-frequency (equi-depth) partitioning
bins_equal_frequency <- cut(data, breaks = 3, labels = FALSE)

# (b) Equal-width partitioning
bins_equal_width <- cut(data, breaks = 3, labels = FALSE)

# (c) Clustering (k-means)
k <- 3
kmeans_clusters <- kmeans(matrix(data, ncol = 1), centers = k)
bins_clustering <- kmeans_clusters$cluster

# Plotting histograms
par(mfrow = c(3, 1))
par(mfrow = c(3, 1))

hist(data, main = "Original Data", xlab = "Marks")

hist(data, breaks = 3, main = "Equal-Frequency Partitioning",
     xlab = "Marks", col = bins_equal_frequency)

hist(data, breaks = "FD", main = "Equal-Width Partitioning",
     xlab = "Marks", col = bins_equal_width)

hist(data, main = "Clustering", xlab = "Marks", col = bins_clustering)
