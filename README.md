# Introduction to the AI Data Pipeline {#docs-internal-guid-d0b843f4-90f5-6854-ecbd-be45abfc36e4}

Digitizing a manufacturing operation and leveraging data at scale are critical to discovering actionable insights and realizing value.

In order to create a manufacturing model of a company’s production \(by automatically combining process and quality data from every plant and supplier\), the following elements are required:

* Facility and machine configurations

* Data warehousing processes

* Descriptive statistics

* Analytic models

* Data visualization

The AI Data Pipeline is Sight Machine's intuitive data contextualization interface that helps you build data manufacturing models. The three main tasks required to create data models in the Sight Machine platform are mirrored in the main tabs in the AI Data Pipeline interface:

* **Raw Data: **Provides the tools for inspecting and visualizing raw data from facilities and machines.

* **Models: **Create and manage explicit-defined models, which will generate data-defined models such as cycles and downtimes.

* **Compute:** Allows you to recalculate data-defined models.

## Explicit and Hybrid Models

Some models are representations of equipment and processes \(made up of a set of characteristics that mimic the real world\) and must be explicitly entered into the Sight Machine platform. These include external information not available from the data streams themselves, such as work shift schedules, factory locations and time zones, line topographies, etc. These models include:

* **Facility:** An industrial site, usually consisting of buildings and machinery, or more commonly a complex having several buildings, where workers manufacture goods or operate machines processing one product into another.

* **Machine: **A piece of equipment with moving parts that performs tasks when it is given power.

* **Machine Type: **Machines are the core of any manufacturing operation. They come in many shapes and sizes, produce large volumes of data, and have a wide variety of inputs and outputs. However, manufacturers often have multiple machines of the same kind across their operations. Sight Machine understands this is a common occurrence, and as result, groups machines into Machine Types within the configuration.

* **Line: **A set of sequential operations established in a facility in which materials are put through a process to produce an end-product. An instance of a Line Type.

* **Line Type: **A specified category of Lines to analyze.

* **Part Type: **Since Parts can be processed by more than one machine over a long date range, Part Type specifies a category of Parts to analyze.

**NOTE: **This guide covers only Facility, Machine, and Machine Type. For more information, see **ADD LINK**.

## Fundamental Data-Driven Models

The Sight Machine platform also pulls raw data from machines and uses heuristics and classifiers to model that data into discrete units. Data-defined models use the explicit models as the instructions. These data-driven models include:

* **Cycles: **Discrete transaction logs of machine time. During each cycle, a machine completes all of its operations on one piece, product, patient, file, etc. Also referred to as “machine cycles.”

* **Downtimes: **Events of non-productive idle and stop time within machine time.

* **Defects: **Non-conformant production output, in both single and batch.

* **Batches: **Raw material and output grouping and summary data, which can be associated with cycles and parts.

* **Parts:** Transaction logs of serialized information across machines \(explicit or synthesized\), and a union of attributes.

**NOTE: **This guide covers only Cycles and Downtimes. For more information, see **ADD LINK**.

## Accessing the AI Data Pipeline Interface

In order to access the AI Data Pipeline interface, you will need an Admin user to assign you the Commander role.

**Admins Only - To grant users access to the AI Data Pipeline interface:**

1. For Admins, navigate to your Sight Machine URL, and then open the main menu.

2. Click **Settings**.

3. Locate the user, and then check the **Commander** box.

After the Admin has given you the correct role, you will see an AI Data Pipeline link in the Sight Machine main menu.

**To access the AI Data Pipeline interface:**

1. On the main Sight Machine menu on the right, click **AI Data Pipeline**.  

2. To return to the Sight Machine platform at any time, on the menu, click **Manufacturing Applications**.



