employee_id <- c(1, 2, 3)
years_service <- c(5, 3, 7)
performance <- c(85, 92, 78)

order_index <- order(years_service)

plot(
  years_service[order_index],
  performance[order_index],
  type = "o",
  pch = 19,
  xlab = "Years of Service",
  ylab = "Performance Score",
  main = "Employee Performance Trend",
  col = "blue"
)