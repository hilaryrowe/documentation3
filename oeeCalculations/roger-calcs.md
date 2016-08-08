# Configuration Tools

Options:

* Cycle Configuration

  * Ideal Cycle Time
  * Max Cycle Time

* Output

  * Piece per pair


Availability = “a percentage measure of the degree to which machinery and equipment is in an operable and committable state at the point in time when it is needed.”[^1]

Classifications to consider:

* Instantaneous \(or Point\) Availability.
* Average Up-Time Availability \(or Mean Availability\).
* Steady State Availability.
* Inherent Availability.
* Achieved Availability.

**Operational Availability. **

* $$A0 = Uptime / Operating Cycle$$

* Logistics Time

* Ready Time

* Waiting\/Administrative Downtime

* Preventive Maintence Downtime

* Corrective Maintence Downtime


![](/assets/Screen Shot 2016-08-06 at 12.54.48 PM.png)

## **Availability Calculation**

The Availability component of OEE measures the ratio of scheduled operation time \(Scheduled Time\) to observed operation time \(Available Time\). This calculation shows the resulting percentage that the asset \(machine, line, or facility\) is actually operational compared to the planned operating time of the asset over a specific time horizon \(shift, daily, weekly, or monthly\).

**Availability Formula**

![](/assets/Screen Shot 2016-08-08 at 12.03.31 PM.png)

Using the components of Availability \(Available Time and Scheduled Time\) we can further explain how this is computed.

### **Scheduled Time**

Scheduled time is a predefined operating schedule for a particular asset. This can be expressed more generally as the _Total Expected Run Time_ less any periods of time when the asset is not expected to be running \(_Planned Downtime_\).

![](/assets/Screen Shot 2016-08-08 at 12.24.21 PM.png)

**Total Expected Run Time**

Based on the specific requirements of your business, we can calculate _Total Expected Run Time_ as either the aggregate time of your shift schedules or a absolute amount of time.

Configuration Options:

* Shift Aggregation[^2]
* Absolute Time \(minutes\)

_**Shift Aggregation**_

![](/assets/Screen Shot 2016-08-08 at 2.08.51 PM.png)

Using this configuration the _Total Expected Run Time_ for the asset is equal to the sum of all the specified shifts.

_**Absolute Time**_

![](/assets/Screen Shot 2016-08-08 at 3.03.15 PM.png)

You can also configure the _Total Expected Run Time_ for an asset to a specific number of minutes per day of operation.

**Planned Downtime**

The other half of the formula is the pre-planned time that you expect the asset to not be operational. This can happen for a number of different reasons including the below:

* Break Periods
* Preventative Machine Maintenance
* Schedule Repairs
* Equipment Modifications
* Set Up
* Holidays

In a similar manner as _Total Expected Run Time_, _Planned Downtime_ is the sum of all of the individual occurances for the specified period of time \(Shift, Day, Week, Month\). This is currently configurable only by the data engineering team, however future releases will allow you to add Planned Downtime events directly from the application.
![](/assets/Screen Shot 2016-08-08 at 3.37.20 PM.png)

![](/assets/Screen Shot 2016-08-08 at 3.38.31 PM.png)

**Total Scheduled Time Calculation**

Combining _Total Expected Run Time _with _Planned Downtime_ we arrive at **Scheduled Time **\(in this example using Shift Aggregation\).

![](/assets/Screen Shot 2016-08-08 at 3.47.09 PM.png) 

![](/assets/Screen Shot 2016-08-08 at 3.48.43 PM.png)



[^1]: file:\/\/\/Users\/Roger\_SM\/Downloads\/OEE\_Availability\_Definition.pdf

[^2]: Defined in factory.yaml configuration files as shift\_events \(starttime, endtime, breaks\)

