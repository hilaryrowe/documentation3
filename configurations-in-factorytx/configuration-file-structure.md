# Configuration File Structure

There are three sections of a FactoryTX configuration file:

* **Data Receiver: **This section pulls data into FactoryTX from a variety of sources, breaks it apart into "streams," and converts it into Pandas DataFrames.  
  **NOTE: **Pandas is an open-source Python library used for data analysis. A DataFrame is a two-dimensional, labeled data structure comprised of rows and columns \(like a spreadsheet or SQL table\). You can think of a DataFrame as a group of series objects that share an index \(i.e., the column names\).

* **Transforms: **This section conditions data with any operation that takes a DataFrame as input, and returns a DataFrame as output. For example, set indexes, reorder data, generate new columns, rename columns, etc.

* **Data Transmit: **This section sends the data to a cloud environment, or forwards to another edge device.

## Data Receiver

Every data receiver will have the following keys:

![](/configurations-in-factorytx/Data Receiver Table.png)

### Data Receiver Section Sample

The following is a brief sample of the data\_receiver section of code in the FTX configuration file. This sample shows a file-based protocol.

![](/configurations-in-factorytx/Data Receiver Section Sample.png)

Note the following parameters:

![](/configurations-in-factorytx/Data Receiver Section Sample Color Coded Parameters.png)

Each data receiver may have additional requirements, depending on its protocol. For full details and complete configuration file samples for the various protocols, see the following sections in [Configuring a Data Receiver](/configuring-a-data-receiver.md):

* Configuring a SQL Plugin

* Configuring an OPC UA Plugin

* Configuring a File-Based Plugin

## Transforms

FactoryTX currently only supports the set\_timestamp transform, which you can use as-is or adjust slightly. If the data has multiple timestamps or date/time fields, this transform helps you identify which one will be used in the data modeling later.

You can also use the Custom Pandas transform to write your own transform with any supported Pandas actions.

**NOTE:** In the future, we will support extensibility on FactoryTX transforms: you will be able to write your own transforms in Python and then load them into FactoryTX.

### Transforms Section Sample

The following is a brief sample of the transforms section of code in the FTX configuration file.

![](/configurations-in-factorytx/Transforms Section Sample.png)

### Stream Filters

In order to control which streams are processed by which transforms, FactoryTX has a filter\_stream key that you define on each transform.

Stream filters are always described as a list of streams, with each stream described as an asset and stream\_type.

Place each stream in quotation marks, using a colon to separate the asset and the stream\_type. Separate multiple streams with commas. You can also replace any asset or stream\_type with a star \("\*"\) to imply all assets, or all stream types. For example:

![](/configurations-in-factorytx/Stream Filter Table.png)

### Data Transmit {#docs-internal-guid-f6e88102-6786-79b0-7465-91ec562dd85d}

Typically, you will want to configure the transmit to send data to a Sight Machine cloud environment. In that case, these are the required keys:

![](/configurations-in-factorytx/Data Transmit Table.png)

#### Copying FTX API Credentials {#docs-internal-guid-f6e88102-6786-ba2b-a6eb-488ab845b77a}

To access the API keys in the AI Data Pipeline, go to **Models** &gt; **Location**, and then under **FactoryTX API Credentials**, copy both of the following:

* **FactoryTX Username**

* **FactoryTX API Key**

![](/configurations-in-factorytx/Copying FTX API Credentials w Lines.png)

### Data Transmit Section Sample

The following is a brief sample of the data\_transmit section of code in the FTX configuration file.

![](/configurations-in-factorytx/Data Transmit Section Sample.png)





