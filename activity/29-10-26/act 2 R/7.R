library(ggplot2)

set.seed(1210371)
n <- 3000
core <- runif(n) < 0.85

loan_lakh <- round(
  ifelse(core, rnorm(n, 38.0, 5.4),
         runif(n, 11.0, 65.0)), 1
)

income_k <- round(
  ifelse(
    core,
    52.0 + 0.68 * (loan_lakh - 38.0) / 5.4 +
      sqrt(1 - 0.46^2) * 7.2 * rnorm(n),
    runif(n, 16.0, 88.0)
  ), 1
)

df <- data.frame(loan_lakh, income_k)

# 1. Hexbin plot
ggplot(df, aes(x = loan_lakh, y = income_k)) +
  geom_hex(bins = 25) +
  scale_fill_viridis_c(name = "Point count") +
  labs(title = "Loan Amount vs Applicant Income: Hexbin",
       x = "Loan amount (Rs lakh)",
       y = "Applicant income (Rs thousand per month)") +
  theme_minimal()

# Plain scatterplot
ggplot(df, aes(x = loan_lakh, y = income_k)) +
  geom_point(alpha = 0.35, size = 1) +
  labs(title = "Loan Amount vs Applicant Income: Scatterplot",
       x = "Loan amount (Rs lakh)",
       y = "Applicant income (Rs thousand per month)") +
  theme_minimal()

# 2. Busiest cell in a 10 x 10 grid
x_cut <- cut(loan_lakh, breaks = 10,
             include.lowest = TRUE)
y_cut <- cut(income_k, breaks = 10,
             include.lowest = TRUE)

tab <- table(x_cut, y_cut)
ij <- which(tab == max(tab), arr.ind = TRUE)

cat("Busiest cell loan range =",
    rownames(tab)[ij[1, 1]], "\n")
cat("Busiest cell income range =",
    colnames(tab)[ij[1, 2]], "\n")
cat("Busiest cell count =", max(tab), "\n")
cat("Percentage of all points =",
    100 * max(tab) / nrow(df), "%\n")

# 3. Distinct (x, y) pairs
cat("Distinct pairs =", nrow(unique(df)), "\n")
cat("Total records =", nrow(df), "\n")

# 4. Recommendation
cat("Recommendation: Use the hexbin plot to identify dense applicant groups and investigate sparse high-loan regions for potential lending risk.\n")