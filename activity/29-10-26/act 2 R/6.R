library(ggplot2)

set.seed(1210318)
entity <- c("Drama", "Sci-Fi", "Comedy",
            "Documentary", "Thriller",
            "Animation", "Sports")
n <- 7

z <- rnorm(n)
spend_lakh <- round(45.0 + 12.0 * z, 1)
watch_hrs <- round(
  11.0 + 3.0 * (0.90 * z + 0.40 * rnorm(n)), 1
)
subs_lakh <- round(18.0 + 4.0 * rnorm(n), 1)

# Supplied unusual Comedy record
subs_lakh[3] <- round(18.0 * 2.4, 1)
spend_lakh[3] <- round(45.0)
watch_hrs[3] <- round(11.0)

df <- data.frame(entity, spend_lakh,
                 watch_hrs, subs_lakh)

# 1. Bubble chart
ggplot(df, aes(x = spend_lakh, y = watch_hrs,
               size = subs_lakh, label = entity)) +
  geom_point(alpha = 0.75, colour = "#0072B2") +
  geom_text(nudge_y = 0.25, size = 3,
            show.legend = FALSE) +
  scale_size_area(max_size = 18,
                  name = "Subscribers (lakh)") +
  labs(title = "Marketing Spend vs Watch Time",
       x = "Marketing spend (Rs lakh)",
       y = "Watch time (hours per user per month)") +
  theme_minimal()

# 2. Correlation between x and y
cat("Correlation =", cor(spend_lakh, watch_hrs), "\n")

# 3. Outlier on bubble size
z_size <- (subs_lakh - mean(subs_lakh)) / sd(subs_lakh)
i <- which.max(subs_lakh)

cat("Size outlier =", entity[i], "\n")
cat("Subscriber size =", subs_lakh[i], "lakh\n")
cat("Size z-score =", z_size[i], "\n")

# 4. Size compared with median
cat("Median subscriber size =", median(subs_lakh), "\n")
cat("Largest / median size =",
    max(subs_lakh) / median(subs_lakh), "times\n")

cat("Recommendation: Investigate Comedy's unusually high subscriber count before using it to allocate marketing budgets.\n")