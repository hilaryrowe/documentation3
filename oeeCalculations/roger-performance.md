## **Performance Calculation**

The Performance component of OEE measures the ratio of average expected cycle time \(Ideal Cycle Time\) to average observed cycle time \(Cycle Time\). This calculation shows the resulting percentage that the asset \(machine, line, or facility\) is actually producing units of output compared to the expected units of output for the asset over a specific time horizon \(shift, daily, weekly, or monthly\).

**Performance Formula**

![](/assets/Screen Shot 2016-08-15 at 11.41.41 AM.png)

Performance is a percentage between 0% and 100% with 100% being the value when an asset is operating at exactly the ideal cycle time. Using the components of Performance \(ideal Cycle Time and Cycle Time\) we can further explain how this is computed.

### **Ideal Cycle Time**

Ideal Cycle time is fixed for a particular asset \(Machine Type based\) or variable based on the output being created \(Recipe based\) in milliseconds.

![](/assets/Screen Shot 2016-08-15 at 1.38.27 PM.png)

**Averaging Ideal Cycle Time**

The average for Ideal Cycle Time is calculated using the accumulated values for either fixed ideal cycle time or variable ideal cycle time on a shift, day, week, and month basis given the configuration of the machine being queried.

_**Fixed Ideal Cycle Time**_

![](/assets/Screen Shot 2016-08-15 at 1.32.41 PM.png)

_**Variable Ideal Cycle Time**_

![](/assets/Screen Shot 2016-08-15 at 1.37.33 PM.png)

### **Cycle Time**

Ideal Cycle time is fixed for a particular asset \(Machine Type based\) or variable based on the output being created \(Recipe based\) in milliseconds.

\*\*Affect of idle time in average cycle time

