library(fmsb)

# Response data
q1 <- c("A", "B", "C")
q2 <- c("B", "A", "A")
q3 <- c("C", "D", "B")

# Count each response for every question
response_data <- rbind(
  Q1 = table(factor(q1, levels = c("A", "B", "C", "D"))),
  Q2 = table(factor(q2, levels = c("A", "B", "C", "D"))),
  Q3 = table(factor(q3, levels = c("A", "B", "C", "D")))
)

# Maximum and minimum values required by fmsb
radar_data <- rbind(
  Max = c(3, 3, 3, 3),
  Min = c(0, 0, 0, 0),
  response_data
)

# Radar chart
radarchart(
  radar_data,
  axistype = 1,
  pcol = c("blue", "red", "green"),
  plwd = 2,
  plty = 1,
  title = "Overall Pattern of Survey Responses",
  vlcex = 0.8
)

legend(
  "topright",
  legend = c("Question 1", "Question 2", "Question 3"),
  col = c("blue", "red", "green"),
  lty = 1,
  lwd = 2
)