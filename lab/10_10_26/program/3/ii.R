product <- c("Product A", "Product B", "Product C")
category <- c("Electronics", "Furniture", "Accessories")
quantity <- c(250, 175, 300)

inventory_table <- xtabs(quantity ~ product + category)

barplot(
  inventory_table,
  beside = FALSE,
  xlab = "Product",
  ylab = "Quantity Available",
  main = "Product Inventory by Category",
  col = c("skyblue", "lightgreen", "orange"),
  legend.text = TRUE
)