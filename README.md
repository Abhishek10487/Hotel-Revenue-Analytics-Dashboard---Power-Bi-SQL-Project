# 🏨 Hotel Revenue Analytics Dashboard | Power BI & SQL Project

## 📌 Project Overview

This project focuses on building an interactive **Hotel Revenue Analytics Dashboard** using **SQL** and **Power BI** to help stakeholders analyze hotel performance, revenue growth, parking demand, and seasonal trends.

The dashboard transforms raw hotel booking data into meaningful business insights that support strategic decision-making.

---

# 🎯 Business Problem

Hotel management wants to answer the following business questions:

- Is hotel revenue growing year over year?
- Should the hotel increase parking lot size?
- What trends can we identify in the data?
- How do Average Daily Rate (ADR) and occupancy change seasonally?
- Which hotel type performs better?

---

# 📊 Dashboard Objectives

- Analyze yearly hotel revenue growth
- Compare performance by hotel type
- Identify parking demand trends
- Understand seasonality in bookings and ADR
- Build interactive KPI dashboards for stakeholders

---

# 🛠️ Tools & Technologies Used

| Tool | Purpose |
|------|----------|
| SQL Server / MySQL | Data Cleaning & Transformation |
| Power BI | Dashboard & Visualization |
| DAX | KPI Calculations |
| Excel / CSV | Raw Dataset |
| GitHub | Version Control |

---

# 📂 Dataset Information

The dataset contains hotel booking information including:

- Booking Dates
- Hotel Type
- Average Daily Rate (ADR)
- Guest Count
- Parking Requirement
- Stay Duration
- Revenue
- Market Segment
- Customer Type

### Hotel Types
- Resort Hotel
- City Hotel

---

# 🏗️ Project Architecture

```text
Raw CSV Files
      ↓
SQL Data Cleaning & Transformation
      ↓
Data Modeling
      ↓
Power BI Dashboard
      ↓
Business Insights & Recommendations
```

---

# 🧹 SQL Data Cleaning & Transformation

## 1️⃣ Combine Multiple Year Datasets

```sql
SELECT * FROM hotel_2018
UNION
SELECT * FROM hotel_2019
UNION
SELECT * FROM hotel_2020;
```

---

## 2️⃣ Handle Null Values

```sql
UPDATE hotel_data
SET children = 0
WHERE children IS NULL;
```

---

## 3️⃣ Create Revenue Column

```sql
SELECT
    stays_in_week_nights,
    stays_in_weekend_nights,
    adr,
    (stays_in_week_nights + stays_in_weekend_nights) * adr AS revenue
FROM hotel_data;
```

---

## 4️⃣ Join Market Segment & Meal Tables

```sql
SELECT *
FROM hotel_data h
LEFT JOIN market_segment m
ON h.market_segment = m.market_segment
LEFT JOIN meal_cost mc
ON h.meal = mc.meal;
```

---

# 📈 Power BI Dashboard Features

## KPI Cards

- Total Revenue
- Total Bookings
- ADR (Average Daily Rate)
- Occupancy %
- Parking Requirement %
- Cancellation Rate

---

# 📑 Dashboard Pages

## 1️⃣ Executive Summary Dashboard

### Visuals Included
- Revenue KPI Cards
- Revenue Trend by Year
- Occupancy Analysis
- Booking Distribution

### Insights
- Overall business performance
- Year-over-year revenue growth
- Revenue comparison by hotel type

---

## 2️⃣ Revenue Analysis Dashboard

### Visuals Included
- Revenue by Hotel Type
- Monthly Revenue Trends
- Revenue by Market Segment
- Revenue by Customer Type

### Business Questions Answered
- Which hotel generates more revenue?
- Which customer segment is most profitable?
- What are the peak revenue months?

---

## 3️⃣ Parking Lot Analysis

### Objective
Analyze parking demand trends to determine if parking capacity should be increased.

### Visuals Included
- Parking Requests by Year
- Parking Demand by Hotel Type
- Guest Car Usage Trends

### Insights
- Parking demand is increasing
- Peak demand occurs during holiday and weekend seasons
- Additional parking may improve customer satisfaction

---

## 4️⃣ Seasonal Trend Analysis

### Visuals Included
- ADR by Month
- Guests by Month
- Occupancy Heatmaps
- Seasonal Booking Trends

### Insights
- ADR rises during peak travel seasons
- Summer months show highest occupancy
- Off-season pricing optimization opportunities exist

---

# 🧮 Important DAX Measures

## Total Revenue

```DAX
Total Revenue =
SUMX(
    hotel_data,
    (hotel_data[stays_in_week_nights] +
    hotel_data[stays_in_weekend_nights]) *
    hotel_data[adr]
)
```

---

## Average Daily Rate (ADR)

```DAX
ADR =
AVERAGE(hotel_data[adr])
```

---

## Total Nights

```DAX
Total Nights =
SUM(hotel_data[stays_in_week_nights]) +
SUM(hotel_data[stays_in_weekend_nights])
```

---

## Parking Percentage

```DAX
Parking % =
DIVIDE(
    SUM(hotel_data[required_car_parking_spaces]),
    COUNT(hotel_data[reservation_status_date])
)
```

---

# 📌 Key Business Insights

## 📈 Revenue Growth
- Revenue increased consistently year over year
- Resort hotels generated higher seasonal revenue
- City hotels maintained stable occupancy

---

## 🚗 Parking Demand
- Parking demand increased over time
- Weekend and holiday seasons showed highest parking usage
- Expansion of parking facilities may be beneficial

---

## 🌤️ Seasonal Trends
- ADR peaks during high travel seasons
- Summer months have highest occupancy
- Off-season promotions may increase bookings

---

# ✅ Business Recommendations

## Revenue Optimization
- Implement dynamic pricing during peak seasons
- Offer discounts during low occupancy periods

## Parking Strategy
- Expand parking capacity if demand continues rising
- Introduce valet or premium parking services

## Customer Retention
- Focus on high-value customer segments
- Launch loyalty and rewards programs

```

---

# 💡 Skills Demonstrated

- SQL Data Cleaning
- SQL Joins & Aggregations
- Data Modeling
- Power BI Dashboard Development
- DAX Measures
- Data Storytelling
- KPI Reporting
- Business Analytics

---

# 🚀 Future Enhancements

- Revenue Forecasting
- Customer Segmentation
- Real-Time Data Integration
- Mobile Dashboard Optimization

---

# 🏁 Conclusion

This project demonstrates how SQL and Power BI can be used together to create a complete business intelligence solution for the hotel industry.

The dashboard enables stakeholders to:
- Monitor hotel performance
- Analyze revenue trends
- Understand customer behavior
- Optimize operational decisions

---

# 👨‍💻 Author

## Abhishek Kumar

### Connect With Me
- GitHub: https://github.com/Abhishek10487
- LinkedIn: https: https://www.linkedin.com/in/abhishek-kumar-3b350923/

