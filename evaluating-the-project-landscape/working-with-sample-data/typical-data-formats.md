## Typical Data Formats

Most frequently, the customer delivers sample data as CSV or Excel files. In addition, you may receive database dumps or file backups.

### **CSV File Sample**

A comma-separated values \(CSV\) file contains the values in a table as a series of ASCII text lines organized so that each column value is separated by a comma from the next column's value and each row starts a new line. The file extension is .csv.

![](/evaluating-the-project-landscape/working-with-sample-data/CSV File Sample.png)

### Excel File Sample

A Microsoft Excel spreadsheet contains various columns and rows of data. There may be multiple worksheets in each spreadsheet. Possible file extensions include .xlsx,.xls, .xlsm \(macro-enabled\), .xlst \(template\), etc.

![](/evaluating-the-project-landscape/working-with-sample-data/Excel File Sample.png)

### Database Dump File Sample

A database dump file contains a record of the table structure and/or the data from a database and is most often used for backing up a database so that its contents can be restored in the event of data loss. A MySQL dump file is usually in the form of a list of SQL statements.

The file extension depends on the type of database from which the file was exported. For example, a MySQL dump file may have a .bak extension \(but it could have .csv or .xml instead\), while an Oracle database dump uses the .dmp extension.

A database dump file often has the date of backup in the file name, and it must be imported back into a native database to be accessed. Because this type of file can be very large, it is usually compressed for delivery \(using Zip or gzip\) or stored on a customer file system.

![](/evaluating-the-project-landscape/working-with-sample-data/Database Dump File Sample.png)

### File Backup Sample

Many programs have proprietary file formats that have customized extensions and require a parser to be written. If these are text files, you can view them in a text editor; if they are binary, you may need to use a hex editor.

_Text File Sample \(modified INI format\):_

![](/evaluating-the-project-landscape/working-with-sample-data/File Backup Sample Text INI.png)

_Binary File Sample:_

![](/evaluating-the-project-landscape/working-with-sample-data/File Backup Sample Binary.png)



