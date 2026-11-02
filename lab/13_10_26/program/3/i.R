data <- read.csv("C:/Users/deek/Documents/DHV/lab/13_10_26/program/3/Energy_Consumption_Data.csv")

# Histogram
hist(
  data$Units_Consumed,
  probability = TRUE,
  main = "Energy Consumption Distribution",
  xlab = "Units Consumed (kWh)",
  ylab = "Density",
  col = "skyblue",
  border = "white"
)

# Density curve
density_curve <- density(data$Units_Consumed)
lines(density_curve, col = "red", lwd = 2)