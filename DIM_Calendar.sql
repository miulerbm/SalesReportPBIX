-- Tabla DIM_Date Limpia --
-- Esto nos devuelve una serie de fechas
-- en las que se realizó una transacción
-- Se comentan los elementos que no interesan

SELECT
	[DateKey],
	[FullDateAlternateKey] AS Date,
	[EnglishDayNameOfWeek] AS Day,
	--[SpanishDayNameOfWeek],
	--[FrenchDayNameOfWeek],
	--[DayNumberOfMonth],
	--[DayNumberOfYear],
	--[WeekNumberOfYear],
	[EnglishMonthName] AS Month,
	
	-- Extraemos los 3 primeros caracteres del nombre del mes: 
	Left([EnglishMonthName], 3) AS MonthShort, --Util para navegacion de la fecha y graficos frontend
	
	--[SpanihMonthName]
	--[FrenchMonthName]
	[MonthNumberOfYear] AS MonthNo,
	[CalendarQuarter] AS Quarter,
	[CalendarYear] AS Year
	--[CalendarSemester]
	--[FiscalQuarter],
	--[FiscalYear],
	--[FiscalSemester]

FROM
	[dbo].[DimDate]
WHERE
	-- Recordar que solo se requieren los datos
	-- Desde el 2019
	CalendarYear >= 2019