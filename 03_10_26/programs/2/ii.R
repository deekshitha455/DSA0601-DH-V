department <- c("Sales", "HR", "Marketing")

department_count <- table(department)

barplot(
  department_count,
  names.arg = names(department_count),
  xlab = "Department",
  ylab = "Number of Employees",
  main = "Employee Distribution by Department",
  col = "skyblue"
)