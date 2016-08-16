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

Cycle Seconds is dependant on either a fixed time for a cycle to complete \(Ideal Cycle Time\) or based on a recipe for output created from the machine \(variable output\). Total Expected Cycle Seconds is the aggregation of individual ideal cycle times and can be thought of more generally as the total expected uptime of an asset less any periods of time the asset is not expected to be running \(_Planned Downtime_\).

![](/assets/Mockup_UnplannedDown_081216.png)

