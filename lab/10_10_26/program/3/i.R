product <- c("Product A", "Product B", "Product C")
quantity <- c(250, 175, 300)

barplot(
  quantity,
  names.arg = product,
  xlab = "Product",
  ylab = "Quantity Available",
  main = "Product Inventory",
  col = "skyblue"
)