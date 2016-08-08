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
* **Operational Availability. **

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

Using the subcomponents of Availability \(Available Time and Scheduled Time\) we can add additional detail to how this is computed.

**Scheduled Time**

Scheduled time is a predefined operating schedule specified for a particular asset. This can be expressed more generally as the  total expected run time less any periods of time where the asset is not expected to be running \(planned downtime\).

![](/assets/Screen Shot 2016-08-08 at 12.24.21 PM.png)

**Total Expected Run Time**

Based on the preferences of your business, we can express Total Expected Run Time as either the aggregate time of your shift schedules or a absolute amount of time.

Configuration Options:

* Shift Aggregation[^2]
* Absolute Time \(mins\)
* Offshift?

_Shift Aggregation_

![](/assets/Screen Shot 2016-08-08 at 2.08.51 PM.png)

_Absolute Time_





Examples of Planned Downtime Reasons:

* Break Periods
* Preventative Machine Maintenance
* Holidays


[^1]: file:\/\/\/Users\/Roger\_SM\/Downloads\/OEE\_Availability\_Definition.pdf

[^2]: Defined in factory.yaml configuration files as shift\_events \(starttime, endtime, breaks\)

