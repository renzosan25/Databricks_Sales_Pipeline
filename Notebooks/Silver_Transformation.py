from pyspark.sql.functions import col, coalesce, lit, when
from pyspark.sql.types import DoubleType, DateType

df_bronze = spark.table("medallion.sales_bronze")
df_no_dups = df_bronze.dropDuplicates()

df_clean = (
    df_no_dups
    .withColumn("sales", coalesce(col("sales").cast(DoubleType()), lit(0.0)))
    .withColumn("revenue", coalesce(col("revenue").cast(DoubleType()), lit(0.0)))
    .withColumn("stock", coalesce(col("stock").cast(DoubleType()), lit(0.0)))
    .withColumn("price", coalesce(col("price").cast(DoubleType()), lit(0.0)))
    .withColumn("date", col("date").cast(DateType()))
    .fillna({"promo_type_1": "None", "promo_bin_1": "None", "promo_type_2": "None", "promo_bin_2": "None", "promo_discount_2": 0.0, "promo_discount_type_2": "None"})
    )


(
    df_clean.write
    .format("delta")
    .mode("overwrite")
    .option("overwriteSchema", "true")
    .save("s3://databricks-jw4u7ol1kfbswyqffnczbx-cloud-storage-bucket/silver")
)

# print("Silver table written successfully")
