# ==========================================
# PROGRAM 3: SCATTER PLOT
# ==========================================

# Dataset
years_service <- c(
  5,
  3,
  7,
  4,
  2
)

performance <- c(
  85,
  92,
  78,
  90,
  76
)

# Create scatter plot
plot(
  years_service,
  performance,
  main = "Years of Service vs Performance Score",
  xlab = "Years of Service",
  ylab = "Performance Score",
  pch = 19,
  col = "red"
)