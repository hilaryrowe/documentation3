## Classifying Downtime Reasons

There are three methods of creating downtimes:

* **Maximum Cycle Time: **You defined Cycle Boundaries, and downtimes are created when Cycles reach the Maximum Cycle Time.

* **In-Cycle Downtimes: You** can create one or more downtime fields that signal if a machine is up or down. This expects a binary field, and any time that it goes from 0 to 1, it creates a downtime, even if it is during a Cycle.  
  NOTE:This is typically used when cycles are very long \(i.e., multiple hours\), so that you can record the downtime without breaking up the cycle. We do not recommended that you use this feature if machines of this type have shorter cycles.

* **Downtimes During Gaps:** The AI Data Pipeline automatically creates downtimes in any gaps that exist between Cycles.

For any of these methods, you can classify a list of reasons that machines could possibly be down.

**To classify downtime reasons:**

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

6. This will add your Raw Data Code Field to the list below. Planned or Unplanned are determined based on whether the downtimes occur during a specified shift, break, or outside of a shift.  
   ![](/configuring-models/configuring-a-machine-type/Machine Type16.png)



