data <- read.csv("C:/Users/deek/Documents/DHV/lab/13_10_26/program/3/Energy_Consumption_Data.csv")

average_renewable <- aggregate(
  Renewable_Usage ~ Sector,
  data = data,
  FUN = mean
)

print(average_renewable)

barplot(
  average_renewable$Renewable_Usage,
  names.arg = average_renewable$Sector,
  xlab = "Sector",
  ylab = "Average Renewable Usage (%)",
  main = "Average Renewable Energy Usage by Sector",
  col = c("skyblue", "lightgreen", "orange")
)