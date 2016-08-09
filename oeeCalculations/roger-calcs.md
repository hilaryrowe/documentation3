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

**_Shift Aggregation_**

![](/assets/Screen Shot 2016-08-08 at 2.08.51 PM.png)

Using this configuration the _Total Expected Run Time_ for the asset is equal to the sum of all the specified shifts.

**_Absolute Time_**

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

**Scheduled Time Calculation**

Combining _Total Expected Run Time \_with \_Planned Downtime_ we arrive at **Scheduled Time **\(in this example using Shift Aggregation\).

![](/assets/Screen Shot 2016-08-08 at 3.47.09 PM.png)

![](/assets/Screen Shot 2016-08-08 at 3.48.43 PM.png)

### **Available Time**

Unlike Scheduled Time, Available Time is dependant on events that cannot be predetermined. It is calculated as the difference between Scheduled Time and Unplanned Downtime.

![](/assets/Screen Shot 2016-08-08 at 5.05.20 PM.png)

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

![](/assets/Screen Shot 2016-08-08 at 4.00.33 PM.png)

Combining Unplanned Downtime with Scheduled Time we can cacluate the Available Time for the asset over the defined period of time \(shift, day, week, month\).

![](/assets/Screen Shot 2016-08-08 at 5.08.09 PM.png)

asdf

To calculate Available Time you sum all of the

Scheduled time is a predefined operating schedule for a particular asset. This can be expressed more generally as the _Total Expected Run Time_ less any periods of time when the asset is not expected to be running \(_Planned Downtime_\).

[^1]: file:\/\/\/Users\/Roger\_SM\/Downloads\/OEE\_Availability\_Definition.pdf

[^2]: Defined in factory.yaml configuration files as shift\_events \(starttime, endtime, breaks\)

