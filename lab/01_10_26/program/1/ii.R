# ==========================================
# PROGRAM 2: STACKED BAR CHART
# ==========================================
# Product data
product <- c(
  "Product A",
  "Product B",
  "Product C",
  "Product D",
  "Product E"
)
category <- c(
  "Electronics",
  "Electronics",
  "Furniture",
  "Furniture",
  "Accessories"
)
quantity <- c(
  250,
  175,
  300,
  200,
  220
)
# Create table
inventory_table <- xtabs(
  quantity ~ category + product
)
# Create stacked bar chart
barplot(
  inventory_table,
  beside = FALSE,
  xlab = "Product",
  ylab = "Quantity Available",
  main = "Product Inventory by Category",
  col = c("skyblue", "lightgreen", "orange"),
  legend.text = TRUE
)