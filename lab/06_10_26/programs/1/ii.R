# Survey responses
q1 <- c("A", "B", "C")
q2 <- c("B", "A", "A")
q3 <- c("C", "D", "B")

# Count responses for each question
q1_count <- table(factor(q1, levels = c("A", "B", "C", "D")))
q2_count <- table(factor(q2, levels = c("A", "B", "C", "D")))
q3_count <- table(factor(q3, levels = c("A", "B", "C", "D")))

# Combine counts
response_table <- rbind(
  "Question 1" = q1_count,
  "Question 2" = q2_count,
  "Question 3" = q3_count
)

# Stacked bar chart
barplot(
  response_table,
  beside = FALSE,
  col = c("skyblue", "lightgreen", "orange", "pink"),
  names.arg = c("Question 1", "Question 2", "Question 3"),
  xlab = "Questions",
  ylab = "Number of Responses",
  main = "Overall Distribution of Survey Responses",
  legend.text = c("A", "B", "C", "D")
)