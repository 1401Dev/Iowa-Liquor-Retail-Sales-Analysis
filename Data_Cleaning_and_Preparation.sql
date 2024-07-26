# Checking for missing values
SELECT
  COUNT(*) AS total_rows,
  COUNT(invoice_and_item_number) AS invoice_number_count,
  COUNT(date) AS date_count,
  COUNT(store_number) AS store_number_count,
  COUNT(store_name) AS store_name_count,
  COUNT(address) AS address_count,
  COUNT(city) AS city_count,
  COUNT(zip_code) AS zip_code_count,
  COUNT(store_location) AS store_location_count,
  COUNT(county_number) AS county_number_count,
  COUNT(county) AS county_count,
  COUNT(category) AS category_count,
  COUNT(category_name) AS category_name_count,
  COUNT(vendor_number) AS vendor_number_count,
  COUNT(vendor_name) AS vendor_name_count,
  COUNT(item_number) AS item_number_count,
  COUNT(item_description) AS item_description_count,
  COUNT(pack) AS pack_count,
  COUNT(bottle_volume_ml) AS bottle_volume_ml_count,
  COUNT(state_bottle_cost) AS state_bottle_cost_count,
  COUNT(state_bottle_retail) AS state_bottle_retail_count,
  COUNT(bottles_sold) AS bottles_sold_count,
  COUNT(sale_dollars) AS sale_dollars_count,
  COUNT(volume_sold_liters) AS volume_sold_liters_count,
  COUNT(volume_sold_gallons) AS volume_sold_gallons_count
FROM
  `bigquery-public-data.iowa_liquor_sales.sales`;


