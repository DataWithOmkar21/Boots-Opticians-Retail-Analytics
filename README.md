# Boots Opticians – Optical Retail Sales & Service Analytics

## 📌 Project Overview

This project analyzes optical retail sales and appointment data from Boots Opticians to understand sales performance, store and regional trends, product category performance, appointment behavior, and service-to-sale conversion.

The project follows an end-to-end data analytics workflow using Python, SQL Server, and Power BI.

## 🎯 Business Objectives

- Analyze sales performance across stores, regions, and product categories

- Identify factors associated with appointment no-shows and cancellations

- Evaluate conversion from appointment to sale across services

- Analyze discount impact on gross margin

- Measure store and regional performance on a like-for-like (per-store) basis

- Build an interactive dashboard for business-level insights

## 🛠️ Tools & Technologies

- **Python** – Data cleaning, transformation and exploratory analysis

- **Pandas / NumPy** – Data manipulation and statistical analysis

- **SQL Server** – Data storage and analytical queries

- **Power BI** – Interactive dashboard and visualization

- **DAX** – Measures and calculations

- **Git & GitHub** – Version control and project documentation

## 🔄 Project Workflow

Raw Boots Opticians Dataset

↓

Python – Data Cleaning, EDA & Statistical Analysis

↓

SQL Server – Data Storage & Business Analysis

↓

Power BI – Star Schema Modeling & Dashboard Development

↓

Sales, Appointment & Profitability Insights

## 📊 Power BI Dashboard

### Page 1 – Executive Overview

Monitors headline KPIs — Net Revenue, Total Transactions, Conversion Rate, No-show Rate, Gross Margin % — alongside monthly revenue trend, revenue-vs-target progress, and revenue by region.

### Page 2 – Sales & Product/Store Performance

Analyzes top-performing products, revenue by category, store rankings within region, and the relationship between discount level and gross margin.

### Page 3 – Appointments & Service Analytics

Analyzes appointment status breakdown, booking channel performance, service-level conversion rates, and the appointment-to-sale conversion funnel.

## 🔍 Key Insights

- Regional revenue and appointment volume appear uneven at a raw-total level, but normalize almost perfectly once measured per store — the variance is driven by store count, not regional performance.

- Conversion rate is flat across all services (~37%) and is instead gated by appointment completion: only Completed appointments convert (48%), while Cancelled, No-show, and Rescheduled appointments convert at 0%.

- No-show rates are consistent across every region (5.7%–6.5%), indicating a systemic issue best solved with a chain-wide fix rather than a regional one.

- Prescription Lens and Spectacle Frame together account for over 70% of total revenue, with a small set of premium SKUs driving a disproportionate share of high-value transactions.

- Online bookings show a wider spread of no-show/reschedule outcomes than Phone bookings, pointing to a gap in the online booking confirmation flow.

## 📁 Repository Structure

```
Boots-Opticians-Retail-Analytics/

│

├── Dataset/
│   ├── Fact_Sales_Clean.csv
│   ├── Fact_Appointments_Clean.csv
│   ├── Dim_Store.csv
│   ├── Dim_Product.csv
│   ├── Dim_Customer.csv
│   ├── Dim_Service.csv
│   └── Dim_Date.csv
│
├── Power BI/
│   └── Boot_Opticians_Dashboard.pbix
│
├── Python/
│   └── Boots_Opticians_EDA.ipynb
│
├── SQL/
│   └── Boots_Opticians_Analysis.sql
│
├── Screenshots/
│   ├── Executive Overview.png
│   ├── Sales & Product-Store Performance.png
│   └── Appointments & Service Analytics.png
│
├── insights-and-recommendations.md
└── README.md
```

## About

End-to-end data analytics project analyzing optical retail sales, store and regional performance, appointment behavior, and service-to-sale conversion using Python, SQL Server, and Power BI.

## About

End-to-end data analytics project analyzing optical retail sales, store and regional performance, appointment behavior, and service-to-sale conversion using Python, SQL Server, and Power BI.
