month <- c("January", "February", "March", "April", "May")
sales <- c(15000, 18000, 22000, 20000, 23000)

plot(
  sales,
  type = "o",
  pch = 19,
  xaxt = "n",
  xlab = "Month",
  ylab = "Sales ($)",
  main = "Monthly Sales Trend",
  col = "blue"
)

axis(1, at = 1:5, labels = month)