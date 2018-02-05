# Configuration File Structure

There are three sections of a FactoryTX configuration file:

* **Data Receiver: **Pulls data into FactoryTX from a variety of sources, breaks it apart into "streams," and converts it into Pandas DataFrames.  
  **NOTE: **Pandas is an open-source Python library used for data analysis. A DataFrame is a two-dimensional, labeled data structure comprised of rows and columns \(like a spreadsheet or SQL table\). You can think of a DataFrame as a group of series objects that share an index \(i.e., the column names\).

* **Transforms: **Conditions data with any operation that takes a DataFrame as input, and returns a DataFrame as output. For example, set indexes, reorder data, generate new columns, rename columns, etc.

* **Data Transmit: **Sends the data to a cloud environment, or forwards to another edge device.

## Data Receiver

Every data receiver will have the following keys:

![](/understanding-the-factorytx-interface/Data Receiver Table.png)

### Data Receiver Section Sample

The following is a brief sample of the data receiver section of code in the FTX configuration file. This sample shows a file-based protocol.

![](/understanding-the-factorytx-interface/Data Receiver Section Sample.png)

Note the following parameters:

![](/understanding-the-factorytx-interface/Data Receiver Section Sample Color Coded Parameters.png)

Each data receiver may have additional requirements, depending on its protocol. For full details and complete configuration file samples for the various protocols, see the following sections in :

* 


