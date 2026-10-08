# ==========================================
# PROGRAM 3: SCATTER PLOT
# ==========================================

# Sample product prices
price <- c(
  100,
  150,
  80,
  120,
  90
)
# Quantity available
quantity <- c(
  250,
  175,
  300,
  200,
  220
)
# Create scatter plot
plot(
  price,
  quantity,
  main = "Product Price vs Quantity Available",
  xlab = "Product Price ($)",
  ylab = "Quantity Available",
  pch = 19,
  col = "red"
)