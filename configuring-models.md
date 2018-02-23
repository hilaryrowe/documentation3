# Configuring Models {#docs-internal-guid-c351c58b-9ac9-92d7-27f6-6c814f13799f}

Model configuration is the core capability of the AI Data Pipeline. It provides an interface for you to define the configurations for each explicit-defined model, which will act as a set of instructions for the AI Data Pipeline as it produces your data-defined models.

Currently, we support the configuration of Facilities, Machine Types, and Machines. This is sufficient for the production of a Cycles model, a Downtimes model, and OEE metrics.

**Sight Machine AI Data Pipeline User Configuration Data Flows**

![](/configuring-models/User Configuration Data Flows.png)

## Understanding the Extract, Transform, and Load \(ETL\) Process

After FactoryTX extracts data from a data source and sends it to the Sight Machine platform, the new data will be appropriately conditioned and ready for modeling. At this point, the conditioned data is stored as a series of Manufacturing Data Packet records within a buffer database.

This next stage of process is commonly referred to as Extract, Transform, and Load \(ETL\):

* **Extract: **The process of reading data from a data source, in this case our database of SSLOGs.

* **Transform: **The process of converting the extracted data from its previous form into the form it needs to be in so that it can be placed into another database. Transformation occurs by using rules or lookup tables or by combining the data with other data. In the AI Data Pipeline, those rules for transforms are often automatically configured, but you can modified and re-run them.

* **Load: **The process of writing the data into the target database, in this case the Sight Machine platform.

Source: [http://www.webopedia.com/TERM/E/ETL.html](http://www.webopedia.com/TERM/E/ETL.html)

The flowchart below illustrates the ETL process:

1. As part of the **extraction** process, manufacturing data packets are polled from the buffer database periodically and bundled together to try to ensure sufficient information is available for modeling.

2. The data then undergoes **transformation** within primary and associative analyzers in order stitch related data together.

3. Lastly, the modeled cycles, downtimes, parts and batches are **loaded** into the appliance database for use by the rest of the Sight Machine application.

## **ETL Architecture Outline**![](/configuring-models/ETL Architecture Outline.png)About Time Sequencing

In order to model streaming data in near real time, Sight Machine tags data records with timestamps at various points in the data acquisition process. At this point, each manufacturing data packet contains at least two time fields:

* **data.timestamp:** The time of the machine data contained within the record.

* **capturetime:** The time Sight Machine software captured the data from its original source

These timestamp fields allow for efficient access and time sequencing of the conditioned data.

**NOTE: **We expect that you are working with real-time data that is in order. If you are working with high-latency data or a blend of data that is coming in at different times, contact Sight Machine for support and assistance.

## How Cycles Affect the Modeling Process {#docs-internal-guid-c351c58b-b92c-6ffb-164e-8aae1d1fc1ec}

For the AI Data Pipeline to properly model data, you need to extract a discrete set of numbers for everything coming from each signal in the customer’s system. Typically, you would want to distill each signal into one number; rarely mustallsignals be represented in the data to produce a useful model. You can work with the customer’s SMEs to determine which important factors you should be capturing.

The simplest method of modeling continuous time series data involves using averages. In the first example, you can see that for continuous temperature data, you could model and visualize the average temperature over a number of cycles.

**Example 1: Modeling Continuous Data**![](/configuring-models/Temp Chart 1 Continuous.png)In the second example, for periodic data over a number of cycles, you would want to use a start, end, and minimum temperature value set rather than an average to generate the most accurate information in the model.

**Example 2: Modeling Periodic Data**![](/configuring-models/Temp Chart 2 Periodic.png)

