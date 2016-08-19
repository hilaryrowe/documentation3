## **Performance Calculation**

The Performance component of OEE measures the ratio of average expected cycle time \(Ideal Cycle Time\) to average observed cycle time \(Actual Cycle Time\). Performance displays as a percentage indicating the amount of time the asset  produced units of output compared to the expected units of output over a specific time horizon \(shift, daily, weekly, or monthly\).

**Performance Formula**


$$
Performance \ = \frac{Average \ Ideal \ Cycle \ Time}{Average \ Actual \ Cycle \ Time}
$$




Performance is expressed as a percentage between 0% and 100%, with 100% being the value when an asset has operated at exactly the Average Ideal Cycle Time. These two factors of performance performance are calculated as follows.

### **Ideal Cycle Time**

Ideal Cycle time is predetermined, measured in milliseconds, and can represent either:

* a fixed value for a particular asset \(Machine Type based\), or 
* a variable based on the output being created \(algorithm based\)

![](/assets/Screen Shot 2016-08-15 at 1.38.27 PM.png)

**Averaging Ideal Cycle Time**

The Average Ideal Cycle Time is measured in seconds and is calculated using the accumulated values for either fixed ideal cycle time or variable ideal cycle time on a shift, day, week, and month basis \(given the configuration of the machine being queried\).


_**Fixed Ideal Cycle Time**_


$$
Average \ Ideal \ Cycle \ Time \ = \frac{(\ 15 \ Seconds \ )\ + \ (\ 15 \ Seconds \ )\ + \ (\ 15 \ Seconds \ )}{3}
$$



$$
Average \ Ideal \ Cycle \ Time \ = \ 15 \ Seconds
$$




_**Variable Ideal Cycle Time**_


$$
Average \ Ideal \ Cycle \ Time \ = \frac{(\ 30 \ Seconds \ )\ + \ (\ 15 \ Seconds \ )\ + \ (\ 60 \ Seconds \ )}{3}
$$



$$
Average \ Ideal \ Cycle \ Time \ = \ 35 \ Seconds
$$



### **Actual Cycle Time**

Unlike Ideal Cycle time, Actual Cycle Time is not predetermined and is calculated dynamically based cycle data coming from facility data streams. The Actual Cycle Time for a machine is measured in milliseconds and is calculated as Cycle End Time minus Cycle Start Time.

![](/assets/Screen Shot 2016-08-15 at 2.19.11 PM.png)

**Averaging Actual Cycle Time**

The Average Actual Cycle Time is measured in seconds and is calculated using the accumulated values for cycle time on a shift, day, week, and month basis.


_**Actual Cycle Time \(with Fixed Ideal Cycle Time\)**_


$$
Average \ Actual \ Cycle \ Time \ = \frac{(\ 18 \ Seconds \ )\ + \ (\ 15 \ Seconds \ )\ + \ (\ 21 \ Seconds \ )}{3}
$$



$$
Average \ Ideal \ Cycle \ Time \ = \ 18 \ Seconds
$$




_**Actual Cycle Time \(with Variable Ideal Cycle Time\)**_


$$
Average \ Actual \ Cycle \ Time \ = \frac{(\ 30 \ Seconds \ )\ + \ (\ 20 \ Seconds \ )\ + \ (\ 70 \ Seconds \ )}{3}
$$



$$
Average \ Ideal \ Cycle \ Time \ = \ 40 \ Seconds
$$



If Idle time for a machine is not seperately broken out of the Actual Cycle Time then it will be included in the calculation, decreasing the observed value for Performance. Downtimes for a machine do not impact the Availabilty calculation.

### **Performance**

Taking the two earlier examples of Fixed Ideal Cycle Time and Variable Ideal Cycle Time we can calculate Performance for Machine 1 and Machine 2 for the specified time period.


$$
Performance \ = \frac{Average \ Ideal \ Cycle \ Time}{Average \ Actual \ Cycle \ Time}
$$




**_Performance \(with Fixed Ideal Cycle Time\)_**


$$
Performance \ = \frac{15 \ Seconds}{18\ Seconds}
$$



$$
Performance \ = \ 83.33 \%
$$




**_Performance \(with Variable Ideal Cycle Time\)_**


$$
Performance \ = \frac{35 \ Seconds}{40\ Seconds}
$$



$$
Performance \ = \ 87.50 \%
$$


