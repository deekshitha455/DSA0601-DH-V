# ==========================================
# PROGRAM 3: MONTHLY SALES TABLE
# ==========================================

# Create monthly sales table
sales_table <- data.frame(
  Product_ID = c(
    1,
    2,
    3
  ),
  
  Product_Name = c(
    "Product A",
    "Product B",
    "Product C"
  ),
  
  January_Sales = c(
    2000,
    1500,
    1200
  ),
  
  February_Sales = c(
    2200,
    1800,
    1400
  ),
  
  March_Sales = c(
    2400,
    1600,
    1100
  )
)

# Display table
print(sales_table)