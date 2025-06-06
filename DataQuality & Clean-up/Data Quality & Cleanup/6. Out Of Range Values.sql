USE AdventureWorks2022;

--Future OrderDate or Negative Quantity type case

SELECT
  CustomerID,
  OrderDate,
  ProductID,
  OrderQty 
FROM
  Sales.SalesOrderHeader AS H
JOIN
  Sales.SalesOrderDetail AS D
ON
  H.CustomerID = D.ProductID
WHERE
  OrderDate > GETDATE();

   
--I have used join for better result 
--But we can go for individual search
--SELECT ProductID, OderQTY
--FROM Sales.SalesOrderDetail
--WHERE OrderQty > 0;

--And here adventureworks have no problem if we had he can look for typo or system bug to resolve.