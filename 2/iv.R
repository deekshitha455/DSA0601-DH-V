# ==========================================
# PROGRAM 4: CUSTOMER FEEDBACK WORD CLOUD
# ==========================================

# Load packages
library(wordcloud)
library(RColorBrewer)

# Sample customer feedback
feedback <- c(
  "good service",
  "excellent service",
  "good experience",
  "friendly staff",
  "excellent service"
)

# Convert feedback into individual words
words <- unlist(
  strsplit(
    tolower(feedback),
    " "
  )
)

# Count frequency of each word
word_count <- table(words)

# Create word cloud
wordcloud(
  names(word_count),
  freq = word_count,
  min.freq = 1,
  scale = c(3, 0.5),
  colors = brewer.pal(8, "Dark2"),
  random.order = FALSE
)