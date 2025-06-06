USE AdventureWorks2022;

SELECT 
  FirstName,
  MiddleName,
  LastName
FROM
  Person.Person
WHERE
  MiddleName IS NOT NULL;

 -- IF we wanna show N/A instead of null
 -- UPDATE Person.Person
 -- SET MiddleName = 'N/A'
 -- WHERE MiddleName IS NULL