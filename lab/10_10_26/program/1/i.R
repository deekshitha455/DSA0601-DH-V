customer_id <- c(1, 2, 3)
age <- c(28, 35, 42)

barplot(
  age,
  names.arg = customer_id,
  xlab = "Customer ID",
  ylab = "Age",
  main = "Distribution of Customer Ages",
  col = "skyblue"
)