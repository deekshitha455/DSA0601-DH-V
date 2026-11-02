date <- as.Date(c(
  "2023-01-01",
  "2023-01-02",
  "2023-01-03"
))

stock_A <- c(100, 105, 110)
stock_B <- c(150, 152, 148)
stock_C <- c(120, 118, 122)

plot(
  date, stock_A,
  type = "o",
  pch = 19,
  col = "blue",
  ylim = range(c(stock_A, stock_B, stock_C)),
  xlab = "Date",
  ylab = "Stock Price ($)",
  main = "Stock Prices Over Time"
)

lines(date, stock_B, type = "o", pch = 19, col = "red")
lines(date, stock_C, type = "o", pch = 19, col = "darkgreen")

legend(
  "topleft",
  legend = c("Stock A", "Stock B", "Stock C"),
  col = c("blue", "red", "darkgreen"),
  lty = 1,
  pch = 19
)