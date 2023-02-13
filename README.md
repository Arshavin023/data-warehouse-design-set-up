# data-warehouse-design-set-up-reporting-and-dashboard-building
In this project, a data engineer was hired by an ecommerce company named SoftCart.com . The company retails download only items like E-Books, Movies, Songs etc. The company has international presence and customers from all over the world. The company would like to create a data warehouse so that it can create reports like

total sales per year per country
total sales per month per category
total sales per quarter per country
total sales per category per country
You will use your data warehousing skills to design and implement a data warehouse for the company.

The company will also like to create an analytics dashboard


# Steps
- The existing sample data was studied to understand the data and deduce tables and columns to be created
- PostgreSQL ERD Tool was used to create an ERD diagram showing tables and their relationships, and the schema was generated too
- data in csv files were uploaded into the storage folder of pgAdmin
- Data for each table was imported from the csv files
- Technical issues due was experienced while attempting to upload data into the "Facts Table" due to its volume. This prompted the creation of a SQL script from the csv file through the following steps
    - csv file was loaded into the Jupyter Notebook environment and read into a dataframe.
    - Python functions were created to insert "(" and ")," at the first and last column of the dataframe
    - The dataframe was saved as a csv into local drive
    - The new csv file was opened with Notepad and the "insert into table_name (column1, column2,.....column)" was entered at the top of the page, "values" was insert next and finally ", was removed after the last ")" at the bottom of the file.
    - The file was saved as with a ".sql" extension and used to import the data into the "Facts Table" in pgAdmin. This was much easier and faster
- Basic queries such as "SELECT COUNT(*) FROM TABLE_NAME" and "SELECT * FROM TABLE_NAME LIMIT 5" were run to affirm success of data imports into tables
- Tables such as Grouping Sets, Roll Up, Cube and Materialized Views were then created for reports
- Finally, a Dashboard was created with IBM Cognos

![softcartRelationships](https://user-images.githubusercontent.com/77532336/218350662-231a0727-c0b9-42db-a5e2-a3d13a0de7b1.jpg)
