category <- c("Electronics", "Clothing", "Appliances")
sales <- c(50000, 35000, 40000)

# Sort sales in decreasing order
order_index <- order(sales, decreasing = TRUE)

category_sorted <- category[order_index]
sales_sorted <- sales[order_index]

# Funnel-style horizontal bars
barplot(
  sales_sorted,
  names.arg = category_sorted,
  horiz = TRUE,
  las = 1,
  xlab = "Sales ($)",
  main = "Sales Funnel by Product Category",
  col = "skyblue"
)