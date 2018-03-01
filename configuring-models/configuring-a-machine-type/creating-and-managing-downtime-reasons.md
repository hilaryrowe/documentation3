## Creating and Managing Downtime Reasons

Regardless of how a downtime is generated, you can classify it based on a list of downtime reasons.

**To create and manage downtime reasons:**

1. On the left, click **Downtime Reasons**.  
   ![](/configuring-models/configuring-a-machine-type/Machine Type12.png)

2. On the Downtime Reasons screen, under Downtime Fields, type a name that matches a field in the raw data that signals if the machine is up or down. For example, OUTS.  
   **NOTE: **This field is optional. It is used for Machine Types with very long cycles. You can provide a Boolean raw data field, and when it goes to TRUE, a downtime will be created during the cycle, without breaking the cycle in two.  
   ![](/configuring-models/configuring-a-machine-type/Machine Type13.png)

3. Under Raw Data Code Field, type a field from the raw data that contains downtime codes. For example: ALARMS.  
   ![](/configuring-models/configuring-a-machine-type/Machine Type14.png)

4. Click the plus \(+\) button to map those codes to custom downtime reasons.

5. In the Add a Downtime Reason window, do the following, and then click **Apply**:

   * Type a name for the reason.

   * Type the raw data code.

   * In the Type drop-down list, select **Planned** or **Unplanned**.

   * Type an optional description.  
     For example, you may know that a certain machine returns the error code 0111 for a parts issue.  
     ![](/configuring-models/configuring-a-machine-type/Machine Type15.png)

6. This will add your Raw Data Code Field to the list below. Planned or Unplanned are determined based on whether the downtimes occur during a specified shift or break, or outside of a shift.  
   ![](/configuring-models/configuring-a-machine-type/Machine Type16.png)



