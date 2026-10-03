# Create data
date <- c(
  "2023-01-01",
  "2023-01-02",
  "2023-01-03",
  "2023-01-04",
  "2023-01-05"
)
click_rate <- c(
  2.3,
  2.7,
  2.0,
  2.4,
  2.6
)
# Number of top days
N <- 3
# Find top N click-through rates
top_index <- order(
  click_rate,
  decreasing = TRUE
)[1:N]
top_dates <- date[top_index]
top_rates <- click_rate[top_index]
# Create bar chart
barplot(
  top_rates,
  names.arg = top_dates,
  xlab = "Date",
  ylab = "Click-through Rate (%)",
  main = "Top 3 Days by Click-through Rate",
  col = "skyblue"
)