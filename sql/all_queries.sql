-- =====================================================
-- PROJECT: Profit Leak Analysis
-- =====================================================

-- STEP 3: Inspect data

SELECT *
FROM superstore
LIMIT 10;


-- STEP 4: General KPIs

SELECT
ROUND(SUM(Sales),2) AS TotalSales,
ROUND(SUM(Profit),2) AS TotalProfit,
COUNT(*) AS Orders
FROM superstore;


-- STEP 5: Category Analysis

SELECT
Category,
ROUND(SUM(Sales),2) AS Sales,
ROUND(SUM(Profit),2) AS Profit
FROM superstore
GROUP BY Category
ORDER BY Profit DESC;

-- STEP 6: Subcategorias Problematicas

SELECT
"Sub-Category",
ROUND(SUM(Sales),2) AS Sales,
ROUND(SUM(Profit),2) AS Profit
FROM superstore
GROUP BY "Sub-Category"
ORDER BY Profit ASC;

-- STEP 7: Analizar Descuentos

SELECT 
Discount,
COUNT(*) AS Orders,
ROUND(AVG(Profit),2) AS Profit
FROM superstore
GROUP BY Discount
ORDER BY Discount;

-- STEP 8: Clientes No Rentables

SELECT 
"Customer Name" AS Client,
ROUND(SUM(Sales),2) AS Sales,
ROUND(SUM(Profit),2) AS Profit
FROM superstore
GROUP BY Client
ORDER BY Profit ASC;

-- STEP 9: Regiones

SELECT 
Region,
ROUND(SUM(Sales),2) AS Sales,
ROUND(SUM(Profit),2) AS Profit
FROM superstore
GROUP BY Region
ORDER BY Profit ASC;

-- STEP 10: Producto más Rentable por Ciudad

SELECT 
City,
"Product Name" AS ProductName,
ROUND(SUM(Sales),2) AS Sales,
ROUND(SUM(Profit),2) AS Profit
FROM superstore
GROUP BY ProductName
ORDER BY Profit DESC;