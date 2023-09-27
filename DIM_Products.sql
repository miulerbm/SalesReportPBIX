SELECT
	p.[ProductKey]
	, p.[ProductAlternateKey] AS [ProductItemCode]
	--		,[ProductSubcategoryKey]
    --		,[WeightUnitMeasureCode]
    --		,[SizeUnitMeasureCode]
	, p.[EnglishProductName] AS [ProductName]
	, ps.EnglishProductSubcategoryName AS [Sub Category] -- DEL JOIN CON TABLA SUBCATEGORY
	, pc.EnglishProductCategoryName AS [Product Category] -- DEL JOIN CON TABLA CATEGORY
	--		,[SpanishProductName]
	--		,[FrenchProductName]
	--		,[StandardCost]
	--		,[FinishedGoodsFlag]
	, p.[Color] AS [Product Color]
	--		,[SafetyStockLevel]
	--		,[ReorderPoint]
	--		,[ListPrice]
	, p.[Size] AS [Product Size]
	--		,[SizeRange]
	--		,[Weight]
	--		,[DaysToManufacture]
	, p.[ProductLine] AS [Product Line]
	--		,[DealerPrice]
	--		,[Class]
	--		,[Style]
	, p.[ModelName] AS [Product Model Name]
	--		,[LargePhoto]
	, p.[EnglishDescription] AS [Product Description]
	--		,[FrenchDescription]
	--		,[ChineseDescription]
	--		,[ArabicDescription]
	--		,[HebrewDescription]
	--		,[ThaiDescription]
	--		,[GermanDescription]
	--		,[JapaneseDescription]
	--		,[TurkishDescription]
	--		,[StartDate]
	--		,[EndDate]

	-- Creamos una Columna que toma los valores de p.Status
	-- Y evalúa si es que el valor es NULL, si es así, le asignamos
	-- El status de Outdated
	, ISNULL (p.[Status], 'Outdated') AS [Product Status]
  FROM
	[dbo].[DimProduct] as p
	LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
	LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
  ORDER BY
	p.ProductKey ASC
