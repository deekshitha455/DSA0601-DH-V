library(ggplot2)

set.seed(1210066)
n <- 24
sales <- round(rnorm(n, 85.0, 18.0), 1)
z <- (sales - 85.0) / 18.0
footfall <- round(900 + 200.0 *
                    (-0.72 * z - 0.58 * z^2 + 0.38 * rnorm(n)), 0)
footfall[12] <- round(footfall[12] - 3.9 * 200.0, 0)
df <- data.frame(sales, footfall)

# 1. Scatterplot with linear and LOESS fits
ggplot(df, aes(x = sales, y = footfall)) +
  geom_point() +
  geom_smooth(method = "lm", formula = y ~ x,
              se = FALSE, colour = "blue") +
  geom_smooth(method = "loess", se = FALSE,
              colour = "red") +
  labs(title = "Weekly Sales vs Footfall",
       x = "Sales (Rs lakh)",
       y = "Footfall (visitors per day)") +
  theme_minimal()

# 2. Correlation and slope
model <- lm(footfall ~ sales, data = df)
cat("Correlation r =", cor(sales, footfall), "\n")
cat("Linear slope =", coef(model)[2], "\n")

# 3. Outlier using standardized residual
res <- rstandard(model)
outlier <- which.max(abs(res))
cat("Outlier row =", outlier, "\n")
cat("Sales =", sales[outlier], "\n")
cat("Footfall =", footfall[outlier], "\n")
cat("Standardized residual =", res[outlier], "\n")

# 4. Compare linear and quadratic fits
quad <- lm(footfall ~ sales + I(sales^2), data = df)
cat("Linear R-squared =", summary(model)$r.squared, "\n")
cat("Quadratic R-squared =", summary(quad)$r.squared, "\n")

# 5. Recommendation
cat("Recommendation: Investigate unusual weeks and use the nonlinear trend when forecasting footfall from sales.\n")