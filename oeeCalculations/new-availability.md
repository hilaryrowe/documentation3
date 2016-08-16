## **Availability Calculation**

The Availability component of OEE measures the ratio of expected operation time \(Expected Cycle Seconds\) to observed operation time \(Cycle Seconds\). This calculation shows the resulting percentage that the asset \(machine, line, or facility\) is actually operational compared to the planned operating time of the asset over a specific time horizon \(shift, daily, weekly, or monthly\).

**Availability Formula**

![](/assets/Screen Shot 2016-08-15 at 4.53.25 PM.png)

Availability is a percentage between 0% and 100%, with 100% being the value when an asset is operating for exactly the expected run time. Using the components of Availability \(Expected Cycle Seconds and Cycle Seconds\) we can further explain how this is computed.

### **Expected Cycle Seconds**

Expected Cycle Seconds is dependant on either a fixed time for a cycle to complete \(Ideal Cycle Time\) or based on a recipe for output created from the machine \(variable output\). Total Expected Cycle Seconds is the aggregation of individual ideal cycle times and can be thought of more generally as the total expected uptime of an asset less any periods of time the asset is not expected to be running \(_Planned Downtime_\).

![](/assets/Mockup_PlannedBreak_081216.png)

![](/assets/Screen Shot 2016-08-15 at 5.17.33 PM.png)

### **Cycle Seconds**

Cycle Seconds is the actual dependant on either a fixed time for a cycle to complete \(Ideal Cycle Time\) or based on a recipe for output created from the machine \(variable output\). Total Expected Cycle Seconds is the aggregation of individual ideal cycle times and can be thought of more generally as the total expected uptime of an asset less any periods of time the asset is not expected to be running \(_Planned Downtime_\).



**Unplanned Downtime**

Unplanned Downtime is a period of time that an asset is not available for production that it was expected to be operating. This can happen for many different reasons including the below:

* Machine Breakdown
* Unplanned Repairs
* Equipment Modifications
* Operator Error

Sight Machine creates Downtime objects for one of two reasons:

1. A Machine's observed Cycle Time exceeds the Max Cycle Time specified in the Machine Type configuration
2. An explicit downtime rule is defined for the Machine based on actual sensor values \(e.g. Alarm duration &gt; 10 seconds\)

These events can be automatically classified with Reason Codes based on rules provided to Data Engineering or through manual classifcation from the Data Tab in Sight Machine. Assuming there are three seperate Unplanned Downtime events related to Machine Breakdown and Operator Error we can calculate Unplanned Downtime as the below.

![](/assets/Mockup_UnplannedDown_081216.png)

