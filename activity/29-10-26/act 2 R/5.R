library(ggplot2)

set.seed(1210265)
entity <- c("Oncology", "Neurology", "Pharmacy",
            "Radiology", "Cardiology", "Paediatrics",
            "Orthopaedics", "Emergency")
n <- 8

before <- round(rnorm(n, 18, 2.0), 0)
change <- round(
  c(-1, -1, 1, 1, 1, -1, -1, 1) *
    runif(n, 0.4, 1.4) * 2.4, 0
)
change[7] <- 0.0
after <- before + change

df <- data.frame(entity, before, after)
df$change <- df$after - df$before

# 1. Paired slope chart
long <- rbind(
  data.frame(entity = entity, period = "Before",
             staff = before),
  data.frame(entity = entity, period = "After",
             staff = after)
)

long$period <- factor(long$period,
                      levels = c("Before", "After"))

ggplot(long, aes(period, staff, group = entity,
                 colour = entity)) +
  geom_line(linewidth = 0.8) +
  geom_point(size = 2.5) +
  geom_text(
    data = subset(long, period == "After"),
    aes(label = entity),
    hjust = -0.1, size = 3,
    show.legend = FALSE
  ) +
  labs(title = "Staff on Duty Before and After",
       x = "Period", y = "Staff on duty (people)") +
  theme_minimal() +
  theme(legend.position = "none")

# 2. Classify change
threshold <- 0.01 * mean(before)

df$status <- ifelse(
  abs(df$change) < threshold, "Flat",
  ifelse(df$change > 0, "Improved", "Worsened")
)

print(df)

cat("Improved =", sum(df$status == "Improved"), "\n")
cat("Worsened =", sum(df$status == "Worsened"), "\n")
cat("Flat =", sum(df$status == "Flat"), "\n")

# 3. Largest absolute change
i <- which.max(abs(df$change))

cat("Largest change department =", df$entity[i], "\n")
cat("Change =", df$change[i], "\n")
cat("Percentage change =",
    100 * df$change[i] / df$before[i], "%\n")

# 4. Paired t-test
test <- t.test(after, before, paired = TRUE)

cat("t statistic =", test$statistic, "\n")
cat("p-value =", test$p.value, "\n")
cat("Mean change =", mean(after - before), "\n")

cat("Recommendation: Investigate departments with reduced staffing and maintain changes that improve staffing coverage.\n")