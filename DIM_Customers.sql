-- Tabla DIM_Customer limpia
-- Tiene los datos de los Customers de DimCustomer
-- Y adicionalmente, información de su ciudad de DimGeography

SELECT
	c.customerkey AS CustomerKey,
	--			, [GeographyKey]
	--			, [CustomerAlternateKey]
	--			, [Title]
	c.FirstName AS [First Name],
	--			, [MiddleName]
	c.LastName AS [Las Name],

	-- Combinamos el nombre y el Apellido:
	c.FirstName + ' ' + c.LastName AS [Full Name],
	--			, [NameStyle]
	--			, [BirthDate]
	--			, [MaritalStatus]
	--			, [Suffix]

	-- Se genera la Columna 'Gender', con los siguientes criterios:
	-- Si la row c.Gender contiene M -> Male (Masculino)
	-- Si la row c.Gender contiene F -> Female (Femenino)
	CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,

	--			, [EmailAddress]
	--			, [YearlyIncome]
	--			, [TotalChildren]
	--			, [NumberChildrenAtHome]
	--			, [EnglishEducation]
	--			, [SpanishEduaction]
	--			, [FrenchEducation]
	--			, [EnglishOccupation]
	--			, [SpanishOccupation]
	--			, [FrenchOccupation]
	--			, [HouseOwnerFlag]
	--			, [NumberCarsOwned]
	--			, [AddressLine1]
	--			, [AddressLine2]
	--			, [Phone]
	c.DateFirstPurchase AS DateFirstPurchase,
	--			,[CommuteDistance]

	-- Del JOIN con la Tabla DimGeography, se extrae la ciudad:
	g.City AS [Customer City]
FROM
	dbo.DimCustomer AS c
	LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey
ORDER BY
	CustomerKey ASC