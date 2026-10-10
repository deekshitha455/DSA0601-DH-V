city <- c("City A", "City B", "City C")
population <- c(500000, 700000, 600000)
temperature <- c(75, 68, 80)

plot(
  temperature,
  population,
  pch = 19,
  col = "red",
  xlab = "Average Temperature",
  ylab = "Population",
  main = "Average Temperature vs Population"
)

text(
  temperature,
  population,
  labels = city,
  pos = 3
)