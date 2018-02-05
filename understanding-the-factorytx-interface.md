# Understanding the FactoryTX Interface {#docs-internal-guid-92afc525-66cc-fd30-3c17-d9363746a63c}

The FactoryTX interface provides a console where you can view, edit, and save changes to the three sections of the configuration file source code:

* Data receiver

* Transforms

* Data transmit

For more details about those three elements, see [Configurations in FactoryTX](/configurations-in-factorytx.md).

## Editing the Configuration

In the FTX console, on the Configuration screen, you can see the FTX configuration file code as well as access other features.

![](/images/UI Full Configuration Screen w Lines.png)

On the Configuration screen, you can also do the following:

* In the upper-left, pause and resume services as necessary.  
  ![](/images/UI Config Started w Lines.png)  
  ![](/images/UI Config Stopped w Lines.png)

* On the left, check the system status of CPU, memory, or disk usage.  
  ![](/images/UI Config Usage w Lines.png)

* In the upper-right toolbar, fold and unfold the code viewing window.  
  ![](/images/UI Config Fold w Lines.png)  
  ![](/images/UI Config Unfold w Lines.png)

* In the upper-right toolbar, launch a search. You can run wildcard and regex searches.  
  ![](/images/UI Config Search w Lines.png)

* In the upper-right, use the shortcut links to jump to the data\_receiver, data\_transmit, or transforms section of the code.  
  ![](/images/UI Config Jump To w Lines.png)

* If you have any errors, an indicator appears both on the left side of the code line in question, and in the lower-right corner.  
  ![](/images/UI Config Errors w Lines.png)  
  Click the lower error link to open the error console, which will list all errors currently in the code.  
  **NOTE: **You cannot Submit until you clear all errors.  
  ![](/images/UI Config Error Console w Lines.png)

* In the lower-right, save and submit changes.  
  **NOTE: **The Submit button will be disabled if you have any errors in the code or if you have not made any changes.  
  ![](/images/UI Config Submit w Lines.png)

## Viewing Logs {#docs-internal-guid-92afc525-66df-d9a2-14de-6f2e54f61d02}

On the Log screen, you can:

