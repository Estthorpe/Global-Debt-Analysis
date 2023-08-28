# Global-Debt-Analysis
An analysis of the debt owed by different countries using the World Bank dataset
##Introduction: The "International Debt Analysis" project offers an exploration of global debt dynamics through meticulous SQL querying and compelling Power BI visualizations. By dissecting debt indicators and correlations, this project seeks to illuminate intricate economic relationships and trends that shape the international financial landscape. With a focus on data-driven insights, this analysis navigates through years of debt data, spotlighting key metrics that provide a comprehensive understanding of debt distribution and trends across various countries. By harnessing the potential of SQL and Power BI, this project aims to empower stakeholders with actionable insights, enabling informed decision-making in an interconnected world.
Join us in deciphering the story behind the numbers, as we transform raw data into strategic intelligence. Through this project, we present a dynamic showcase of technical acumen and analytical expertise, bridging the gap between data and actionable knowledge in the realm of international debt analysis.
The dataset is obtained from  World Bank: https://www.kaggle.com/datasets/theworldbank/world-bank-intl-debt

**_ Disclaimer_**: All data sets and reports do not represent any company institution or country but just a dummy dataset to demonstrate the capability of Power BI & SQL
Disclaimer should be in bold


**Problem Statement**
 Debt Analysis
 - Total Amount of Debt by Country: Which countries have the highest total debt based on the available data, and how does this compare to their GDP?
 - Debt Categories: What are the primary reasons or categories for which countries owe the most debt (e.g., education, health, infrastructure)?
 - Debt Distribution by Indicator (Comparison of Debt Indicators): How do different indicators, such as education, health, and public administration, compare in terms of the total amount of debt? -
 -  Show The Top 10 Debt Indicators
 -  Number of Countries per Debt Indicator
 -  Average Debt per Country:

**Skills/ Concepts Demonstrated** 
 - Power BI:  Data cleaning using Power Query, Time Intelligence functions, Dynamic and complex KPIs, DAX Queries using different functions, Conditional Formatting, QUICK Measures, Modelling, Filters 
 - SQL Skills: Data Querying, Aggregation Functions, Window Functions, Join OperationsGrouping and Sorting, Data Filtering, Subqueries and Error Handling

 **Modelling**
Automatically derived relationships are adjusted to remove and replace unwanted relationships and the relationships between the tables are clearly mapped out.

Adjusted Model.   
:---------------: 
Adjusted Schema- Int'l Debt.png            

The model is a star schema
There are 5-dimension tables and 1 fact table. The dimension tables are all joined to the fact table with a one to many relationship.

## Visualization
Include screenshot of the charts

You can interact with the report [here] (link)
Include the link for the Power BI report

##Analysis
Do in-depth analysis of each PowerBi Page

Anal



##Conclusion & Recommendations 

Recommendations:
Focus on High-Debt Countries: Countries such as those topping the list in terms of total debt should be the focus of international financial bodies for targeted debt management programs. Their specific needs and challenges should be identified, and customized strategies should be developed.
Evaluate Underlying Causes: For countries with exceptionally high debts related to certain indicators, it's essential to dive deeper into the root causes. For example, if healthcare-related debts are predominant, it might indicate a struggling healthcare system that requires reform or international support.
Collaborative Approaches: Countries with similar debt profiles (e.g., those with high debts in the same indicators) might benefit from collaborative strategies. Sharing best practices, policies, or even resources could be beneficial.
Debt Education and Transparency: Countries, especially those with rapidly increasing debts, should focus on educating their policymakers about sustainable borrowing. There should also be transparency in how borrowed funds are allocated and spent.
Engage in Preventive Measures: Before debts become unmanageable, countries approaching high debt-to-GDP ratios or those with rapidly increasing debts in specific indicators should be flagged for preventive measures.
Conclusions:
Diverse Debt Profiles: The dataset showcases that countries have diverse debt profiles, with some countries having alarmingly high debts in specific sectors. This indicates the varied challenges and priorities each country faces.
Indicator-Specific Debts: Certain debt indicators are more prevalent across multiple countries, suggesting global challenges in sectors like healthcare, infrastructure, or education.
Rapid Debt Accumulation: Some countries might be accumulating debt at a faster pace in recent years. Monitoring these trends is crucial to prevent future financial crises.
Need for Customized Solutions: A one-size-fits-all approach might not work. Customized solutions based on the specific debt profiles of each country are essential.
Value of Data Analysis: This dataset underscores the value of data-driven insights in international finance. Understanding where, why, and how countries borrow can guide better fiscal management strategies.




