q1 <- c("A", "B", "C")
q2 <- c("B", "A", "A")
q3 <- c("C", "D", "B")

responses <- rbind(
  "Question 1" = table(factor(q1, levels = c("A", "B", "C", "D"))),
  "Question 2" = table(factor(q2, levels = c("A", "B", "C", "D"))),
  "Question 3" = table(factor(q3, levels = c("A", "B", "C", "D")))
)

barplot(
  t(responses),
  beside = FALSE,
  names.arg = rownames(responses),
  xlab = "Questions",
  ylab = "Number of Responses",
  main = "Overall Distribution of Survey Responses",
  col = c("skyblue", "lightgreen", "orange", "pink"),
  legend.text = c("A", "B", "C", "D")
)