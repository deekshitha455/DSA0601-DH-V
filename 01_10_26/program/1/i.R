# ==========================================
# PROGRAM 1: BAR CHART OF PRODUCT INVENTORY
# ==========================================

# Create product inventory data
product <- c(
  "Product A",
  "Product B",
  "Product C",
  "Product D",
  "Product E"
)

quantity <- c(
  250,
  175,
  300,
  200,
  220
)

# Create bar chart
barplot(
  quantity,
  names.arg = product,
  xlab = "Product",
  ylab = "Quantity Available",
  main = "Product Inventory",
  col = "skyblue"
)