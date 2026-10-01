# ==========================================
# PROGRAM 2: BAR CHART
# ==========================================

# Dataset
department <- c(
  "Sales",
  "HR",
  "Marketing",
  "Sales",
  "HR"
)

# Count employees in each department
department_count <- table(department)

# Create bar chart
barplot(
  department_count,
  names.arg = names(department_count),
  xlab = "Department",
  ylab = "Number of Employees",
  main = "Employee Distribution by Department",
  col = "skyblue"
)