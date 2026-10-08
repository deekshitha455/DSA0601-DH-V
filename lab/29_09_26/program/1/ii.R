# Sample product sales data
product <- c(
  "Laptop",
  "Mobile",
  "Tablet",
  "Headphones",
  "Smartwatch"
)

product_sales <- c(
  45000,
  38000,
  25000,
  18000,
  15000
)

# Bar Chart
barplot(
  product_sales,
  names.arg = product,
  xlab = "Product",
  ylab = "Annual Sales ($)",
  main = "Top-Selling Products for the Year",
  col = "skyblue"
)