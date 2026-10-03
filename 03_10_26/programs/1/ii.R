gender <- c("Female", "Male", "Female")

gender_count <- table(gender)

pie(
  gender_count,
  labels = paste(names(gender_count), gender_count),
  main = "Distribution of Customers by Gender"
)