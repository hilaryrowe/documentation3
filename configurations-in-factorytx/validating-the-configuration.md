## Configuration File Structure {#docs-internal-guid-f6e88102-66f0-26ef-8ffa-08d700b410de}

There are three sections of a FactoryTX configuration file:

* Data Receiver:Pulls data into FactoryTX from a variety of sources, breaks it apart into "streams," and converts it into Pandas DataFrames.  
  NOTE:Pandas is an open-source Python library used for data analysis. A DataFrame is a two-dimensional, labeled data structure comprised of rows and columns \(like a spreadsheet or SQL table\). You can think of a DataFrame as a group of series objects that share an index \(i.e., the column names\).

* Transforms:Conditions data with any operation that takes a DataFrame as input, and returns a DataFrame as output. For example, set indexes, reorder data, generate new columns, rename columns, etc.

Data Transmit:

Sends the data to a cloud environment, or forwards to another edge device.

