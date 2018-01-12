# Working with Sample Data

After cataloging the data sources, you will work with the customer to acquire sample data from each source that you identified so the implementation team can analyze it. You should familiarize yourself with the data formats and types of data that you might see.

## Typical Data Formats

Most frequently, the customer delivers sample data as CSV or Excel files. In addition, you may receive database dumps or file backups.

### **CSV File Sample**

A comma-separated values \(CSV\) file contains the values in a table as a series of ASCII text lines organized so that each column value is separated by a comma from the next column's value and each row starts a new line. The file extension is .csv.

![](/evaluating-the-project-landscape/working-with-sample-data/CSV File Sample.png)

### Excel File Sample

A Microsoft Excel spreadsheet contains various columns and rows of data. There may be multiple worksheets in each spreadsheet. Possible file extensions include .xlsx, .xls, .xlsm \(macro-enabled\), .xlst \(template\), etc.

![](/evaluating-the-project-landscape/working-with-sample-data/Excel File Sample.png)

### Database Dump File Sample

A database dump file contains a record of the table structure and/or the data from a database and is most often used for backing up a database so that its contents can be restored in the event of data loss. A MySQL dump file is usually in the form of a list of SQL statements.

The file extension depends on the type of database from which the file was exported. For example, a MySQL dump file may have a .bak extension \(but it could have .csv or .xml instead\), while an Oracle database dump uses the .dmp extension.

A database dump file often has the date of backup in the file name, and it must be imported back into a native database to be accessed. Because this type of file can be very large, it is usually compressed for delivery \(using Zip or gzip\) or stored on a customer file system.

![](/evaluating-the-project-landscape/working-with-sample-data/Database Dump File Sample.png)

### File Backup Sample

Many programs use proprietary file formats that have customized extensions and require a parser to be written. If these are text files, you can view them in a text editor; if they are binary, you may need to use a hex editor.

_Text File Sample \(modified INI format\):_

![](/evaluating-the-project-landscape/working-with-sample-data/File Backup Sample Text INI.png)

_Binary File Sample:_

![](/evaluating-the-project-landscape/working-with-sample-data/File Backup Sample Binary.png)

## Types of Data

You may see any of the following data types from the customer:

* **Rich time series data: **This data contains a complete snapshot of state for a part of a process at a fixed time interval.  
  ![](/evaluating-the-project-landscape/working-with-sample-data/Rich Time Series Data.png)

* **Sparse time series data:** This data contains a single tag or subset of tags at each timestamp, and may be at a variable time interval.  
  ![](/evaluating-the-project-landscape/working-with-sample-data/Sparse Time Series Data.png)

* **One record per output data:** This data is organized around the parts/materials as they go through a process, and may be a record for an individual serial number or a single record for a batch of raw or finished material.  
  ![](/evaluating-the-project-landscape/working-with-sample-data/One Record Per Output Data.png)

* **Event log data: **This data is a record of machine events, sometimes with mixed variables, event descriptions, and event codes. A typical format is TIMESTAMP, EVENT\_ID, EVENT\_DATA.  
  ![](/evaluating-the-project-landscape/working-with-sample-data/Event Log Data.png)

* **Logfile data: **This data contains free-form logfiles from computer-based applications. The structure can vary significantly but expect that there is a timestamp and some free-form message.  
  ![](/evaluating-the-project-landscape/working-with-sample-data/Logfile Data.png)

### Tools for Working with Data {#docs-internal-guid-e5887745-d6d3-556b-d1be-58ea6df63cf1}

You will want to use different software/programing tools to open and read the various data sources. Your decision may be affected by the platform on which you are working and the file type that you are trying to access, as well as personal preference.

The following list of tools is by no means exhaustive:

* **Excel: **Use to open CSV or Excel files.

* **Text/Source Code Editors:** Use to open text or source code files.

  * Use Notepad++ for Windows: [https://notepad-plus-plus.org/](https://notepad-plus-plus.org/)

  * Use Sublime Text for Mac: [https://www.sublimetext.com/](https://www.sublimetext.com/)

* **Hex Editors: **Use to open files structured in hexadecimal format \(i.e., binary data files\).

  * There are several good hex editors available for Windows: [https://www.poftut.com/best-free-hex-editors-windows/](https://www.poftut.com/best-free-hex-editors-windows/)

  * Hex Fiend is an open-source hex editor for Mac: [http://ridiculousfish.com/hexfiend/](http://ridiculousfish.com/hexfiend/)

* **Python Notebooks:** Use different software modules to open different file formats.

  * For CSV and Excel, use Pandas \(i.e., software libraries written for the Python programming language for data manipulation and analysis\). For more information: [https://pandas.pydata.org/](https://pandas.pydata.org/)

  * For SQL, use SQLAlchemy: [https://www.sqlalchemy.org/](https://www.sqlalchemy.org/)

  * For binary files, Python has built-in file read.

* **ELK Stack: **Use to read and search through logfiles \(especially, large volumes\). ELK consists of three powerful tools \(which are reflected in the tool's acronym\):

  * **Elasticsearch:** A log search tool.

  * **Logstash:** A tool for log data intake, processing, and output, including system logs, Web server logs, error logs, and application logs.

  * **Kibana:** A log-data dashboard that contains point-and-click pie charts, bar graphs, trendlines, maps, and scatter plots.

  For more information: [https://qbox.io/blog/welcome-to-the-elk-stack-elasticsearch-logstash-kibana](https://qbox.io/blog/welcome-to-the-elk-stack-elasticsearch-logstash-kibana)

* **HeidiSQL: **Use to browse and edit SQL data, as well as create and edit tables, views, procedures, triggers, and scheduled events. HeidiSQL is a powerful and easy client for MySQL, MariaDB, Microsoft SQL Server, and PostgreSQL. For more information: [https://www.heidisql.com/download.php](https://www.heidisql.com/download.php)





