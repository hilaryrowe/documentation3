## Viewing and Establishing Rules for the Data Fields

After you set up cycle boundaries and create downtime reasons, you can validate the data fields with which you are working.

**To view and establish rules for the data fields:**

1. On the left, click **Data Fields**.  
   ![](/configuring-models/configuring-a-machine-type/Machine Type17.png)

2. On the Data Fields screen, check the list of all the raw data fields and their associated data streams. If there are any fields missing:

   * Check that the raw data tools include all of the fields. If not, go back to your FactoryTX configuration

   * If the raw data looks good, contact Sight Machine for assistance to determine why fields are missing.

3. In the Type and Function columns, establish rules for calculating Cycle Data Fields based on Raw Fields.  
   For example, setting the Type to **Average \(Continuous\)** applies an Average function to the Raw Field to produce a discrete value for the Cycle Data Field.  
   ![](/configuring-models/configuring-a-machine-type/Machine Type19.png)  
   Alternately, setting the Type to **Regular Continuous** applies multiple functions to the Raw Field to product multiple Cycle Data Fields.  
   ![](/configuring-models/configuring-a-machine-type/Machine Type20.png)  
   The following is a list of possible values for the Type column:  
   ![](/configuring-models/configuring-a-machine-type/Data Fields Type Column Table.png)

4. In the Data Fields column, you can click and rename any value. This determines how the fields appear in Manufacturing Applications.



