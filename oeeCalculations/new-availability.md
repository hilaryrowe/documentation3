## **Availability Calculation**

The Availability component of OEE measures the ratio of scheduled operation time \(Scheduled Time\) to observed operation time \(Available Time\). This calculation shows the resulting percentage that the asset \(machine, line, or facility\) is actually operational compared to the planned operating time of the asset over a specific time horizon \(shift, daily, weekly, or monthly\).

**Availability Formula**


$$
Availability \ = \frac{Total \ Available \ Time}{Total \ Scheduled \ Time}
$$


Availability is expressed as a percentage between 0% and 100%, with 100% being the value when an asset has operated for exactly the expected run time. These two factors of availability are derived as follows.

### **Total Scheduled Time**

Scheduled time is a predefined operating schedule for a particular asset. This can be expressed more generally as the _Total Expected Run Time_ less any periods of time when the asset is not expected to be running \(_Planned Downtime_\).

**Total Expected Run Time**

This is the total expected operating time for the asset based on its associated shift schedule. For this example, lets assume a specific machine is expected to operate on three seperate shifts for a total of 13 hours per day.


$$
Total \ Expected \ Run \ Time \ = \ 5 \ hours \ + \ 5 \ hours \ + \ 3 \ hours \ = \ 13 \ hours \
$$


**Planned Downtime** The other half of the formula is the pre-planned time that you expect the asset to not be operational. This can happen for a number of different reasons including the below:

* Break Periods
* Preventative Machine Maintenance
* Schedule Repairs
* Equipment Modifications
* Set Up
* Holidays

In a similar manner as _Total Expected Run Time_, _Planned Downtime_ is the sum of all of the individual occurrences for the specified period of time \(Shift, Day, Week, Month\).

This is currently configurable only by the data engineering team, however future releases will allow you to add Planned Downtime events directly from the application.

**Scheduled Time Calculation**

Combining _Total Expected Run Time_ with _Planned Downtime_ we arrive at Scheduled Time.

![](/assets/Mockup_PlannedBreak_081216.png)


$$
Total \ Scheduled \ Time \ = \ 5 \ hours \ - \ .5 \ hours \ + \ 5 \ hours \ - \ .5 \ hours \ + \ 3 \ hours \ - \ .5 \ hours \ = \ 11.5 \ hours \
$$


### **Total Available Time**

Unlike Total Scheduled Time, Total Available Time is dependant on events that cannot be predetermined. It is calculated as the difference between Total Scheduled Time and Unplanned Downtime.

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
Total \ Available \ Time \ = \ Total \ Scheduled \ Time \ - \ Unplanned \ Downtime \\ = \ 11.5 \ hours \ - \ 1 \ hour \ - \ 1 \ hour \ - \ 1 \ hour \ = \ 8.5 \ hours
$$


### **Availability**

Using the Availability formula, and the Total Scheduled Time and Total Available calculations created in the examples above, the machine's availability for the specified time period is calculated:

$$
Availability \ = \frac{Total \ Available \ Time}{Total \ Scheduled \ Time}
$$

$$
Availability \ = \frac{8.5 \ hours}{11.5 \ hours}
$$

$$
Availability \ = \ 73.91 \%
$$