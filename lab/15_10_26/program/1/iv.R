sales <- c(15000, 18000, 22000, 20000, 23000)

sales_ts <- ts(sales, start = c(2023, 1), frequency = 12)

acf(
  sales_ts,
  main = "Autocorrelation of Monthly Sales",
  lag.max = 3
)