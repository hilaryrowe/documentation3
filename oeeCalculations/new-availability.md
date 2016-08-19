## **Availability Calculation**

The Availability component of OEE measures the ratio of expected operation time \(Total Expected Cycle Seconds\) to observed operation time \(Total Cycle Seconds\). Availability displays as a percentage indicating the amount of time the asset was actually operational compared to its planned operating time over a specific time horizon \(shift, daily, weekly, or monthly\).

**Availability Formula**

![](/assets/Screen Shot 2016-08-15 at 4.53.25 PM.png)

Availability is expressed as a percentage between 0% and 100%, with 100% being the value when an asset has operated for exactly the expected run time. These two factors of availability are derived as follows.

### **Total Expected Cycle Seconds**

Total Expected Cycle Seconds can represent either:

* an ideal cycle time, which is a fixed time for a cycle to complete, or
* variable output, which is based on an algorithm for output created from the machine 

Total Expected Cycle Seconds is the sum of the asset's individual ideal cycle times. It is an asset's total expected uptime minus any planned downtime.
![](/assets/Mockup_PlannedBreak_081216.png)

![](/assets/Screen Shot 2016-08-15 at 5.17.33 PM.png)

### **Total Cycle Seconds**

Total Cycle Seconds is the observed Total Cycle Time calculated as Cycle End Time minus Cycle Start Time. This can be relatively static or highly variable depending on the specific machine and its expected operation. Total Cycle Seconds is the sum of individual cycle seconds. It is an asset's total observed cycle seconds minus any unplanned down time.

**Unplanned Downtime**

Unplanned Downtime is any period of time that an asset is not available for production when it was expected to be operating. This can happen for many different reasons including:

* Machine Breakdown
* Unplanned Repairs
* Equipment Modifications
* Operator Error

Sight Machine creates Downtime objects for one of two events:

1. A Machine's observed Cycle Time exceeds the Max Cycle Time specified in the Machine Type configuration
2. An explicit downtime rule is defined for the Machine based on actual sensor values \(e.g. Alarm duration &gt; 10 seconds\)

These events can be automatically classified with Reason Codes based on rules provided to Data Engineering or through manual classification from the Sight Machine Data tab. 

In the example below, three seperate Unplanned Downtime events related to Machine Breakdown and Operator Error are illustrated along with the resulting Unplanned Downtime calculation.

![](/assets/Mockup_UnplannedDown_081216.png)

![](/assets/Screen Shot 2016-08-15 at 5.37.35 PM.png)

### **Availability**

Using the Availability formula, and the Total Expected Cycle Seconds and Total Cycle Seconds in the example above, the machine's availability for the specified time period is calculated:

![](/assets/Screen Shot 2016-08-15 at 4.53.25 PM.png)

![](/assets/Screen Shot 2016-08-15 at 5.41.17 PM.png)

