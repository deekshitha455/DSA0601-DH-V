category <- c("Electronics", "Clothing", "Appliances")
sales <- c(50000, 35000, 40000)

pie(
  sales,
  labels = paste(category, "$", sales),
  main = "Sales Distribution by Product Category"
)