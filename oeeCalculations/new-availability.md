## **Availability Calculation**

The Availability component of OEE measures the ratio of expected operation time \(Expected Cycle Seconds\) to observed operation time \(Cycle Seconds\). This calculation shows the resulting percentage that the asset \(machine, line, or facility\) is actually operational compared to the planned operating time of the asset over a specific time horizon \(shift, daily, weekly, or monthly\).

**Availability Formula**


$$
Availability \ = \frac{Total \ Cycle \ Seconds}{Total \ Expected \ Cycle \ Seconds}
$$


Availability is a percentage between 0% and 100%, with 100% being the value when an asset is operating for exactly the expected run time. Using the components of Availability \(Expected Cycle Seconds and Cycle Seconds\) we can further explain how this is computed.

### **Expected Cycle Seconds**

Expected Cycle Seconds is dependant on either a fixed time for a cycle to complete \(Ideal Cycle Time\) or based on a recipe for output created from the machine \(variable output\). Total Expected Cycle Seconds is the aggregation of individual ideal cycle times and can be thought of more generally as the total expected uptime of an asset less any periods of time the asset is not expected to be running \(_Planned Downtime_\).

![](/assets/Mockup_PlannedBreak_081216.png)


$$
Total \ Expected \ Cycle \ Seconds \ = \ 16,200 \ Seconds \ + \ 16,200 \ Seconds \ + \ 9,000 \ Seconds \
$$



$$
Total \ Expected \ Cycle \ Seconds \ = \ 41,400 \ Seconds \
$$


### **Cycle Seconds**

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


$$
Total \ Cycle \ Seconds \ = \ 6,300 \ Seconds \ + \ 6,300 \ Seconds \ + \ 9,450 \ Seconds \ + \ 3,150 \ Seconds \ + \ 1,350 \ Seconds \ + \ 4,050 \ Seconds \
$$



$$
\ Total \ Cycle \ Seconds \ = \ 30,600 \ Seconds \
$$


### **Availability**

Taking the earlier calculations for Total Expected Cycle Seconds and Total Cycle Seconds we can calculate Availabilty for this machine for the specified time period.


$$
Availability \ = \frac{Total \ Cycle \ Seconds}{Total \ Expected \ Cycle \ Seconds}
$$



$$
Availability \ = \frac{30,600 \ Seconds}{41,400 \ Seconds}
$$



$$
Availability \ = \ 73.91 \%
$$


