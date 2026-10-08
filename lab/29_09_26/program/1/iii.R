# Monthly sales data
sales <- c(
  15000,
  18000,
  22000,
  20000,
  23000
)

# Sample advertising budget data
advertising <- c(
  5000,
  6000,
  7000,
  8000,
  9000
)

# Scatter Plot
plot(
  advertising,
  sales,
  main = "Advertising Budget vs Monthly Sales",
  xlab = "Advertising Budget ($)",
  ylab = "Monthly Sales ($)",
  pch = 19,
  col = "red"
)