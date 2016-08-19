## **Availability Calculation**

The Availability component of OEE measures the ratio of expected operation time \(Total Expected Cycle Seconds\) to observed operation time \(Total Cycle Seconds\). Availability displays as a percentage indicating the amount of time the asset was actually operational compared to its planned operating time over a specific time horizon \(shift, daily, weekly, or monthly\).

**Availability Formula**

![](/assets/Screen Shot 2016-08-15 at 4.53.25 PM.png)

Availability is expressed as a percentage between 0% and 100%, with 100% being the value when an asset has operated for exactly the expected run time. These two factors of availability are derived as follows.

### **Total Expected Cycle Seconds**

Expected Cycle Seconds is dependant on either a fixed time for a cycle to complete \(Ideal Cycle Time\) or based on a recipe for output created from the machine \(variable output\). Total Expected Cycle Seconds is the aggregation of individual ideal cycle times and can be thought of more generally as the total expected uptime of an asset less any periods of time the asset is not expected to be running \(_Planned Downtime_\).

![](/assets/Mockup_PlannedBreak_081216.png)

![](/assets/Screen Shot 2016-08-15 at 5.17.33 PM.png)

### **Total Cycle Seconds**

Cycle Seconds is the observed Cycle Time calculated as Cycle End Time - Cycle Start Time. This can be relatively static or highly variable depending on the specific machine and its expected operation. Total Cycle Seconds is the aggregation of individual Cycle Seconds and can be thought of as the total expected cycle seconds of an asset less any periods of time the asset is unexpectedly not running \(_Unplanned Downtime_\).

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

![](/assets/Screen Shot 2016-08-15 at 5.37.35 PM.png)

### **Availability**

Taking the earlier calculations for Total Expected Cycle Seconds and Total Cycle Seconds we can calculate Availabilty for this machine for the specified time period.

![](/assets/Screen Shot 2016-08-15 at 4.53.25 PM.png)

![](/assets/Screen Shot 2016-08-15 at 5.41.17 PM.png)

