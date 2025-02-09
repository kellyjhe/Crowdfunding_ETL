# Crowdfunding ETL Project

## 🔎 Overview
The goal of this mini project is to organize and combine datasets containing information on crowdfunding campaigns run by different companies. 

## 📊 Data Sources
1. Categories
   - Description: Contains data on the categories and subcategories of companies
   - Key columns: category_id
2. Crowdfunding
   - Description: Holds data on crowdfunding campaigns and company info
   - Key columns: contact_id, goal, pledged, category_id
3. Contacts
   - Description: Contains data on unique contacts, which are assigned to a company
   - Key columns: contact_id
  
## 🔬 Process
Build an ETL pipeline using Python and Pandas to extract and transform the data, then use SQL to create an ERD sketch and load the data into a Postgres database.

Cleaned code in Python, exported to CSV and created an ERD sketch using QuickDBD. Referencing the ERD, I loaded the data into SQL along with establishing the foreign keys and primary keys. 

## 🛠️ Tools Used
Python, SQL, QuickDBD, Jupyter Notebook

## 📁 References
Code assistance from Xpert Learning Assistant Chat.
