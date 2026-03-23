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
