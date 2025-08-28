CREATE OR REPLACE TABLE medallion.gold_sales_day
USING DELTA
LOCATION 's3://databricks-jw4u7ol1kfbswyqffnczbx-cloud-storage-bucket/gold/gold_sales_day'
AS
SELECT
    date,
    SUM(sales) As total_sales,
    SUM(revenue) AS total_revenue
FROM medallion.sales_silver
GROUP BY date;

CREATE OR REPLACE TABLE medallion.gold_sales_store
USING DELTA
LOCATION 's3://databricks-jw4u7ol1kfbswyqffnczbx-cloud-storage-bucket/gold/gold_sales_store'
AS
SELECT
    store_id,
    SUM(sales) AS total_sales,
    SUM(revenue) AS total_revenue
FROM medallion.sales_silver
GROUP BY store_id;

CREATE OR REPLACE TABLE medallion.gold_sales_product
USING DELTA
LOCATION 's3://databricks-jw4u7ol1kfbswyqffnczbx-cloud-storage-bucket/gold/gold_sales_product'
AS
SELECT
    product_id,
    SUM(sales) as Total_sales,
    SUM(revenue) AS total_revenue
FROM medallion.sales_silver
GROUP BY product_id;
