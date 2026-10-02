# Hospital Patient Analytics Dashboard

## Overview

The **Hospital Patient Analytics Dashboard** is an end-to-end healthcare analytics project developed to transform hospital operational and patient data into meaningful, interactive insights.

The project integrates **Python, Pandas, MySQL, SQL, and Microsoft Power BI** to perform data preprocessing, exploratory analysis, database management, KPI development, and interactive dashboard visualization.

The primary objective is to provide a structured analytical view of **patient flow, service utilization, admission patterns, hospital capacity, patient satisfaction, and workforce performance**.

---

## Objectives

- Analyze patient demographics and service utilization.
- Monitor patient admissions and admission trends.
- Evaluate average length of stay across hospital services.
- Analyze patient satisfaction.
- Measure admission and refusal rates.
- Analyze hospital bed availability.
- Evaluate staff attendance and workforce distribution.
- Monitor staff morale across services.
- Develop an interactive and management-oriented Power BI dashboard.
- Demonstrate an end-to-end data analytics workflow using healthcare data.

---

## Technology Stack

Technology | Application |
Python==>Data preprocessing and analysis 
Pandas==>Data manipulation and cleaning 
NumPy==>Numerical processing 
Matplotlib==>Exploratory visalization 
Jupyter Notebook==>Data analysis workflow 
MySQL==>Relational data storage 
SQL==>Data querying and KPI analysis 
Power BI==>Interactive dashboard and visualization 
DAX==>Measures and analytical calculations 
Git & GitHub==>Version control and project management 

---

## Data Sources
The dataset used in this project was obtained from Kaggle:[Hospital Bed Occupancy and Length of Stay Analysis](https://www.kaggle.com/code/mihiretu/hospital-bed-occupancy-and-length-of-stay-analysis/input)
The project uses four primary datasets:

### `patients.csv`

Contains patient-level information including:

- Patient ID
- Patient name
- Age
- Arrival date
- Departure date
- Service
- Patient satisfaction
- Length of stay

### `services_weekly.csv`

Contains weekly service-level operational data:

- Week
- Month
- Service
- Available beds
- Patient requests
- Patients admitted
- Patients refused
- Patient satisfaction
- Staff morale
- Events

### `staff.csv`

Contains hospital workforce information:

- Staff ID
- Staff name
- Role
- Service

### `staff_schedule.csv`

Contains staff scheduling and attendance information:

- Week
- Staff ID
- Staff name
- Role
- Service
- Attendance status

---

# Project Architecture

```text
                    Raw Hospital Data
                           │
                           ▼
                Python / Jupyter Notebook
                           │
                  Data Cleaning & EDA
                           │
                           ▼
                  Processed CSV Files
                           │
                           ▼
                    MySQL Database
                           │
                           ▼
                  SQL Analysis & KPIs
                           │
                           ▼
                       Power BI
                           │
                           ▼
             Interactive Analytics Dashboard
```

---

# Data Processing

The data preprocessing stage was performed using **Python and Pandas**.

The workflow included:

- Dataset loading
- Structural inspection
- Missing-value analysis
- Duplicate detection
- Data-type validation
- Date processing
- Column standardization
- Data consistency checks
- Generation of cleaned datasets

Processed datasets are stored in:

```text
data/processed/
```

---

# Exploratory Data Analysis

Exploratory Data Analysis was performed to identify patterns and relationships within the hospital data.

Key areas analyzed include:

- Patient demographics
- Patient distribution by service
- Length of stay
- Patient satisfaction
- Monthly admission trends
- Service demand
- Bed availability
- Staff distribution
- Staff attendance
- Staff morale

---

# Database Design

A MySQL database named:

```text
hospital_analytics
```

was created to store the processed datasets.

### Database Tables

```text
hospital_analytics
│
├── patients
├── services_weekly
├── staff
└── staff_schedule
```

The relational database provides a structured foundation for SQL-based analysis and Power BI integration.

---

# SQL Analytics

SQL queries were developed to generate operational and patient-related KPIs.

### Patient Analytics

- Total patient count
- Average patient age
- Average length of stay
- Patient satisfaction
- Patients by service
- Age-group distribution
- Longest patient stays

### Service Analytics

- Admission rate
- Refusal rate
- Available beds
- Weekly admissions
- Monthly admissions
- Service-level performance

### Workforce Analytics

- Staff by service
- Staff by role
- Staff attendance
- Staff morale

---

# Power BI Dashboard

The Power BI dashboard is organized into two analytical pages.

## Page 1 — Patient Overview

The first page provides a high-level overview of patient activity and experience.

### KPIs

- **Total Patients:** 1,000
- **Average Patient Age:** 45.34
- **Average Length of Stay:** 7.41 days
- **Average Patient Satisfaction:** 79.60

### Visualizations

- Patients by Service
- Average Length of Stay by Service
- Patient Satisfaction by Service
- Monthly Admissions Trend

A **Service** slicer enables interactive filtering across the dashboard.

---

## Page 2 — Service & Operations Analysis

The second page focuses on hospital operational performance and workforce analytics.

### Visualizations

- Admission Rate by Service
- Refusal Rate by Service
- Average Available Beds by Service
- Staff Attendance by Service
- Staff Morale by Service
- Staff Distribution by Role

This page provides an operational perspective on **capacity, admissions, staffing, and service performance**.

---

# Key Metrics

| Metric | Value |
|---|---:|
| Total Patients | 1,000 |
| Average Patient Age | 45.34 |
| Average Length of Stay | 7.41 days |
| Average Patient Satisfaction | 79.60 |

### Patient Distribution

| Service | Patients |
|---|---:|
| Emergency | 263 |
| Surgery | 254 |
| General Medicine | 242 |
| ICU | 241 |

---

# Project Structure

```text
Hospital-Patient-Analytics/
│
├── data/
│   ├── raw/
│   ├── processed/
│   │   ├── patients_cleaned.csv
│   │   ├── services_weekly_cleaned.csv
│   │   ├── staff_cleaned.csv
│   │   └── staff_schedule_cleaned.csv
│   └── images/
│
├── notebooks/
│   ├── 01_data_loading.ipynb
│   ├── 02_data_cleaning.ipynb
│   └── 03_eda.ipynb
│
├── powerbi/
│   └── Hospital_Patient_Analytics_Dashboard.pbix
│
├── reports/
│
├── sql/
│   ├── 01_create_database.sql
│   ├── 02_create_tables.sql
│   ├── 03_insert_data.sql
│   └── 04_analysis_queries.sql
│
├── README.md
├── requirements.txt
└── .gitignore
```

---

# Key Business Questions

The dashboard is designed to support analysis of questions such as:

- What is the overall patient volume?
- How are patients distributed across hospital services?
- What is the average length of stay?
- How does patient satisfaction vary by service?
- How does admission volume change over time?
- What proportion of patient requests result in admissions?
- What proportion of requests are refused?
- How does bed availability vary across services?
- What is the staff attendance rate?
- How is the workforce distributed across different roles?
- How does staff morale vary across services?

---

# Skills Demonstrated

This project demonstrates practical experience in:

- Healthcare Data Analytics
- Data Cleaning
- Exploratory Data Analysis
- Python
- Pandas
- SQL
- MySQL
- Data Modeling
- DAX
- Power BI
- KPI Development
- Data Visualization
- Dashboard Design
- Business Intelligence
- Healthcare Operations Analytics

---

# Future Enhancements

Potential extensions to the project include:

- Development of predictive models for patient admissions.
- Length-of-stay prediction using Machine Learning.
- Hospital demand forecasting.
- Automated data refresh pipelines.
- Advanced Power BI drill-through analysis.
- Integration with real-time hospital information systems.
- Deployment through Power BI Service.
- Addition of advanced patient demographic and clinical analytics.

---

# Author 
Krushna Khalate

Biomedical Engineering | Data Analytics | Healthcare Analytics | Data Science

---

## Project Summary

This project demonstrates a complete **end-to-end healthcare data analytics pipeline**, from raw data ingestion and preprocessing to relational database management, SQL-based analysis, KPI development, and interactive business intelligence visualization.

It showcases the application of modern data analytics tools to transform structured hospital data into a comprehensive analytical dashboard for understanding **patient flow, service utilization, operational capacity, and workforce performance**.

