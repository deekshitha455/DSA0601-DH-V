traffic_table <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03")),
  Page_Views = c(1500, 1600, 1400),
  Click_Through_Rate = c("2.3%", "2.7%", "2.0%")
)

print(traffic_table)