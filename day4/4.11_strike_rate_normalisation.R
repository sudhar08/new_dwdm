library(dplyr)
strike_rates <- c(100, 70, 60, 90, 90)
min_max_normalized <- (strike_rates - min(strike_rates)) / (max(strike_rates) - min(strike_rates))
min_max_normalized
z_score_normalized <- (strike_rates - mean(strike_rates)) / sd(strike_rates)
z_score_normalized
mad <- mean(abs(strike_rates - mean(strike_rates)))
mad_normalized <- (strike_rates - mean(strike_rates)) / mad
mad_normalized
k <- 2
decimal_normalized <- strike_rates / 10^k
decimal_normalized
print("Min-Max Normalization:")
print(min_max_normalized)
print("Z-Score Normalization:")
print(z_score_normalized)
print("Z-Score Normalization with MAD:")
print(mad_normalized)
print("Normalization by Decimal Scaling:")
print(decimal_normalized)
