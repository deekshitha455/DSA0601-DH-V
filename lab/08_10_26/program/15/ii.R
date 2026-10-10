month <- c("January", "February", "March")

product_A <- c(2000, 2200, 2400)
product_B <- c(1500, 1800, 1600)
product_C <- c(1200, 1400, 1100)

total_A <- product_A
total_AB <- product_A + product_B
total_ABC <- product_A + product_B + product_C

plot(
  1:3,
  total_ABC,
  type = "n",
  xaxt = "n",
  xlab = "Month",
  ylab = "Sales",
  main = "Overall Product Sales Trend",
  ylim = c(0, max(total_ABC))
)

axis(
  1,
  at = 1:3,
  labels = month
)

polygon(
  c(1:3, 3:1),
  c(total_A, rep(0, 3)),
  col = "skyblue",
  border = "blue"
)

polygon(
  c(1:3, 3:1),
  c(total_AB, rev(total_A)),
  col = "lightgreen",
  border = "green"
)

polygon(
  c(1:3, 3:1),
  c(total_ABC, rev(total_AB)),
  col = "orange",
  border = "red"
)

legend(
  "topleft",
  legend = c("Product A", "Product B", "Product C"),
  fill = c("skyblue", "lightgreen", "orange")
)