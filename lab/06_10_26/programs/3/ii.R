date <- c("2023-01-01", "2023-01-02", "2023-01-03")
click_rate <- c(2.3, 2.7, 2.0)

N <- 2

top_index <- order(click_rate, decreasing = TRUE)[1:N]

top_dates <- date[top_index]
top_rates <- click_rate[top_index]

barplot(
  top_rates,
  names.arg = top_dates,
  xlab = "Date",
  ylab = "Click-through Rate (%)",
  main = "Top 2 Days by Click-through Rate",
  col = "skyblue"
)