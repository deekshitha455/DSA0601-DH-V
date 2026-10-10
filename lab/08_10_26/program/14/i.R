# Question 1 responses
q1 <- c("A", "B", "C")

# Count responses
q1_count <- table(
  factor(q1, levels = c("A", "B", "C", "D"))
)

# Create stacked bar chart
barplot(
  q1_count,
  beside = FALSE,
  names.arg = "Question 1",
  xlab = "Question",
  ylab = "Number of Responses",
  main = "Distribution of Answers for Question 1",
  col = c("skyblue", "lightgreen", "orange", "pink"),
  legend.text = c("A", "B", "C", "D")
)