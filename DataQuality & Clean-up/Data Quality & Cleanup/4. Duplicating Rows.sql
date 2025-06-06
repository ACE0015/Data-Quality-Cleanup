USE AdventureWorks2022;

SELECT 
  P.FirstName, 
  P.LastName,
  E.BirthDate,
  COUNT(*) AS NumberOfDuplicates
From
  HumanResources.Employee AS E
JOIN
  Person.Person AS P
ON
  E.BusinessEntityID = P.BusinessEntityID
GROUP BY
  P.FirstName, 
  P.LastName,
  E.BirthDate
HAVING 
  COUNT(*) > 1

-- As for now we don't have any duplicates for the given condition but IF kept only birthdate we have few duplicates.
-- To delete duplicates
-- 1. Identify Duplicates 2. Unique ID assigned for row 3. Decide a rule to Keep & Delete
-- Taking above query
-- WITH DupilatesToDelete (query to find duplicacy) AS rn
-- DELETE E
-- FROM HumanResources.Employee AS E
-- INNERJOIN DupilatesToDelete AS DTD
-- ON E.BusinessEntityID = DTD.BusinessEntityID
-- WHERE DTD.rn > 1;
-- we can use BEGIN TRANSACTION if need to rollback
-- To verify: SELECT @@ROWCOUNT AS RowsDeleted; if somethings wrong we can now rollback.