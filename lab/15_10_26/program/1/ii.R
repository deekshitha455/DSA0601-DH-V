advertising <- c(5000, 6000, 7000, 8000, 9000)
sales <- c(15000, 18000, 22000, 20000, 23000)

plot(
  advertising,
  sales,
  pch = 19,
  col = "blue",
  xlab = "Advertising Budget ($)",
  ylab = "Monthly Sales ($)",
  main = "Advertising Budget vs Monthly Sales"
)

correlation <- cor(advertising, sales)
print(correlation)