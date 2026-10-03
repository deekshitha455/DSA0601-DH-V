employee_id <- c(1, 2, 3)
years_service <- c(5, 3, 7)
performance <- c(85, 92, 78)

order_index <- order(years_service)

years_sorted <- years_service[order_index]
performance_sorted <- performance[order_index]

plot(
  years_sorted,
  performance_sorted,
  type = "o",
  pch = 19,
  xlab = "Years of Service",
  ylab = "Performance Score",
  main = "Employee Performance Trend",
  col = "blue"
)