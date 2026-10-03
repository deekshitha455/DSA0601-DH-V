# Import dataset
data <- read.csv("C:/Users/deek/Documents/DHV/03_10_26/programs
                 /3/Online_Learning_Activity.csv")
# View dataset
print(data)
# Histogram of Quiz Score
hist(
  data$Quiz_Score,
  main = "Distribution of Quiz Scores",
  xlab = "Quiz Score",
  ylab = "Frequency",
  col = "skyblue"
)
# Boxplot of Quiz Score by Course
boxplot(
  Quiz_Score ~ Course,
  data = data,
  main = "Quiz Score by Course",
  xlab = "Course",
  ylab = "Quiz Score",
  col = c("lightgreen", "orange")
)