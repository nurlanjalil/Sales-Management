-- Cleansed DIM_Products Table --
SELECT 
      P.[ProductKey],
      P.[ProductAlternateKey] AS ProductItemCode,
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      P.[EnglishProductName] AS [Product Name],
      PS.[ProductSubcategoryKey] AS [Sub Category], -- Joined in from Sub Category Table
      PC.[EnglishProductCategoryName] AS [Product Category], -- Joined in from Category Table
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      P.[Color] AS [Product Color],
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      P.[Size] AS [Product Size],
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      P.[ProductLine] AS [Product Line],
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      P.[ModelName] AS [Product Model Name],
      --,[LargePhoto]
      P.[EnglishDescription] AS [Product Description],
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ISNULL(P.[Status], 'Outdated') AS [Product Status]
  FROM [dbo].[DimProduct] AS P
  LEFT JOIN [dbo].[DimProductSubCategory] AS PS ON PS.ProductSubCategoryKey = P.ProductSubcategoryKey
  LEFT JOIN [dbo].[DimProductCategory] AS PC ON PC.ProductCategoryKey = PS.ProductSubCategoryKey
