**WorkHub – Data Analytics Dashboard (Power BI)**
**Project Overview**

WorkHub is an interactive Power BI dashboard designed to analyze and visualize key business/workforce metrics. This project focuses on transforming raw data into actionable insights using data modeling, DAX, and interactive visual storytelling.

**The dashboard helps stakeholders:**
* Monitor performance metrics
* Identify trends and patterns
* Make data-driven decisions

**Objectives**
* Clean and transform raw data using Power Query
* Build a structured data model with relationships
* Create KPIs using DAX
* Design an interactive and user-friendly dashboard
* Deliver business insights through visual analytics

** Tools & Technologies**
* Power BI Desktop (.pbix)
* Power Query (Data Transformation)
* DAX (Data Analysis Expressions)
* Data Modeling
* Excel / CSV (Data Source – claude.ai)

** Key Features**
* KPI Cards (Total Revenue / Total Employees / Performance Score etc.)
* Interactive Filters & Slicers
* Trend Analysis (Monthly / Quarterly insights)
* Drill-through functionality
* Dynamic measures using DAX
* Clean and professional dashboard layout

**Business Insights **
* Identified highly-used amenities
* Detected monthly trends in performance
* Analyzed workforce distribution by region
* Highlighted key growth opportunities

**DAX Measures Used**
Some of the core measures include:
* Total Revenue = SUM(Sales[Revenue])
* Average Performance = AVERAGE(Employee[PerformanceScore])
* Growth % = 
DIVIDE(
    [Current Period Revenue] - [Previous Period Revenue],
    [Previous Period Revenue]
)

**Data Cleaning Steps**
* Removed null and duplicate values
* Standardized column names
* Changed data types
* Created calculated columns
* Built relationships between tables

**How to Use**
Download the repository
Open WorkHub.pbix in Power BI Desktop
Refresh data source if required
Explore dashboard using slicers and filters

**Dashboard Preview**
<img width="1299" height="724" alt="Screenshot 2026-02-28 115655" src="https://github.com/user-attachments/assets/c1216aff-3991-412d-a243-fe44199c3969" />


**Skills Demonstrated**
* Data Cleaning & Transformation
* Data Modeling
* DAX Calculations
* Business Intelligence Reporting
* Analytical Thinking
* Dashboard Design & UX

**Future Improvements**
Add row-level security (RLS)
Connect to live database
Automate data refresh
Add advanced forecasting visuals
