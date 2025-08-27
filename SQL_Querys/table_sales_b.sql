CREATE SCHEMA IF NOT EXISTS medallion;

CREATE TABLE IF NOT EXISTS medallion.sales_bronze
USING CSV
OPTIONS('header' = 'true' , 'inferSchema' = 'true')
LOCATION 's3://databricks-jw4u7ol1kfbswyqffnczbx-cloud-storage-bucket/bronze/sales.csv';

DESCRIBE(medallion.sales_bronze);

CREATE TABLE IF NOT EXISTS medallion.sales_silver
USING DELTA
LOCATION 's3://databricks-jw4u7ol1kfbswyqffnczbx-cloud-storage-bucket/silver';
