# Introduction to the AI Data Pipeline {#docs-internal-guid-d0b843f4-90f5-6854-ecbd-be45abfc36e4}

Organizing and integrating the large and varied data volumes associated with the production process is critical to realizing value from machine and manufacturing system data. Sight Machine’s AI Data Pipeline enables this by combining individual readings from sensors, data timestamps, and manufacturing system data, as well as information about parts, to develop digital twins or data models of parts, machines, facilities, defects, and downtimes. These individual data models work in unison to provide an integrated view or unified data model of the entire production process.

The AI Data Pipeline’s intuitive interface enables users to quickly configure these sophisticated data models. The AI Data Pipeline then introspects your machine and process data, suggests functions for extracting features from the data, and leverages patent pending algorithms to render models that represent your production processes.

The three main tasks required to create data models in the Sight Machine platform are mirrored in the main tabs in the AI Data Pipeline interface:

* **Raw Data: **Provides the tools for inspecting and visualizing raw data from facilities and machines.

* **Models: **Create and manage explicit-defined models, which will generate data-defined models such as cycles and downtimes.

* **Compute:** Allows you to manage the recalculation of data-defined models as you iterate on their definition.

## Model Configuration

Through years of experience with global manufacturers, Sight Machine has developed a series of predefined models that represent various assets, processes, and performance indicators in the production process. These models are extensible across both continuous and discrete manufacturing and have been deployed in nearly every industry including: apparel, food and beverage, textile, paper, oil and gas, chemical, electronics, pharmaceutical/life-science, automotive, and industrial.

The AI Data Pipeline lets you configure models for a specific industry and customer situation. Configuration happens in two ways:

* User configuration of metadata such as location, shift schedule, and line arrangement

* AI Data Pipeline configuration, which uses artificial intelligence to classify and process incoming data to create the models

Models that require user configuration include:

* **Facility: **Defining the location, time zone, and shift schedule unique to each facility enables the AI Data Pipeline to determine when machines should be running build data models for each facility, and relate those data models to key performance indicators \(KPIs\).

* **Machine Type: **Defining cycle boundaries, downtimes, and data features for each machine type allows the AI Data Pipeline can automatically generate a data pipeline unique to each customer’s manufacturing process. These cycle and downtime records are foundational data elements used to blend, join, and integrate data in near real time across the manufacturing enterprise.

* **Machine: **Assigning a Machine Type and Facility location to each machine enables the AI Data Pipeline to automatically render a data model for each machine.

* **Line: **Defining the layout and sequence of a series of machines involved in the production process allows for functionality like bottleneck detection, overall process OEE, and traceability.

* **Part Type: **Defining the category for part data enables the creation of models that can track and trace products, parts, and components as they travel through the production process.

**NOTE: **This guide covers only Facility, Machine, and Machine Type. For more information, see [Configuring Models](/configuring-models.md).

The Sight Machine platform leverages these user configured models and raw data from machines sensors to automatically generate additional models representing manufacturing processes and key performance indicators. These models include:

* **Cycles:** Represent discrete periods of machine time. During each cycle, a machine involved in a discrete process completes all of its operations on one piece, product, patient, file, etc. In continuous manufacturing, a cycle typically represents a set period of time. These cycles and their associated timestamps play a critical role in establishing relationships between the various data models, enabling rich insights into the relationships between machines, processes, and KPIs.

* **Downtimes: **Describe instances and durations of non-productive, idle, or stop time for a machine.

* **Defects: **Represent non-conformant production output, in both single part and batch.

* **Batches: **Present raw material and output grouping and summary data, which can be associated with cycles and parts.

* **Parts: **Show transaction logs and attributes of serialized information across machines associated with a specific part enabled by the cycle model.

* **OEE:** Represent asset availability, performance, and quality, which together measure Overall Equipment Effectiveness \(OEE\). The models constituting these key performance indicators can be generated at the machine, shift, line, facility, and enterprise level.

**NOTE: **This guide covers only Cycles and Downtimes. For more information, see [Configuring Models](/configuring-models.md).

## Accessing the AI Data Pipeline Interface

In order to access the AI Data Pipeline interface, you will need an Admin user to assign you the Commander role.

**Admins Only - To grant users access to the AI Data Pipeline interface:**

1. For Admins, navigate to your Sight Machine URL, and then open the main menu.

2. Click **Settings**.

3. Locate the user, and then check the **Commander** box.

After the Admin has given you the correct role, you will see an AI Data Pipeline link in the Sight Machine main menu.

**To access the AI Data Pipeline interface:**

1. On the main Sight Machine menu on the right, click **AI Data Pipeline**.  
   ![](/assets/SM Main Menu AI Data Pipeline.png)

2. To return to the Sight Machine platform at any time, on the menu, click **Manufacturing Applications**.



