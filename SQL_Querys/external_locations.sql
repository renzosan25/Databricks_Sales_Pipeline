CREATE EXTERNAL LOCATION silver_location
URL 's3://databricks-jw4u7ol1kfbswyqffnczbx-cloud-storage-bucket/silver/'
WITH (STORAGE CREDENTIAL s3_use_case);

CREATE EXTERNAL LOCATION gold_location
URL 's3://databricks-jw4u7ol1kfbswyqffnczbx-cloud-storage-bucket/gold/'
WITH (STORAGE CREDENTIAL s3_use_case);

SHOW EXTERNAL LOCATIONS;