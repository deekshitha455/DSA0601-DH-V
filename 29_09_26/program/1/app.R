# Load Shiny
library(shiny)

# -----------------------------
# Monthly Sales Data
# -----------------------------

month <- c(
  "January",
  "February",
  "March",
  "April",
  "May"
)

sales <- c(
  15000,
  18000,
  22000,
  20000,
  23000
)

# -----------------------------
# Product Sales Data
# -----------------------------

product <- c(
  "Laptop",
  "Mobile",
  "Tablet",
  "Headphones",
  "Smartwatch"
)

product_sales <- c(
  45000,
  38000,
  25000,
  18000,
  15000
)

# -----------------------------
# User Interface
# -----------------------------

ui <- fluidPage(
  
  titlePanel("Monthly Sales Dashboard"),
  
  sidebarLayout(
    
    sidebarPanel(
      
      selectInput(
        "chart",
        "Select Chart:",
        choices = c(
          "Line Chart",
          "Bar Chart"
        )
      )
      
    ),
    
    mainPanel(
      
      plotOutput("salesPlot")
      
    )
  )
)

# -----------------------------
# Server
# -----------------------------

server <- function(input, output) {
  
  output$salesPlot <- renderPlot({
    
    if (input$chart == "Line Chart") {
      
      # Line Chart
      plot(
        sales,
        type = "o",
        xaxt = "n",
        xlab = "Month",
        ylab = "Sales ($)",
        main = "Monthly Sales",
        col = "blue"
      )
      
      axis(
        1,
        at = 1:5,
        labels = month
      )
      
    } else {
      
      # Bar Chart
      barplot(
        product_sales,
        names.arg = product,
        xlab = "Product",
        ylab = "Annual Sales ($)",
        main = "Top-Selling Products",
        col = "skyblue"
      )
      
    }
    
  })
}

# -----------------------------
# Run Dashboard
# -----------------------------

shinyApp(
  ui = ui,
  server = server
)