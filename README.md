# Overview: Building Data Extraction Pipelines

Releasing data from factory environments is required for Sight Machine to deliver distinctive data modeling and analysis. FactoryTX \(or FTX, where TX stands for “Transmit”\) is Sight Machine's data acquisition product, a continuous, automatic tool that extracts data from edge devices or machines of origin and efficiently imports it into the Sight Machine platform. Typically, FTX runs on an edge device on the factory floor, collecting data from a variety of sources in real time, conditioning the data, transmitting it into the Sight Machine platform.

**FactoryTX Process**

![](/images/FactoryTX Process w Lines.png)

To build a data extraction pipeline, FactoryTX:

* Coerces machine-specific data coming from a variety of sources and proprietary formats to discrete time series data.

* Labels all data with meaningful metadata, such as the data source, type, and a canonical timestamp, to assist data analysis.

* Builds a consistent, human-readable format called SSLOG, which is a JSON document per point in time. For more information about the SSLOG format, see **Deep Dive into SSLOG**.

* Streams data to Sight Machine in near real time using:

  * **Polling: **Typically, FTX is apollingrather than areal-timedata pipeline. Each service/TX has its own independent polling rate, expressed in seconds \(can be sub-second\). You can adjust the polling rates as necessary, based on the applications/sources being polled:

    * For real-time data sources, follow the basic formula of signal theory \(AKA, sampling theorem\): use a minimum of 2x the sample rate for signals that you are trying to poll. For more detailed information about this topic, go [here](https://en.wikipedia.org/wiki/Nyquist–Shannon_sampling_theorem).

    * For archival data sources \(historians, databases, etc.\) that can handle multiple messages, polling is more about the tradeoff between latency \(i.e., how much time it takes for a packet of data to get from one designated point to another\) vs. efficiency \(i.e., moving the highest possible volume of data through the network\).

  * **Microbatching:** While basic message queuing sends each piece of data individually, FactoryTX can employ microbatching \(a specific count or time interval of messages together\). This methodology that allows for tradeoffs of latency vs. efficiency. When working with highly redundant manufacturing data, the messages can be compressed through the microbatching process and use less bandwidth and fewer resources.

  * **Store and forward:** In the store and forward data transmission method, a device receives a complete message and temporarily stores it in a buffer before forwarding it to the final destination. This is useful in locations with network connectivity issues.

* Contains a single configuration file. Typically, the version is controlled in GIT, an open-source version control system that tracks changes and stores file backups. The configuration file includes all credentials and configuration information.

* Performs basic transforms on the data using Python Pandas. \(A transform is the manipulation of data inside FactoryTX’s built-in data pipeline.\)

This guide is a field manual that provides Sight Machine partners with the basic knowledge needed to install and implement FactoryTX for the customer. You do not need to be a full-time data engineer to follow the instructions this guide.

FactoryTX is also extensible and developers can write new plugins that will allow it to connect to different data sources. For more information about plugins or assistance with the customer’s FactoryTX implementation, please contact your Sight Machine sales partner.

