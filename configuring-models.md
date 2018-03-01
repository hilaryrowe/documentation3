# Configuring Models {#docs-internal-guid-c351c58b-9ac9-92d7-27f6-6c814f13799f}

Model configuration is the core capability of the AI Data Pipeline. It provides an interface for you to define the configurations that will act as a set of instructions for the AI Data Pipeline as it produces your unified data model.

The AI Data Pipeline applies these user instructions to incoming machine and manufacturing system data record streams, and then leverages patent pending algorithms to render data models that represent your production processes.

**Sight Machine AI Data Pipeline User Configuration Data Flows**

![](/configuring-models/AIDP User Config Data Flows.png)

These individual data models serve as the foundation for a unified data model representing the entire production process that enables Sight Machine’s Enterprise Manufacturing Visibility \(EMV\) and Enterprise Manufacturing Analytics \(EMA\) applications to deliver unique insights into a manufacturer’s operations.

Currently, we support the configuration of Facilities, Machine Types, and Machines. This is sufficient for the production of a Cycles model, a Downtimes model, and OEE metrics.

## About Time Sequencing

In order to model streaming data in near real time, Sight Machine blends, joins, and integrates data streams from multiple sources. To establish relationships between disparate data types and sources, the AI Data Pipeline tags data records with timestamps at various points in the data acquisition process. At this point, each manufacturing data packet contains at least two time fields:

* **data.timestamp: **A field within the raw data that indicates the time when the raw data was generated. This field is the critical element used to order, group, and blend data from the various incoming data streams, and is used by the Sight Machine platform for all downstream calculations, like cycle boundaries, downtime boundaries, etc.
* **capturetime: **This field indicates the time that the Sight Machine software captured the data from its original source.

**NOTE: **We expect that you are working with real-time data that is in order. If you are working with high-latency data or a blend of data that is coming in at different times, contact Sight Machine for support and assistance.

## How Cycles Affect the Modeling Process {#docs-internal-guid-c351c58b-b92c-6ffb-164e-8aae1d1fc1ec}

For the AI Data Pipeline to properly model data, you need to extract a discrete set of numbers for everything coming from each signal in the customer’s system. Typically, you would want to distill each signal into one number; rarely mustallsignals be represented in the data to produce a useful model. You can work with the customer’s SMEs to determine which important factors you should be capturing.

The simplest method of modeling continuous time series data involves using averages. In the first example, you can see that for continuous temperature data, you could model and visualize the average temperature over a number of cycles.

**Example 1: Modeling Continuous Data**![](/configuring-models/Temp Chart 1 Continuous.png)In the second example, for periodic data over a number of cycles, you would want to use a start, end, and minimum temperature value set rather than an average to generate the most accurate information in the model.

**Example 2: Modeling Periodic Data**![](/configuring-models/Temp Chart 2 Periodic.png)

