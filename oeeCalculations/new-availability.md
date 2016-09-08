## **Availability Calculation**

The Availability component of OEE measures the ratio of scheduled operation time \(Scheduled Time\) to observed operation time \(Available Time\). This calculation shows the resulting percentage that the asset \(machine, line, or facility\) is actually operational compared to the planned operating time of the asset over a specific time horizon \(shift, daily, weekly, or monthly\).


**Availability Formula**


$$
Availability \ = \frac{Total \ Cycle \ Seconds}{Total \ Expected \ Cycle \ Seconds}
$$


Availability is expressed as a percentage between 0% and 100%, with 100% being the value when an asset has operated for exactly the expected run time. These two factors of availability are derived as follows.

### **Total Expected Cycle Seconds**

Total Expected Cycle Seconds can represent either:

* an ideal cycle time, which is a fixed time for a cycle to complete, or
* variable output, which is based on an algorithm for output created from the machine 

Total Expected Cycle Seconds is the sum of the asset's individual ideal cycle times. It is an asset's total expected uptime minus any planned downtime.
![](/assets/Mockup_PlannedBreak_081216.png)


$$
Total \ Expected \ Cycle \ Seconds \ = \ 16,200 \ Seconds \ + \ 16,200 \ Seconds \ + \ 9,000 \ Seconds \
$$



$$
Total \ Expected \ Cycle \ Seconds \ = \ 41,400 \ Seconds \
$$


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

**Idle Time**

Idle time is another factor affecting operating schedules. This is any period of time that an asset is available for production but is not operating. This can happen for many different reasons including:

* Lack of materials
* Waiting for personnel
* Delayed instructions

By default, Idle time impacts uptime which affects the Performance Calculation and not the Availability Calculation.

In the example below, three seperate Unplanned Downtime events related to Machine Breakdown and Operator Error are illustrated along with the resulting Unplanned Downtime calculation.

![](/assets/Mockup_UnplannedDowntime.png)


$$
Total \ Cycle \ Seconds \ = \ 6,300 \ Seconds \ + \ 6,300 \ Seconds \ + \ 9,450 \ Seconds \\ + \ 3,150 \ Seconds \ + \ 1,350 \ Seconds \ + \ 4,050 \ Seconds \
$$



$$
\ Total \ Cycle \ Seconds \ = \ 30,600 \ Seconds \
$$


### **Availability**

Using the Availability formula, and the Total Expected Cycle Seconds and Total Cycle Seconds in the example above, the machine's availability for the specified time period is calculated:


$$
Availability \ = \frac{Total \ Cycle \ Seconds}{Total \ Expected \ Cycle \ Seconds}
$$



$$
Availability \ = \frac{30,600 \ Seconds}{41,400 \ Seconds}
$$



$$
Availability \ = \ 73.91 \%
$$


