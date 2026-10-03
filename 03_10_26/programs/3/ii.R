# Import dataset
data <- read.csv("C:/Users/deek/Documents/DHV/03_10_26/programs
                 /3/Online_Learning_Activity.csv")
# Create bubble scatter plot
symbols(
  data$Study_Time,
  data$Quiz_Score,
  circles = data$Videos_Watched / max(data$Videos_Watched) * 0.5,
  inches = FALSE,
  bg = rgb(0, 0, 1, alpha = 0.4),
  fg = "blue",
  xlab = "Study Time (Hours)",
  ylab = "Quiz Score",
  main = "Study Time vs Quiz Score"
)
# Add student labels
text(
  data$Study_Time,
  data$Quiz_Score,
  labels = data$Student_ID,
  pos = 3
)
