# Databricks Sales Pipeline

## Table of Contents
* [Overview](#overview)
* [Dataset Description](#dataset-description)
* [Technologies](#technologies)
* [Pipeline](#pipeline)
* [Screenshots](#screenshots)
## Overview
Este proyecto implementa un pipeline ELT de extremo a extremo en Databricks utilizando la Arquitectura Medallion (Bronze–Silver–Gold) con un dataset de ventas minoristas (~19 millones de registros).

El pipeline simula una plataforma moderna de datos, integrando procesos de ingestión, limpieza, transformación y visualización del desempeño de ventas en Power BI.

Objetivos:  
- Ingestar datos raw desde CSV (Bronze).  
- Estandarizar y limpiar en tablas intermedias (Silver).  
- Generar métricas de negocio (Gold).  
- Visualizar ventas, stock y promociones en dashboards.  

---

## Dataset_Description

| Column                | Type    | Description                    |
|-----------------------|---------|--------------------------------|
| product_id            | string  | Identificador de producto      |
| store_id              | string  | Identificador de tienda        |
| date                  | date    | Fecha de transacción           |
| sales                 | double  | Unidades vendidas              |
| revenue               | double  | Ingresos generados             |
| stock                 | double  | Inventario disponible          |
| price                 | double  | Precio del producto            |
| promo_type_1          | string  | Tipo de primera promoción      |
| promo_bin_1           | string  | Bandera de primera promoción   |
| promo_type_2          | string  | Tipo de segunda promoción      |
| promo_bin_2           | string  | Bandera de segunda promoción   |
| promo_discount_2      | double  | Descuento aplicado (%)         |
| promo_discount_type_2 | string  | Tipo de descuento aplicado     |

---

## Technologies
- **Databricks** (PySpark, SQL, Delta Lake)  
- **AWS S3** (almacenamiento raw)  
- **Power BI** (visualización de KPIs)  
- **GitHub** (documentación y control de versiones)  

---

## Pipeline
1. **Bronze:** Ingesta raw desde S3.  
2. **Silver:** Limpieza, formato de fechas y estandarización.  
3. **Gold:** Tablas de negocio (ventas, ingresos, promociones).  
4. **Dashboards:** Análisis de ventas, stock y efectividad promocional.  

---

## Screenshots

### Pipeline en Databricks
![Pipeline Diagram](./Screenshots/test_pipelines_diagram.png)  
![Pipeline Runs](./Screenshots/tests_pipeline.png)  

### Dashboard de Ventas (Power BI)
![Sales Dashboard](./Screenshots/sales_dashboard.png)  

---

## Author
**Renzo Gabriel Sánchez Quispe**  
Lima, Perú  
Correo: renzosanchez201@gmail.com  
🔗 [GitHub](https://github.com/renzosan25)  
