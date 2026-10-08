# Create product sales data
product <- c(
  "Product A",
  "Product B",
  "Product C"
)
sales <- matrix(
  c(
    2000, 2200, 2400,
    1500, 1800, 1600,
    1200, 1400, 1100
  ),
  nrow = 3,
  byrow = TRUE
)
# Add row and column names
rownames(sales) <- product
colnames(sales) <- c(
  "January",
  "February",
  "March"
)
# Create grouped bar chart
barplot(
  sales,
  beside = TRUE,
  names.arg = c(
    "January",
    "February",
    "March"
  ),
  xlab = "Month",
  ylab = "Sales",
  main = "Product Sales - First Quarter",
  col = c(
    "skyblue",
    "lightgreen",
    "orange"
  ),
  legend.text = product
)