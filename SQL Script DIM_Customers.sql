-- Cleansed DIM_Customers Table --
SELECT 
  C.[CustomerKey] AS CustomerKey, 
  --[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  C.[FirstName] AS [First Name], 
  --,[MiddleName]
  C.[LastName] AS [Last Name], 
  C.LastName + ' ' + C.LastName AS [Full Name], 
  -- Combined First and Last Name
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  CASE c.[Gender] when 'M' then 'Male' when 'F' then 'Female' END AS Gender, 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  C.[DateFirstPurchase] AS DateFirstPurchase, 
  --,[CommuteDistance]
  G.City AS [Customer City] -- Joined in Customer City from Geography Table
FROM 
  [dbo].[DimCustomer] AS C 
  LEFT JOIN [dbo].[DimGeography] AS G ON G.GeographyKey = C.GeographyKey 
ORDER BY 
  CustomerKey ASC
