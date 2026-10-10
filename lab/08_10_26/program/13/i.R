city <- c("City A", "City B", "City C")
population <- c(500000, 700000, 600000)

plot(
  1:3,
  population,
  type = "p",
  pch = 19,
  xlab = "City",
  ylab = "Population",
  main = "Geographic Data - City Distribution",
  xaxt = "n",
  col = "blue"
)

axis(
  1,
  at = 1:3,
  labels = city
)

text(
  1:3,
  population,
  labels = city,
  pos = 3
)