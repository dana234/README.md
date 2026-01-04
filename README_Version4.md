# MIS304 Assessment 2A Group 1 – Global Superstore Data Analysis
---

## 🏢 Project Background

This project analyses sales data from an international e-commerce company operating in the appliances and technology sectors, serving both retail and office customers. The dataset, sourced from the Global Superstore, covers order transactions from 2011 to 2014 and offers valuable insights into sales, profitability, customer behaviour, and logistics.

The analysis aims to support decision-making in three key business areas:
- Improving profitability
- Understanding customer segmentation
- Optimising logistics

---

## 📈 Key Insights & Recommendations

Insights and recommendations are provided on the following key areas:

- **Profitability Growth:** Maximise profit by identifying key segments, products, and seasonal trends.
- **Customer Segmentation:** Target the most profitable customer groups and regions, and tailor incentives and marketing strategies.
- **Logistics Optimisation:** Reduce shipping costs and improve shipping efficiency to boost profitability and customer satisfaction.
- **Sales Trends Over Time:** Use data-driven insights to inform inventory and promotional strategies.

- The SQL queries used to inspect and clean the data for this analysis can be found [here](#).
- Targeted SQL queries regarding various business questions can be found [here](#).
- An interactive Tableau dashboard used to report and explore sales trends can be found [here](#).

---

## 🗂️ Data Structure & Initial Checks

The main database consists of 51,290 rows and 24 columns, including:

| Columns       | Data types  | Columns         | Data types  |
|---------------|-------------|----------------|-------------|
| Row ID        | Numerical   | Market         | Categorical |
| Order ID      | Categorical | Region         | Categorical |
| Order Date    | Categorical | Product ID     | Categorical |
| Ship Date     | Categorical | Category       | Categorical |
| Ship Mode     | Categorical | Sub-Category   | Categorical |
| Customer ID   | Categorical | Product Name   | Categorical |
| Customer Name | Categorical | Sales          | Numerical   |
| Segment       | Categorical | Quantity       | Numerical   |
| City          | Categorical | Discount       | Numerical   |
| State         | Categorical | Profit         | Numerical   |
| Country       | Categorical | Shipping Cost  | Numerical   |
| Postal Code   | Categorical | Order Priority | Categorical |

_Entity Relationship Diagram: (Insert ERD or link here)_

---

## 📝 Executive Summary

This report presents the creation of an analytical workbook for global e-commerce sales data. The dataset was cleaned and filtered using Tableau Prep and Desktop, correcting errors and removing irrelevant attributes. The analysis focused on three main business goals:
- Profitability growth
- Customer segmentation
- Logistics optimisation

Dedicated queries and tables enabled hypothesis generation and actionable recommendations to improve business efficiency and profitability. The results are presented in a storytelling format for stakeholder clarity.

---

## 🔎 Insights Deep Dive

### Category 1: Improving Profitability

- **Seasonal Sales Trends:**  
  Quarterly analysis revealed technology items consistently had the highest sales, peaking in Q4 each year. The 2014 holiday season saw a 40% increase, with knock-on growth in furniture and office supplies. Post-holiday sales dropped by 36.3% for technology and also declined for other segments.
  ![Sales Dashboard](assets/image1.png)


- **Segment Profitability:**  
  The consumer segment is the most profitable, followed by corporate and home office. Efficient marketing should prioritize consumer retention.
  ![Sales Dashboard](assets/image2.png)

### Category 2: Understanding Customer Segmentation

- **Geographic Analysis:**  
  The US is the largest market, but APAC (China, India) and Brazil are important growth regions.  
  ![Figure 8: Bestselling countries vs. Profit per item sold](link-to-figure8)
  ![Figure 9: Sales and profit progress over $100K](link-to-figure9)

- **Sensitivity to Incentives:**  
  Discount strategies should be tailored:  
  - China: Most sales without discounts  
  - Australia: Most sales with 10% discount  
  - US and Mexico: Retail price or ~20% discount  
  The US has low profit per item; consider raising prices cautiously.

### Category 3: Optimising Logistics

- **Shipping Costs:**  
  Standard Class is used for nearly 60% of orders worldwide. LATAM and US markets have lower shipping costs compared to EU, APAC, and EMEA.
  ![Figure 10: Shipping mode distribution](link-to-figure10)
  ![Figure 11: Shipping overview by ship mode](link-to-figure11)

- **Shipping Performance:**  
  Late shipments are trending upwards, especially for Office Supplies (binders, art).  
  ![Figure 12: Shipping efficiency](link-to-figure12)
  ![Figure 13: Total shipped categories by ship status](link-to-figure13)

---

## 🏁 Recommendations

Based on the findings, we recommend:

- **Sales & Marketing:**  
  - Use seasonal trends to adjust marketing and inventory strategies, especially for technology and furniture during Q4.
  - Prioritize retention and loyalty programs for consumer segments.
  - Focus growth efforts on APAC and Brazil, and review low-profit regions for potential withdrawal.
  - Tailor discount and pricing policies by region—avoid blanket approaches.

- **Logistics:**  
  - Improve shipping efficiency, particularly for Office Supplies.
  - Establish more regional warehouses in APAC and EU to lower costs and speed up delivery.
  - Redesign shipping routes and add local storage facilities.

- **Data & Ethics:**  
  - Enhance data collection and cleaning processes to ensure reliability.
  - Always consider legal and ethical practices, especially with customer data and pricing.

---

## ⚠️ Assumptions and Caveats

- Missing or inconsistent data, especially in postal codes, was removed or corrected.
- Typographical errors in city/state/country columns manually fixed.
- Dates reformatted for consistency.
- Outliers in shipping cost and sales retained for future analysis.
- Ethical considerations in segmentation (no sex or ethnicity used).

---

## 📊 Visualizations

Please refer to the attached figures for trend analysis, segmentation, logistics, and shipping performance.

---

## 📁 Downloadable Work Samples

- [Full Report PDF](link-to-report)
- [Tableau Dashboard](link-to-dashboard)
- [SQL Cleaning Queries](link-to-sql-cleaning)
- [SQL Business Questions](link-to-sql-business-questions)

---

## 📬 Contact

For questions or collaboration, connect on [LinkedIn](https://www.linkedin.com/in/dana-lucia-mendoza-64157b269/)  
Email: *(add your email here)*

---

*Feel free to make a copy of this or fork this repository and make it your own. Update links and add your own SQL/Tableau resources as you progress!*
