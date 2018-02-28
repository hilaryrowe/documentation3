# Introduction to the AI Data Pipeline {#docs-internal-guid-d0b843f4-90f5-6854-ecbd-be45abfc36e4}

Organizing and integrating the large and varied data volumes associated with the production process is critical to realizing value from machine and manufacturing system data. Sight Machine’s AI Data Pipeline enables this by combining individual readings from sensors, data timestamps, and manufacturing system data, as well as information about parts, to develop digital twins or data models of parts, machines, facilities, defects, and downtimes. These individual data models work in unison to provide an integrated view or unified data model of the entire production process.

The AI Data Pipeline’s intuitive interface enables you to configure these sophisticated data models quickly. The AI Data Pipeline then introspects your machine and process data, suggests functions for extracting features from the data, and leverages patent pending algorithms to render models that represent your production processes.

The three main tasks required to configure data models in the Sight Machine platform are mirrored in the main tabs in the AI Data Pipeline interface:  
![](/assets/Ai Data Pipeline Main Tabs.png)

* **Raw Data: **Provides the tools for inspecting and visualizing raw data from facilities and machines, enabling you to verify and validate incoming data streams.

* **Models: **Allows you to configure individual data models that the AI Data Pipeline will use to build out the unified data model.

* **Compute:** Lets you manage the recalculation of data models generated by the AI Data Pipeline as you iterate on their definition.

## About Model Configurations

Through years of experience with global manufacturers, Sight Machine has developed a number of manufacturing-specific data models. The value of these data models is that they represent various assets, processes, and performance indicators in the production process. The models are configured to reflect the unique manufacturing process of a specific industry and customer situation. In addition, the models are extensible across both continuous and discrete manufacturing and have been deployed in nearly every industry, including: apparel, food and beverage, textile, paper, oil and gas, chemical, electronics, pharmaceutical/life-science, automotive, etc.

Sight Machine currently offers eleven manufacturing-specific data models. Of these models, five are user-configured and six are configured using patent pending artificial intelligence. They are defined as follows:

* User-configured models use the AI Data Pipeline to provide powerful customer-specific details. Examples of customer-specific details include location, shift schedule, and line arrangement.

* AI-configured models are automatically generated using artificial intelligence to classify and process incoming data. An important advantage of the AI-configured models is that they combine customer-specific information from the user-configured models with raw data. The resulting AI-configured models represent important manufacturing processes and key performance indicators \(KPIs\).

**User-Configured Models**



**NOTE: **This guide covers only Facility, Machine Type, and Machine. For more information, see [Configuring Models](/configuring-models.md).

**AI-Configured Models**



**NOTE: **This guide covers only Cycles and Downtimes. For more information, see [Configuring a Machine Type](/configuring-models/configuring-a-machine-type.md).

## Accessing the AI Data Pipeline Interface

In order to access the AI Data Pipeline interface, you will need an Admin user to assign you the Commander role.

**Admins Only - To grant users access to the AI Data Pipeline interface:**

1. For Admins, navigate to your Sight Machine URL, and then open the main menu.

2. Click **Settings**.

3. Locate the user, and then check the **Commander** box.

After the Admin has given you the correct role, you will see an AI Data Pipeline link on the Sight Machine main menu.

**To access the AI Data Pipeline interface:**

1. On the main Sight Machine menu on the right, click **AI Data Pipeline**.  
   ![](/assets/SM Main Menu AI Data Pipeline.png)

2. To return to the Sight Machine platform at any time, on the same menu, click **Manufacturing Applications**.



