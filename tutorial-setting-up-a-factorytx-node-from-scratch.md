# Tutorial: Setting Up a FactoryTX Node from Scratch

&lt;**Section pending product completion.&gt;**

After you [deploy Factory TX](/tutorial-deploying-factorytx.md), you can set up a FactoryTX node from scratch, which involves the following procedures:

* Looking at the data source

* Setting up a new data source in the FTX configuration file

* Setting up a transform

* Setting up a transmit with an API key

* Verifying the configuration in the Sight Machine interface

## Looking at the Data Source {#docs-internal-guid-e2b35c38-6c14-7e9c-89d9-e5d535287fba}

Before you can pull data from a data source, you need to look at the machine and gather some information, including which protocol is being used \(file-based, SQL, OPC UA, etc.\) and the machine/asset name.

Before you can configure FactoryTX, make sure to test each data source to which you want to connect. You may need to use different software applications for each source. For example, the following is a list of free tools that you can use:

* For FTP, use FileZilla: [https://filezilla-project.org/](https://filezilla-project.org/)

* For OPC-UA, use UAExpert: [https://www.unified-automation.com/products/development-tools/uaexpert.html](https://www.unified-automation.com/products/development-tools/uaexpert.html)

* For SQL, use HeidiSQL: [https://www.heidisql.com/download.php](https://www.heidisql.com/download.php)

**What to Test?**

* IP address or hostname of the target data source

* Authentication information

* Location of the data in folder/table/tag path

* List of fields/tags/files that you want to retrieve

## Setting Up a New Data Source in the FTX Configuration File

When you open the FactoryTX tool for the first time, the skeleton of the source code will be available. You will need to fill in the missing parameters for the new data source.

**To set up a new data source in the FT configuration file:**

1. In a web browser, navigate to the **&lt;FTX URL&gt;**.

2. On the Configuration tab, in the Source Code window, view the code.

3. In the data\_receiver section, add the appropriate parameters for your new data source:

   * connections

   * parsers

   * protocol

   * data\_receiver\_name

   * streams: Including file\_filter, stream\_type, and asset

For more details on each parameter, see the Data Receiver section in [Configurations in FactoryTX](/configurations-in-factorytx.md).

## Setting Up a Transform

You will need to customize the transform section as well. For more details on the parameters, see the Transforms section in [Configurations in FactoryTX](/configurations-in-factorytx.md).

## Setting Up a Transmit with an API Key

You must set up the transmit information for the particular customer to the data flows to Sight Machine properly. For more information, see the Data Transmit section in [Configurations in FactoryTX](/configurations-in-factorytx.md).

**To set up a transmit with an API Key:**

1. In the Sight Machine platform, in the AI Data Pipeline, go to **Models** &gt; **Location**, and then under FactoryTX API Credentials, copy both of the following:

   * **FactoryTX Username**

   * **FactoryTX API Key**

2. In FTX, on the Configuration tab, in the Source Code window, open the data\_transmit section.  
   **HINT: **You can expand any condensed code section by clicking the arrow to the left of it.  
   **Condensed:  
   **![](/images/UI Config Code Condensed w Lines.png)**  
   Expanded:  
   **![](/images/UI Config Code Expanded w Lines.png)

3. Paste the FactoryTX Username into API\_key\_ID parameter, and the FactoryTX API Key into the API\_key parameter.

## Verifying the Configuration File in the Sight Machine Interface

**&lt;TBD&gt;**



