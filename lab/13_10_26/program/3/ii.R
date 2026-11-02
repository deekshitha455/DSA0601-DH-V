data <- read.csv("C:/Users/deek/Documents/DHV/lab/13_10_26/program/3/Energy_Consumption_Data.csv")

symbols(
  x = data$Temperature,
  y = data$Units_Consumed,
  circles = data$Peak_Hours / max(data$Peak_Hours) * 0.5,
  inches = FALSE,
  bg = rgb(0, 0, 1, alpha = 0.35),
  fg = "blue",
  xlab = "Temperature (°C)",
  ylab = "Units Consumed (kWh)",
  main = "Temperature vs Energy Consumption"
)

text(
  data$Temperature,
  data$Units_Consumed,
  labels = data$Region,
  pos = 3,
  cex = 0.8
)