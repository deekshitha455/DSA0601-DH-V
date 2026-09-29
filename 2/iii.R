# ==========================================
# PROGRAM 3: STACKED BAR CHART
# ==========================================

# Dataset
age <- c(25, 30, 35, 28, 40)

satisfaction <- c(4, 5, 3, 4, 5)

# Create age groups
age_group <- cut(
  age,
  breaks = c(20, 29, 39, 49),
  labels = c("20-29", "30-39", "40-49")
)

# Create frequency table
data <- table(age_group, satisfaction)

# Create stacked bar chart
barplot(
  data,
  beside = FALSE,
  main = "Satisfaction Scores by Age Group",
  xlab = "Age Group",
  ylab = "Number of Customers",
  col = c("skyblue", "lightgreen", "orange"),
  legend.text = TRUE
)