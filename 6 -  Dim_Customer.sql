-- Cleansed Dim_Customer_table  --
SELECT 
  c.[CustomerKey] AS CustomerKey, 
  -- ,[GeographyKey]
  -- ,[CustomerAlternateKey]
  -- ,[Title]
  c.[FirstName] As [First Name], 
  -- ,[MiddleName]
  c.[LastName] As [Last Name], 
  c.[FirstName] + ' ' + c.LastName As [Full Name], 
  -- Combined First and Last Name 
  -- ,[NameStyle]
  --  ,[BirthDate]
  -- ,[MaritalStatus]
  -- ,[Suffix]
  CASE c.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  c.gender as Test, 
  --  ,[EmailAddress]
  --  ,[YearlyIncome]
  --  ,[TotalChildren]
  --  ,[NumberChildrenAtHome]
  --  ,[EnglishEducation]
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
  c.[DateFirstPurchase] As DateFirstPurchase, 
  -- ,[CommuteDistance]
  g.City As [Customer City] -- Joined in Customer City From Geography Table 
FROM 
  DimCustomer As c 
  left join dbo.DimGeography As g ON g.GeographyKey = c.GeographyKey 
order by 
  CustomerKey Asc -- Ordered List by Customer key
