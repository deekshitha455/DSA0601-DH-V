# ==========================================
# PROGRAM 2: PIE CHART OF SATISFACTION SCORES
# ==========================================

# Satisfaction scores
satisfaction <- c(4, 5, 3, 4, 5)

# Calculate frequency of each score
score_count <- table(satisfaction)

# Create pie chart
pie(
  score_count,
  labels = paste(names(score_count), "Score"),
  main = "Customer Satisfaction Scores"
)