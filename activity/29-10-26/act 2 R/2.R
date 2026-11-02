library(ggplot2)

set.seed(1210125)
n <- 30
f1 <- rnorm(n)
f2 <- rnorm(n)
tower_density <- round(rnorm(n, 14.0, 4.0), 1)
drop_rate <- round(2.6 + 0.7 *
                     (-0.90 * f1 + 0.43 * rnorm(n)), 1)
traffic_tb <- round(320 + 70.0 *
                      (0.86 * f2 + 0.51 * rnorm(n)), 0)
users_lakh <- round(24.0 + 6.0 *
                      (0.77 * f1 + 0.64 * rnorm(n)), 1)
churn_pct <- round(1.8 + 0.5 *
                     (0.90 * f1 + 0.44 * rnorm(n)), 1)
arpu <- round(185 + 25.0 *
                (0.77 * f2 + 0.64 * rnorm(n)), 0)

df <- data.frame(tower_density, drop_rate,
                 traffic_tb, users_lakh,
                 churn_pct, arpu)

# 1. Correlation matrix
C <- cor(df)
print(round(C, 2))

# 2. Correlogram
cm <- as.data.frame(as.table(round(C, 2)))
names(cm) <- c("Var1", "Var2", "Correlation")

ggplot(cm, aes(Var1, Var2, fill = Correlation)) +
  geom_tile(colour = "white") +
  geom_text(aes(label = sprintf("%.2f", Correlation))) +
  scale_fill_gradient2(
    low = "blue", mid = "white", high = "red",
    midpoint = 0, limits = c(-1, 1)
  ) +
  labs(title = "Telecom Correlation Heatmap",
       x = NULL, y = NULL, fill = "Correlation") +
  theme_minimal() +
  theme(axis.text.x =
          element_text(angle = 45, hjust = 1))

# 3. Two strongest pairs by absolute correlation
pairs <- which(upper.tri(C), arr.ind = TRUE)
pair_df <- data.frame(
  Variable1 = rownames(C)[pairs[, 1]],
  Variable2 = colnames(C)[pairs[, 2]],
  r = C[pairs]
)
pair_df <- pair_df[order(abs(pair_df$r),
                         decreasing = TRUE), ]
cat("Two strongest pairs:\n")
print(head(pair_df, 2), row.names = FALSE)

# 4. Weakest pair
cat("Weakest pair:\n")
print(tail(pair_df, 1), row.names = FALSE)

# 5. Recommendation
cat("Recommendation: Monitor strongly related telecom measures together and investigate unexpected negative relationships.\n")