# Boots Opticians — Optical Retail Sales & Service Analytics

End-to-end analytics project covering sales, appointments, product performance, and service conversion across Boots Opticians' store network — built with Python, SQL Server, and Power BI.

## Project overview

**Objective:** Analyze optical retail sales, appointments, service performance, conversion, and demand trends to surface actionable business insights for store operations, product strategy, and appointment management.

**Dataset:** 110,000 sales transactions and 55,000 appointments across 122 stores (Jan 2025–Dec 2026), modeled as a star schema with 2 fact tables (Sales, Appointments) and 5 dimension tables (Store, Product, Customer, Service, Date).

**Stakeholders:** Store managers, regional managers, and leadership.

## Tools used

| Tool | Purpose |
|---|---|
| Excel | Data audit, lookups, multi-condition formulas |
| Power Query | Data cleaning and transformation pipeline |
| Python (Pandas, NumPy, Matplotlib) | Exploratory data analysis, outlier detection, statistical testing |
| SQL Server | Business analysis — joins, CTEs, window functions |
| Power BI (Data model + DAX) | Star schema modeling, KPI measures, interactive dashboard |

## Key insights

- **Regional performance is uniform, not uneven** — raw revenue looked skewed toward some regions, but once normalized per store, every region performs within a tight £137.8K–£142.9K band. The variance was entirely due to store count, not regional demand.
- **Conversion is gated by appointment completion, not service type** — all 8 services convert at a near-identical rate (~37%), but only Completed appointments convert at all (48%). The highest-leverage fix is reducing no-shows, cancellations, and reschedules (~22% of all appointments), not promoting specific services.
- **No-show rates are systemic** — consistent 5.7%–6.5% across every region, meaning fixes (reminders, confirmations, deposits) should be rolled out chain-wide rather than piloted regionally.
- **A small set of premium SKUs drive outsized high-value revenue** — Prescription Lens and Spectacle Frame alone account for over 70% of total revenue.

Full analysis with all 8 insights and recommendations: [insights-and-recommendations.md](insights-and-recommendations.md)

## Dashboard

Three-page interactive Power BI report — Executive Overview, Sales & Product/Store Performance, and Appointments & Service Analytics — covering KPI monitoring, product/store performance, and service conversion analysis.

![Executive Overview](screenshots/page1-executive-overview.png)
![Sales & Product/Store Performance](screenshots/page2-sales-store-performance.png)
![Appointments & Service Analytics](screenshots/page3-appointments-service.png)

## Methodology

1. **Data audit** (Excel) — row counts, null checks, duplicate detection, invalid-value scans
2. **Data cleaning** (Power Query + Python) — deduplication, null handling, type correction
3. **Exploratory analysis** (Python) — distribution checks, IQR outlier detection, trend analysis, referential integrity validation across merged tables
4. **Statistics & probability** (Python) — regional demand variability, sampling validation, conditional probability (no-show rate, conversion rate)
5. **Business analysis** (SQL Server) — joins, CASE WHEN classifications, CTEs, window functions (`LAG`, `RANK`, running totals) for monthly trends and store rankings
6. **Data modeling** (Power BI) — star schema with validated one-to-many relationships across all fact/dimension pairs
7. **DAX measures** — Net Revenue, Conversion Rate, No-show Rate, Revenue per Visit, Gross Margin %, and supporting KPIs
8. **Dashboard build** — 3-page report, consistent theming, zero repeated visual types across pages
9. **Insights & recommendations** — 8 evidence-based findings, each with a specific business recommendation

## Key KPIs

- Net Revenue, Gross Margin %
- Total Transactions, Average Order Value
- Appointment Completion Rate, No-show Rate
- Conversion Rate (Appointment → Sale), Revenue per Visit

## Repository structure

```
├── README.md
├── insights-and-recommendations.md
├── notebooks/
│   └── eda-analysis.ipynb
├── sql/
│   └── analysis-queries.sql
├── data/
│   └── (cleaned CSV tables)
├── dashboard/
│   └── Boot_Opticians_Dashboard.pbix
└── screenshots/
    └── (dashboard page exports)
```

## About this project

Built as a self-driven portfolio project to demonstrate end-to-end analytics skills — from raw data audit through statistical analysis, SQL business logic, dimensional modeling, and interactive dashboard delivery.
