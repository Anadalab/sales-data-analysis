-- Ventas totales por producto
SELECT ProductID, SUM(Revenue) AS TotalRevenue
FROM Sales
GROUP BY ProductID
ORDER BY TotalRevenue DESC;

-- Ventas por mes
SELECT DATE_TRUNC('month', SaleDate) AS Month,
SUM(Revenue) AS Revenue
FROM Sales
GROUP BY Month;

-- ingresos totales por día
SELECT day, SUM(total_bill) AS total_sales
FROM sales
GROUP BY day
ORDER BY total_sales DESC;


-- ticket medio por tipo de cliente
SELECT smoker, AVG(total_bill) AS avg_ticket
FROM sales
GROUP BY smoker;


-- número medio de personas por mesa
SELECT AVG(size) AS avg_table_size
FROM sales;
