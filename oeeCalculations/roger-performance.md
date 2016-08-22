## **Performance Calculation**

The Performance component of OEE measures the ratio of average expected cycle time \(Ideal Cycle Time\) to average observed cycle time \(Actual Cycle Time\). Performance displays as a percentage indicating the amount of time the asset  produced units of output compared to the expected units of output over a specific time horizon \(shift, daily, weekly, or monthly\).

**Performance Formula**


$$
Performance \ = \frac{Average \ Ideal \ Cycle \ Time}{Average \ Actual \ Cycle \ Time}
$$


Performance is expressed as a percentage between 0% and 100%, with 100% being the value when an asset has operated at or above the Average Ideal Cycle Time. These two factors of performance performance are calculated as follows.

### **Ideal Cycle Time**

Ideal Cycle time is predetermined, measured in milliseconds, and can represent either:

* a fixed value for a particular asset \(Machine Type based\), or 
* a variable based on the output being created \(algorithm based\)

_**Fixed Ideal Cycle Time**_

![](/assets/Mockup_FixedIdealCycleTime.png)

_**Variable Ideal Cycle Time**_

![](/assets/Mockup_VariableIdealCycleTime.png)

**Averaging Ideal Cycle Time**

The Average Ideal Cycle Time is measured in seconds and is calculated using the accumulated values for either fixed ideal cycle time or variable ideal cycle time on a shift, day, week, and month basis \(given the configuration of the machine being queried\).

**_Fixed Ideal Cycle Time_**


$$
Average \ Ideal \ Cycle \ Time \ = \frac{(\ 15 \ Seconds \ )\ + \ (\ 15 \ Seconds \ )\ + \ (\ 15 \ Seconds \ )}{3}
$$



$$
Average \ Ideal \ Cycle \ Time \ = \ 15 \ Seconds
$$


**_Variable Ideal Cycle Time_**


$$
Average \ Ideal \ Cycle \ Time \ = \frac{(\ 30 \ Seconds \ )\ + \ (\ 15 \ Seconds \ )\ + \ (\ 60 \ Seconds \ )}{3}
$$



$$
Average \ Ideal \ Cycle \ Time \ = \ 35 \ Seconds
$$


### **Actual Cycle Time**

Unlike Ideal Cycle time, Actual Cycle Time is not predetermined and is calculated dynamically based cycle data coming from facility data streams. The Actual Cycle Time for a machine is measured in milliseconds and is calculated as Cycle End Time minus Cycle Start Time.

_**Actual Ideal Cycle Time \(Fixed Ideal Cycle Time\)**_

![](/assets/Mockup_FixedIdealCycleTime_Overlap.png)

_**Actual Ideal Cycle Time \(Variable Ideal Cycle Time\)**_

![](/assets/Mockup_VariableIdealCycleTime_Overlap.png)

**Averaging Actual Cycle Time**

The Average Actual Cycle Time is measured in seconds and is calculated using the accumulated values for cycle time on a shift, day, week, and month basis.

**_Actual Cycle Time \(with Fixed Ideal Cycle Time\)_**


$$
Average \ Actual \ Cycle \ Time \ = \frac{(\ 18 \ Seconds \ )\ + \ (\ 15 \ Seconds \ )\ + \ (\ 21 \ Seconds \ )}{3}
$$



$$
Average \ Ideal \ Cycle \ Time \ = \ 18 \ Seconds
$$


**_Actual Cycle Time \(with Variable Ideal Cycle Time\)_**


$$
Average \ Actual \ Cycle \ Time \ = \frac{(\ 30 \ Seconds \ )\ + \ (\ 20 \ Seconds \ )\ + \ (\ 70 \ Seconds \ )}{3}
$$



$$
Average \ Ideal \ Cycle \ Time \ = \ 40 \ Seconds
$$


**Idle Time**

Idle time is another factor affecting actual machine performance, which is any period of time that an asset is available for production but is not operating. By default, idle time affects the Performance Calculation and not the Availability Calculation. There is a configuration option to set idle time as attributable to unplanned downtime which would improve performance and impact the calculation for availability.

### **Performance**

Taking the two earlier examples of Fixed Ideal Cycle Time and Variable Ideal Cycle Time we can calculate Performance for Machine 1 and Machine 2 for the specified time period.


$$
Performance \ = \frac{Average \ Ideal \ Cycle \ Time}{Average \ Actual \ Cycle \ Time}
$$


_**Performance \(with Fixed Ideal Cycle Time\)**_


$$
Performance \ = \frac{15 \ Seconds}{18\ Seconds}
$$



$$
Performance \ = \ 83.33 \%
$$


_**Performance \(with Variable Ideal Cycle Time\)**_


$$
Performance \ = \frac{35 \ Seconds}{40\ Seconds}
$$



$$
Performance \ = \ 87.50 \%
$$


