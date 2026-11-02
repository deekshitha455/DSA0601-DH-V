q1 <- c("A", "B", "C")

q1_count <- table(q1)

barplot(
  q1_count,
  beside = TRUE,
  xlab = "Response",
  ylab = "Number of Responses",
  main = "Distribution of Answers for Question 1",
  col = "skyblue"
)