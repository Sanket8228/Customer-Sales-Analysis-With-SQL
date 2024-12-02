-- Cleansed DIM_Products Table --
SELECT 
  P.[ProductKey], 
  P.[ProductAlternateKey] As ProductItemcode, 
  --  ,[ProductSubcategoryKey]
  --  ,[WeightUnitMeasureCode]
  --  ,[SizeUnitMeasureCode]
  p.[EnglishProductName] As [Product name], 
  ps.EnglishProductSubcategoryName As [Sub Category], 
  -- Joined in from sub Category table 
  pc.EnglishProductCategoryName As [Product Category], 
  -- Joined in from Cateogry table
  -- ,[SpanishProductName]
  -- ,[FrenchProductName]
  -- ,[StandardCost]
  -- ,[FinishedGoodsFlag]
  p.[Color] As [Product colour], 
  -- ,[SafetyStockLevel]
  -- ,[ReorderPoint]
  -- ,[ListPrice]
  p.[Size] As [Product Size], 
  -- ,[SizeRange]
  -- ,[Weight]
  -- ,[DaysToManufacture]
  p.[ProductLine] As [Product line], 
  -- ,[DealerPrice]
  -- ,[Class]
  -- ,[Style]
  p.[ModelName] As [Product Model Name], 
  -- ,[LargePhoto]
  p.[EnglishDescription] As [Product Description], 
  -- ,[FrenchDescription]
  -- ,[ChineseDescription]
  -- ,[ArabicDescription]
  -- ,[HebrewDescription]
  -- ,[ThaiDescription]
  -- ,[GermanDescription]
  -- ,[JapaneseDescription]
  -- ,[TurkishDescription]
  -- ,[StartDate]
  -- ,[EndDate]
 --  p.Status As Status,
  ISNULL (P.Status, 'Outdated') As [Product Status] 
FROM 
  [DimProduct] As p 
  LEFT JOIN DimProductSubcategory As ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN DimProductCategory As pc ON ps.ProductCategoryKey = pc.ProductcategoryKey 
ORDER BY 
  P.ProductKey ASC
