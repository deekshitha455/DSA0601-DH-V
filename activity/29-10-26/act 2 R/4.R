library(igraph)

set.seed(1210229)
nodes <- c("Bengaluru", "Delhi", "Ahmedabad", "Chennai",
           "Hyderabad", "Kolkata", "Pune", "Mumbai")

pairs <- t(combn(nodes, 2))
u <- runif(nrow(pairs))

keep <- u < 0.31 |
  ((pairs[, 1] == "Chennai" |
      pairs[, 2] == "Chennai") & u < 0.90)

edges <- data.frame(
  from = pairs[keep, 1],
  to = pairs[keep, 2],
  weight = round(runif(sum(keep), 1, 20))
)

# 1. Create and draw network
g <- graph_from_data_frame(
  edges, directed = FALSE,
  vertices = data.frame(name = nodes)
)

plot(g,
     vertex.label = V(g)$name,
     vertex.size = 10 + 4 * degree(g),
     edge.width = 0.5 + E(g)$weight / 5,
     vertex.color = "#56B4E9",
     edge.color = "grey60",
     main = "Parcel Delivery Network")

# 2. Degree and betweenness
deg <- degree(g)
btw <- betweenness(g, directed = FALSE,
                   normalized = TRUE)

centrality <- data.frame(
  Node = names(deg),
  Degree = as.numeric(deg),
  Betweenness = as.numeric(btw)
)

print(centrality)

# Identify the node with greatest betweenness
central_node <- names(which.max(btw))
cat("Most central node =", central_node, "\n")
cat("Degree =", deg[central_node], "\n")
cat("Betweenness =", btw[central_node], "\n")

# 3. Edges, density and components
cat("Number of edges =", ecount(g), "\n")
cat("Network density =", edge_density(g), "\n")
cat("Connected components =", components(g)$no, "\n")

# 4. Remove the most central node
g_removed <- delete_vertices(g, central_node)

cat("Components after removal =",
    components(g_removed)$no, "\n")

cat("Recommendation: Create alternative delivery routes around the most central hub to reduce disruption risk.\n")