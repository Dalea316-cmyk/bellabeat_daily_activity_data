# Bellabeat Daily Activity Analysis
![Image](https://github.com/user-attachments/assets/5a3c391a-0072-48de-9575-a8071f5b1e05)

## Project Overview
This project focuses on analyzing daily activity data from the Bellabeat smart device users to uncover trends, insights, and opportunities for product improvement and marketing strategies. The analysis specifically leverages the 'dailyActivity_merged.csv' dataset.
**Bellabeat** is a high-tech company that manufactures health and fitness products for women. Their smart devices track various health metrics, including activity, sleep, stress, and reproductive health.

## Dataset Used
The primary dataset used for this analysis is:
*'dailyActivity_merged.csv'*:
contains daily activity records for 33 Bellabeat users over a period of approximately one month.
**Key columns in this dataset include:**
* 'Id': Unique participant ID.
* 'ActivityDate': Date of the recorded activity.
* 'TotalSteps': Total steps taken in a day.
* 'TotalDistance': Total distance covered.
* 'VeryActiveMinutes',
  'FairlyActiveMinutes',
  'LightlyActiveMinutes',
  'SedentaryMinutes': Breakdown of time spent in various activityintensities.

  ## Tools and Technologies
  * **Database:** MySQL (for data cleaning, transformation, and analysis using SQL queries)
  * **Database Client:** MySQL Workbench (for executing SQL queries and managing the database)
  * **Business Intelligence Tool:**
  * Power BI Desktop (for creating interactive dashboards and visualizations)
  * **Git & GitHub (for project management and collaboration)
 
  ## Key Questions & Goals
  Tis analysis aimed to answer the following questions:
  1. What are the overall average daily activity metrics (steps,distance, calories, sedentary time) for the user's?
  2. How do user avctivity levels vary by of the week?
  3. How are useers distributed across differt activity levels (e.g., highly active, moderately active, sedentary) based on their average daily steps?
  4. Is there a clear relationship between daily steps and calories burned?
  5. What are the characteristics of the most and least active users?
 
  ## Data Cleaning and Preprocessing
  The 'dailyActivity_merged.csv' dataset was loaded into a MySQL database. The following key cleaning and preprocessing steps were performed:
  * **Date Conversion:** The 'ActivityDate' column was converted from 'VARCHAR' to a 'Date' data type for proper time-series analysis.
  * **Duplicate Check:** Checked for and confirmed the asence of duplicate entries based on 'Id'and 'ActivityDate' to ensure data integrity.
  * **Data Type Validation:** Verified and adjusted data types for all numericalcolumns to 'INT' or 'DECIMAL' as appropriate.
  * **Inconsistency Check:** Identified and reviewed records with illogical values (e.g., negative steps, zero steps with highactive minutes) to understand data quality.
  * (Refer to the 'sql_scripts/' directory for detailed SQL queries used for cleaning)*
    
  ## Analysis Highlights & Key Findings
  * **Average Daily Steps:**
  Users averaged 6.51k per day, indicating a moderately active overall user base.

  * **Sedentary Behavior:**
  On average , users spent 1.08k minutes sedentary daily, highlighting an area for potential intervention.

* **Weekend vs. Weekday Activity:**
Activity levels are actively high on Saturday and with the lowest on Friday.

* **User Segmentation:**
30.56% of users were classified as highly active, 12.96% as moderately active, and 47.22% as sedentary based on WHO guidelines.

  ## Visualizations
* **Static Visualizations:**
* **Average Daily Steps:**
![Image](https://github.com/user-attachments/assets/e6d59f0f-883c-4cf8-88fc-9c3229200ba6)
This place card shows the average daily steps accumulated by users in a day.

* **Distribution of Users by Activity Level:**

  
  
    
  
