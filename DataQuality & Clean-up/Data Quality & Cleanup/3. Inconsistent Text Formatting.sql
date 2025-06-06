USE AdventureWorks2022;

SELECT DISTINCT productID, Name, Color
FROM Production.Product
WHERE Color IS NOT NULL

-- Imagine if we see lowercase instead of upper
-- black to BLACK
-- UPDATE Production.Product
-- SET Color ='Black'
-- Where Color = 'black'
-- we Can also use UPPER(),LOWER(),TRIM() as per the requirement