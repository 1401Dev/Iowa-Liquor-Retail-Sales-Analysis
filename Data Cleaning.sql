USE Iowa_Liquor_Sales;

-- Checking for missing values
SELECT
  COUNT(*) AS total_rows,
  COUNT(date) AS date_count,
  COUNT(store_number) AS store_number_count,
  COUNT(sale_dollars) AS sale_dollars_count
FROM dbo.Iowa_liquor_sales_data;

-- Convert datatypes
SELECT
	CAST(date as DATE) AS date,
	CAST(store_number AS FLOAT) AS store_number,
	CAST(sale_dollars AS INT) AS sale_dollars
FROM dbo.Iowa_liquor_sales_data;

-- Handled Missing values
-- Removing rows with Missing Essential Values
SELECT *
INTO dbo_cleaned_sales_obj1
FROM dbo.Iowa_liquor_sales_data
WHERE date is NOT NULL
AND store_number is NOT NULL
AND sale_dollars is NOT NULL;

-- Removing Duplicates
SELECT DISTINCT *
INTO dbo.cleaned_sales_no_duplicates_obj1
FROM dbo_cleaned_sales_obj1;

SELECT *
INTO dbo.cleaned_sales_final
FROM dbo.cleaned_sales_no_duplicates_obj1;
