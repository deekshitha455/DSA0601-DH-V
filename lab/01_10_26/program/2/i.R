# ==========================================
# PROGRAM 1: LINE CHART OF DAILY PAGE VIEWS
# ==========================================

# Create website traffic data
date <- as.Date(c(
  "2023-01-01",
  "2023-01-02",
  "2023-01-03",
  "2023-01-04",
  "2023-01-05"
))

page_views <- c(
  1500,
  1600,
  1400,
  1650,
  1800
)

# Create line chart
plot(
  date,
  page_views,
  type = "o",
  pch = 19,
  col = "blue",
  xlab = "Date",
  ylab = "Page Views",
  main = "Daily Page Views"
)