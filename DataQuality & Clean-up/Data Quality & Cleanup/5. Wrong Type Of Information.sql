-- If a column is VARCHAR / NVARCHAR & we want only numbers (like AGE,PostalAddress,ID,PHONENUMBER)
-- INVALID FORMAT

SELECT
  BusinessEntityID, 
  PhoneNumber, 
  PhoneNumberTypeID
FROM 
  Person.PersonPhone
WHERE
  PhoneNumber LIKE '%[a-z A-Z]%';

--FIXING
--SELECT PhoneNumber 
--FROM Person.PersonPhone
--WHERE ISNUMERIC(PhoneNumber) = 0432-7667/(or %abc%);

-- SELECT 
--   AddressID, 
--   PostalCode
-- FROM
--   Person.Address
-- WHERE
--   TRY_CONVERT(BIGINT, PostalCode) IS NULL
-- AND
--   PostalCode IS NOT NULL
-- AND
--   PostalCode NOT LIKE ''; 