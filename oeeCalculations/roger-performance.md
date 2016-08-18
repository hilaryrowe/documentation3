## **Performance Calculation**

The Performance component of OEE measures the ratio of average expected cycle time \(Ideal Cycle Time\) to average observed cycle time \(Actual Cycle Time\). This calculation shows the resulting percentage that the asset \(machine, line, or facility\) is  producing units of output compared to the expected units of output for the asset over a specific time horizon \(shift, daily, weekly, or monthly\).

**Performance Formula**

$$
Performance \ = \frac{Average \ Ideal \ Cycle \ Time}{Average \ Actual \ Cycle \ Time}
$$


Performance is a percentage between 0% and 100% with 100% being the value when an asset is operating at exactly the ideal cycle time. Using the components of Performance \(Ideal Cycle Time and Actual Cycle Time\) we can further explain how this is computed.

### **Ideal Cycle Time**

Ideal Cycle time is fixed for a particular asset \(Machine Type based\) or variable based on the output being created \(Recipe based\) in milliseconds.

![](/assets/Screen Shot 2016-08-15 at 1.38.27 PM.png)

**Averaging Ideal Cycle Time**

The average for Ideal Cycle Time is calculated using the accumulated values for either fixed ideal cycle time or variable ideal cycle time on a shift, day, week, and month basis given the configuration of the machine being queried and stored as seconds.

**_Fixed Ideal Cycle Time_**

![](/assets/Screen Shot 2016-08-15 at 1.32.41 PM.png)

**_Variable Ideal Cycle Time_**

![](/assets/Screen Shot 2016-08-15 at 1.37.33 PM.png)

### **Actual Cycle Time**

Unlike Ideal Cycle time, Actual Cycle Time is not predetermined and is calculated dynamically based cycle data coming from facility data streams. The Actual Cycle Time for a machine is calculated as Cycle End Time - Cycle Start Time and stored in milliseconds.

![](/assets/Screen Shot 2016-08-15 at 2.19.11 PM.png)

**Averaging Actual Cycle Time**

The average for Actual Cycle Time is calculated using the accumulated values for cycle time on a shift, day, week, and month basis and stored as seconds.

**_Actual Cycle Time \(with Fixed Ideal Cycle Time\)_**

![](/assets/Screen Shot 2016-08-15 at 2.14.16 PM.png)

**_Actual Cycle Time \(with Variable Ideal Cycle Time\)_**

![](/assets/Screen Shot 2016-08-15 at 2.14.24 PM.png)

If Idle time for a machine is not seperately broken out then it will be included in the calculation for Actual Cycle Time which would decrease the observed value for Performance. Downtimes for a machine do not impact the Availabilty calculation.

### **Performance**

Taking the two earlier examples of Fixed Ideal Cycle Time and Variable Ideal Cycle Time we can calculate Performance for these two different machines for the specified time period.

![](/assets/Screen Shot 2016-08-15 at 1.40.50 PM.png)

_**Performance \(with Fixed Ideal Cycle Time\)**_

![](/assets/Screen Shot 2016-08-15 at 2.14.31 PM.png)

_**Performance \(with Variable Ideal Cycle Time\)**_

![](/assets/Screen Shot 2016-08-15 at 2.14.42 PM.png)

