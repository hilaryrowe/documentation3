# Sample Project Description



### Introduction

#### Executive Overview

Multinational company headquartered in Mumbai, India. Business activities include manufacture, sales, and distribution of paints, coatings, and household decor products.

#### Prospect Reference Links

Include links to corporate homepage, product information, etc.



### Objectives

#### Customer Objectives

This list should be numbered:

1. Reduce Waste

2. Optimize Line Efficiency

#### Phase 1 Deliverables \(relating back to Customer Objectives\)

1. Analysis of root cause of waste on line 3 \(Objective \#1\)

2. Analysis of different lines at different pants to compare efficiencies \(Objective \#2\)



### Risk Factors or Concerns

Identify any risk factors or concerns that have arisen during discovery and qualification. Tie them back to the deliverables.

| Risk Factor | Affects Deliverable |
| :--- | :--- |
| Machine data not available. | 1, 2 |



### Key Contacts

For both Customer and Sight Machine contacts, include the following in a table:

* Name, title, email, and phone

* Role in project: SME, project manager, day-to-day technical contact, plant manager, executive leadership, extrusion expert, etc.

* Pertinent notes: critical to project funding, be sure to attend meetings where this contact is in attendance, etc.



### Process Details

#### Industry Overview / Supplementary Material

General industry information found during discovery process. YouTube videos can be helpful here. Also, videos, slides, and images from the customer or facility.

#### Line/Process Mapping

Add a block diagram of the line. Highlight the portion where we will focus.



### Information About the Data

#### Raw Data Connectivity

| Data Name | Protocol | UpdateFrequency | ConnectionInformation | Links toSample Data | Notes |
| :--- | :--- | :--- | :--- | :--- | :--- |
| MySQL Data Warehouse | MySQL | every min | GMP network |   | Missing key table, but will be added. |
| Defect Spreadsheet | Spreadsheet |   | Corp LAN |   | NOTE: If PLC, we need tag mappings and information from customer. |

* Please note any specifics for tables, or anything else you find during the presales process.

* Protocols available and supported by DE team:

  * OPCUA

  * SQL

  * Spreadsheet

#### Process Area Data

| Process Area | Data Name | Table / Sheet | Cycles | Downtime | Defect | Batch | Part | OtherUse | Notes |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Packaging | MySQL Data Warehouse | EBRS Table | ![](https://lh5.googleusercontent.com/mlrinFfNOWxov5aUj9SqWIO4nM8gBBN70OcCOzRyUrDwT1KrPODeOytS9B3_WWDW9ovs2M3-EZAnml6KHkxrP6PM3xE7e7jH2GBmOKspbDLp6I8zn8Jb41bsfbBuJomYGDtXjAl5) | ![](https://lh4.googleusercontent.com/3hJiCEPfknkSyGOZk8Hk1hEiuY2JhBuOhYt5s2eiu8ScJIMLQxbSZKRIkZTcnXech1PJIcJeZmNR5IFBwtCesXSymb8wMzX7DkOw9rOlLFjroSgFTJqLyX9Og98WXXKWShmnupJJ) | ![](https://lh5.googleusercontent.com/mlrinFfNOWxov5aUj9SqWIO4nM8gBBN70OcCOzRyUrDwT1KrPODeOytS9B3_WWDW9ovs2M3-EZAnml6KHkxrP6PM3xE7e7jH2GBmOKspbDLp6I8zn8Jb41bsfbBuJomYGDtXjAl5) | ![](https://lh4.googleusercontent.com/3hJiCEPfknkSyGOZk8Hk1hEiuY2JhBuOhYt5s2eiu8ScJIMLQxbSZKRIkZTcnXech1PJIcJeZmNR5IFBwtCesXSymb8wMzX7DkOw9rOlLFjroSgFTJqLyX9Og98WXXKWShmnupJJ) | ![](https://lh5.googleusercontent.com/mlrinFfNOWxov5aUj9SqWIO4nM8gBBN70OcCOzRyUrDwT1KrPODeOytS9B3_WWDW9ovs2M3-EZAnml6KHkxrP6PM3xE7e7jH2GBmOKspbDLp6I8zn8Jb41bsfbBuJomYGDtXjAl5) | CPV Table | Potential cycle boundary: every row = 1 cycle |
| Packaging | MySQL Data Warehouse | Parameter Tables \(Categorical additional info\) | ![](https://lh5.googleusercontent.com/mlrinFfNOWxov5aUj9SqWIO4nM8gBBN70OcCOzRyUrDwT1KrPODeOytS9B3_WWDW9ovs2M3-EZAnml6KHkxrP6PM3xE7e7jH2GBmOKspbDLp6I8zn8Jb41bsfbBuJomYGDtXjAl5) | ![](https://lh4.googleusercontent.com/3hJiCEPfknkSyGOZk8Hk1hEiuY2JhBuOhYt5s2eiu8ScJIMLQxbSZKRIkZTcnXech1PJIcJeZmNR5IFBwtCesXSymb8wMzX7DkOw9rOlLFjroSgFTJqLyX9Og98WXXKWShmnupJJ) | ![](https://lh4.googleusercontent.com/3hJiCEPfknkSyGOZk8Hk1hEiuY2JhBuOhYt5s2eiu8ScJIMLQxbSZKRIkZTcnXech1PJIcJeZmNR5IFBwtCesXSymb8wMzX7DkOw9rOlLFjroSgFTJqLyX9Og98WXXKWShmnupJJ) | ![](https://lh4.googleusercontent.com/3hJiCEPfknkSyGOZk8Hk1hEiuY2JhBuOhYt5s2eiu8ScJIMLQxbSZKRIkZTcnXech1PJIcJeZmNR5IFBwtCesXSymb8wMzX7DkOw9rOlLFjroSgFTJqLyX9Og98WXXKWShmnupJJ) | ![](https://lh4.googleusercontent.com/3hJiCEPfknkSyGOZk8Hk1hEiuY2JhBuOhYt5s2eiu8ScJIMLQxbSZKRIkZTcnXech1PJIcJeZmNR5IFBwtCesXSymb8wMzX7DkOw9rOlLFjroSgFTJqLyX9Og98WXXKWShmnupJJ) | ![](https://lh4.googleusercontent.com/3hJiCEPfknkSyGOZk8Hk1hEiuY2JhBuOhYt5s2eiu8ScJIMLQxbSZKRIkZTcnXech1PJIcJeZmNR5IFBwtCesXSymb8wMzX7DkOw9rOlLFjroSgFTJqLyX9Og98WXXKWShmnupJJ) | categorical |

  
_**Legend**_

| ![](https://lh5.googleusercontent.com/mlrinFfNOWxov5aUj9SqWIO4nM8gBBN70OcCOzRyUrDwT1KrPODeOytS9B3_WWDW9ovs2M3-EZAnml6KHkxrP6PM3xE7e7jH2GBmOKspbDLp6I8zn8Jb41bsfbBuJomYGDtXjAl5) | Contains informationor supporting information for the given category. | ![](https://lh4.googleusercontent.com/3hJiCEPfknkSyGOZk8Hk1hEiuY2JhBuOhYt5s2eiu8ScJIMLQxbSZKRIkZTcnXech1PJIcJeZmNR5IFBwtCesXSymb8wMzX7DkOw9rOlLFjroSgFTJqLyX9Og98WXXKWShmnupJJ) | Potentially relevant to the given category. | ![](https://lh3.googleusercontent.com/aelXWk35bLU3cbJizjoeqOR3XTYE1x5-nimPb9cEdX2rfdnZ9Tk7FxjlnveVoRLxQLDVMKnyqScVxc0-P01Fnkp3dUU7HaRxTnIgur-B6INO9n7gYfCsC2rXg9rWKA21UJbBhW_9) | No relevant information for the given category. | ![](https://lh3.googleusercontent.com/-qrCfst68j-PzktjW-4eyz92oSB0WTZ6-HIBBk5uDfGxZX3N_IhG6B93bP4LQQkrtroQ4EkWfmLnPkqYKiusLcF6VpoSiYnF_qshfaqP4F3lw33mv3dKhdDrXNVsUMAGqeubA7fw) | Reviewed and determined it is not applicable to Sight Machine's use cases. |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |




### Sample Data Exploration

#### File Exploration

Example questions to ask of the data:

1. What is the general structure of the data? \(show with Jupyter\)

2. How many rows? Columns?

3. Any noticeable issues with the data?

4. Is there a cycle boundary field? How would we identify it?

5. Output count definition

6. Serial Numbers / Batch Numbers

7. Downtime Indicators

8. Defect Codes

9. Downtime Codes

10. Ideal / Max Cycle Time

11. Recipe or Product Indicator

12. OEE Equations

  
**EXAMPLE: {File 1} Data Exploration**

* Link to Jupyter Notebook Exploration \(HTML version\)

* 00-DownSample-Dataset.ipynb

**EXAMPLE: {File 2} Data Exploration**

* Link to Jupyter Notebook Exploration \(HTML version\)

* 01-Next-logical-step.ipynb

Please note the sequentially numbered notebook name in the exploration, e.g., 01-next-logical-step.ipynb. This helps to ensure another person could follow behind you in a logical order and rerun the datasets to recreate your data findings.

