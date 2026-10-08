# Dataset
month <- c("January", "February", "March", "April", "May")
sales <- c(15000, 18000, 22000, 20000, 23000)

# Line Chart
plot(
  sales,
  type = "o",
  xaxt = "n",
  xlab = "Month",
  ylab = "Sales ($)",
  main = "Monthly Sales",
  col = "blue"
)

# Add month names to x-axis
axis(
  1,
  at = 1:5,
  labels = month
)