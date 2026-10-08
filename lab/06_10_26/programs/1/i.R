# Question 1 responses
q1 <- c("A", "B", "C")

# Count each response
q1_count <- table(q1)

# Grouped bar chart
barplot(
  q1_count,
  beside = TRUE,
  names.arg = names(q1_count),
  xlab = "Question 1 Answer",
  ylab = "Number of Responses",
  main = "Distribution of Answers for Question 1",
  col = "skyblue"
)