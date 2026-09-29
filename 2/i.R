# ==========================================
# PROGRAM 1: HISTOGRAM OF CUSTOMER AGES
# ==========================================

# Customer age data
age <- c(25, 30, 35, 28, 40)

# Create histogram
hist(
  age,
  main = "Distribution of Customer Ages",
  xlab = "Age",
  ylab = "Frequency",
  col = "skyblue"
)