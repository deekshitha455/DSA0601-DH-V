stock_A <- c(100, 105, 110)

percentage_change <- diff(stock_A) / head(stock_A, -1) * 100

change_dates <- c("2023-01-02", "2023-01-03")

barplot(
  percentage_change,
  names.arg = change_dates,
  xlab = "Date",
  ylab = "Percentage Change (%)",
  main = "Daily Percentage Change in Stock A",
  col = "skyblue"
)

abline(h = 0, col = "red")