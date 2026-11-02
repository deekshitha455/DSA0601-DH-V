library(ggplot2)

set.seed(1210159)
n <- 36
grp <- rep(c("Group A", "Group C", "Group B"), each = 12)
g <- rep(c(0, 1, 1), each = 12)

footfall_k <- round(120.0 + 30.0 *
                      (rnorm(n) + 1.30 * g), 1)
spend_rs <- round(3200 + 600.0 *
                    (rnorm(n) + 1.10 * g), 0)
stay_nights <- round(2.8 + 0.7 *
                       (rnorm(n) + 0.10 * g), 1)
rating10 <- round(7.6 + 0.8 *
                    (rnorm(n) + 0.70 * g), 1)
occupancy_pct <- round(68.0 + 10.0 *
                         (rnorm(n) + 0.80 * g), 1)
complaints <- round(4.0 + 1.2 *
                      (rnorm(n) + 0.07 * g), 1)

df <- data.frame(footfall_k, spend_rs,
                 stay_nights, rating10,
                 occupancy_pct, complaints)

# 1. PCA on scaled data
pca <- prcomp(df, scale. = TRUE)
variance <- pca$sdev^2 / sum(pca$sdev^2) * 100
cumulative <- cumsum(variance)

cat("PC1 variance =", variance[1], "%\n")
cat("PC2 variance =", variance[2], "%\n")
cat("Components for at least 80% variance =",
    which(cumulative >= 80)[1], "\n")

# 2. PCA plot
scores <- data.frame(
  PC1 = pca$x[, 1],
  PC2 = pca$x[, 2],
  Group = grp
)

ggplot(scores, aes(PC1, PC2, colour = Group)) +
  geom_point(size = 3) +
  labs(title = "PCA Plot by Group",
       x = paste0("PC1 (", round(variance[1], 1), "%)"),
       y = paste0("PC2 (", round(variance[2], 1), "%)")) +
  theme_minimal()

# Largest absolute loading on PC1
loadings <- pca$rotation[, 1]
largest <- names(which.max(abs(loadings)))
cat("Largest absolute PC1 loading =", largest, "\n")
cat("Loading value =", loadings[largest], "\n")

# 3. Variance explained by group
cat("PC1 group R-squared =",
    summary(lm(pca$x[, 1] ~ grp))$r.squared, "\n")
cat("PC2 group R-squared =",
    summary(lm(pca$x[, 2] ~ grp))$r.squared, "\n")

# 4. t-SNE plot
# Install once if needed: install.packages("Rtsne")
library(Rtsne)

set.seed(1210159)
ts <- Rtsne(scale(df), dims = 2,
            perplexity = 5,
            check_duplicates = FALSE)

ts_df <- data.frame(
  TSNE1 = ts$Y[, 1],
  TSNE2 = ts$Y[, 2],
  Group = grp
)

ggplot(ts_df, aes(TSNE1, TSNE2, colour = Group)) +
  geom_point(size = 3) +
  labs(title = "t-SNE Plot by Group",
       x = "t-SNE Dimension 1",
       y = "t-SNE Dimension 2") +
  theme_minimal()

cat("Interpretation: PCA preserves directions of greatest variance; t-SNE emphasizes local neighbourhoods rather than explained variance.\n")
cat("Recommendation: Compare both plots and validate apparent clusters using the original variables.\n")