date <- as.Date(c("2023-01-01", "2023-01-02", "2023-01-03"))
page_views <- c(1500, 1600, 1400)

plot(
  date,
  page_views,
  type = "o",
  pch = 19,
  xlab = "Date",
  ylab = "Page Views",
  main = "Daily Page Views Trend",
  col = "blue"
)