# E-Learning-Purchases-Analysis
 Analyzing e‑learning course purchases using MySQL — uncovering sales trends, learner behavior, and category performance.
# 🎓 E‑Learning Platform Purchases Analysis (MySQL Project)

**Tools:** MySQL | Joins | Aggregation | SQL Queries  
**Domain:** Education | Data Analytics | Business Intelligence  

---

## 📊 Project Overview:
This project analyzes purchase data from an online learning platform to uncover insights into:
- Top‑performing course categories
- Most purchased courses
- Learner spending behavior across countries
- Cross‑category purchases and diversity
- Courses with no purchases
- Seasonal trends in enrollments

The analysis was performed using **MySQL**, leveraging schema design, joins, aggregation, and analytical queries.

---

## 🎯 Problem Statement:
The management team wanted to understand:
1. Which categories and courses drive the most revenue.  
2. Who are the top learners by spending.  
3. Which courses have not been purchased at all.  
4. How learner behavior varies across geographies.  
5. Seasonal purchase trends for better marketing strategies.  

---

## 📂 Dataset & Schema:
Three relational tables were designed:

- **learners**  
  - learner_id (PK)  
  - full_name  
  - country  

- **courses**  
  - course_id (PK)  
  - course_name  
  - category  
  - unit_price  

- **purchases**  
  - purchase_id (PK)  
  - learner_id (FK → learners.learner_id)  
  - course_id (FK → courses.course_id)  
  - quantity  
  - purchase_date  

---

## 🔧 SQL Techniques Used:
- **Database Setup**: Created schema and inserted sample data.  
- **Joins**: INNER JOIN, LEFT JOIN, RIGHT JOIN to combine learners, courses, and purchases.  
- **Aggregation**: SUM, COUNT, GROUP BY, HAVING for totals and unique learners.  
- **Filtering & Sorting**: WHERE, ORDER BY, LIMIT for insights.  
- **Analytical Queries**: Answered business questions with SQL logic.  

---
## 🚀 Insights:

📈 Programming & Technology courses drive strong learner interest.

🏆 Python Basics, Data Science Fundamentals, Power BI Essentials are most purchased.

💰 Top spenders include learners from India, China, Japan, Italy — showing global appeal.

🔄 Many learners purchase across multiple categories, reflecting broad skill development.

❌ Courses like Gen‑AI, SAP Management, Automation Testing, IICS, Advanced PL/SQL had no purchases.

📅 Seasonal spikes in mid‑year and year‑end suggest academic breaks and upskilling cycles.

---
## 📌 Conclusion:

This MySQL project demonstrates how relational databases and analytical queries can transform raw purchase data into actionable insights for business strategy.
Findings highlight opportunities to focus marketing on top categories, optimize underperforming courses, and tailor regional strategies.

---

## 👨‍💻 Author:
Vishnu Prasath  
📧 mvishnuprasath20@gmail.com
🌐 GitHub: VishnuPrasath-M  
💼 LinkedIn: m-vishnu-prasath (linkedin.com in Bing)

---

🏷️ Tags
#MySQL #SQLQueries #DataAnalytics #E-Learning #BusinessIntelligence 
