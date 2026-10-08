# Import dataset
data <- read.csv("C:/Users/deek/Documents/DHV/03_10_26/programs/3/Online_Learning_Activity.csv")
# Convert Login_Date into Date format
data$Login_Date <- as.Date(data$Login_Date)
# Extract month
data$Month <- format(data$Login_Date, "%Y-%m")
# Calculate average quiz score per month
monthly_avg <- aggregate(
  Quiz_Score ~ Month,
  data = data,
  FUN = mean
)
print(monthly_avg)
# Plot monthly average quiz score
plot(
  1:nrow(monthly_avg),
  monthly_avg$Quiz_Score,
  type = "o",
  pch = 19,
  xaxt = "n",
  xlab = "Month",
  ylab = "Average Quiz Score",
  main = "Monthly Average Quiz Score",
  col = "blue"
)
axis(
  1,
  at = 1:nrow(monthly_avg),
  labels = monthly_avg$Month
)
# 2-month moving average
moving_avg <- stats::filter(
  monthly_avg$Quiz_Score,
  rep(1/2, 2),
  sides = 1
)
print(moving_avg)
# Add moving average to graph
lines(
  1:nrow(monthly_avg),
  moving_avg,
  type = "o",
  pch = 17,
  col = "red"
)
legend(
  "topright",
  legend = c("Monthly Average", "2-Month Moving Average"),
  col = c("blue", "red"),
  lty = 1,
  pch = c(19, 17)
)