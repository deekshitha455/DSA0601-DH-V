# ==========================================
# PROGRAM 3: STACKED AREA CHART
# ==========================================

# Date
date <- as.Date(c(
  "2023-01-01",
  "2023-01-02",
  "2023-01-03",
  "2023-01-04",
  "2023-01-05"
))

# Sample user interaction data
likes <- c(
  120,
  150,
  100,
  160,
  180
)

shares <- c(
  40,
  50,
  35,
  55,
  65
)

comments <- c(
  20,
  25,
  18,
  30,
  35
)

# Calculate cumulative values
total_likes <- likes

total_shares <- likes + shares

total_comments <- likes + shares + comments

# Create empty plot
plot(
  date,
  total_comments,
  type = "n",
  ylim = c(0, max(total_comments)),
  xlab = "Date",
  ylab = "Number of Interactions",
  main = "Website User Interactions"
)

# Likes area
polygon(
  c(date, rev(date)),
  c(
    total_likes,
    rep(0, length(date))
  ),
  col = "lightblue",
  border = "blue"
)

# Shares area
polygon(
  c(date, rev(date)),
  c(
    total_shares,
    rev(total_likes)
  ),
  col = "lightgreen",
  border = "green"
)

# Comments area
polygon(
  c(date, rev(date)),
  c(
    total_comments,
    rev(total_shares)
  ),
  col = "orange",
  border = "red"
)

# Add legend
legend(
  "topleft",
  legend = c(
    "Likes",
    "Shares",
    "Comments"
  ),
  fill = c(
    "lightblue",
    "lightgreen",
    "orange"
  )
)