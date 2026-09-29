# ==========================================
# PROGRAM 1: LINE CHART
# ==========================================

# Dataset
employee_id <- c(1, 2, 3, 4, 5)

department <- c(
  "Sales",
  "HR",
  "Marketing",
  "Sales",
  "HR"
)

years_service <- c(5, 3, 7, 4, 2)

performance <- c(
  85,
  92,
  78,
  90,
  76
)

# Order employees according to years of service
order_index <- order(years_service)

years_sorted <- years_service[order_index]
performance_sorted <- performance[order_index]
department_sorted <- department[order_index]

# Create line chart
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

# Add legend
legend(
  "topright",
  legend = "Employee Performance",
  col = "blue",
  lty = 1,
  pch = 19
)