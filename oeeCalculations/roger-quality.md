## **Quality Calculation**

Quality is a measure of the asset's yield, that is, its satisfactory output relative to its total output over a specific time horizon \(shift, daily, weekly, or monthly\).

**Quality Formula**

![](/assets/Screen Shot 2016-08-15 at 2.35.04 PM.png)

Quality is expressed as a percentage between 0% and 100%, with 100% being the value when an asset has operated with perfect Total Output quality or no Defect Items. These two factors of quality are derived as follows.

### **Defect Items**

Defective units can be tracked in one of two ways:

* _Automatic Classification_ - based on configuration rules for sensor values received in cycles data \(1 to 1 with output calculated for the cycle period\)

![](/assets/Screen Shot 2016-08-15 at 2.47.44 PM.png)

![](/assets/Screen Shot 2016-08-15 at 4.04.46 PM.png)

* _Manual Entry_ - entered by Sight Machine users using Defect Entry \(each entry represents 'n' number of defects\)

![](/assets/Screen Shot 2016-08-15 at 3.06.04 PM.png)

![](/assets/Screen Shot 2016-08-15 at 4.16.18 PM.png)

### **Total Output**

Output per cycle is used to track the units of production created by an asset. It relies on either:

* a fixed ratio \(e.g. 0.5 for machines that make less than one unit per cycle\), or 
* an algorithm-dependent value read directly from raw data streams \(1 unit in one cycle and 5 units in another cycle\). 

Total Output is calculated by aggregating Cycles output.

**Piece Multiplier: **specified in data streams to account for variable output per machine; e.g. Output per Cycle = 1\*3 = 3

**     Output per Cycle = Cycle \* Piece Multiplier**

**Cycle Product Ratio:** defined in machine-type configuration as a fixed value; e.g. Output per Cycle = 1\/2 = .5

**     Output per Cycle = Cycle \/ Cycle Product Ratio**

![](/assets/Screen Shot 2016-08-15 at 4.27.35 PM.png)

### **Quality**

Using the Defect Items and Total Output examples above, we can calculate Quality for two different machines for the specified time period.

![](/assets/Screen Shot 2016-08-15 at 2.35.04 PM.png)

**_Quality Calculation \(with Automatic Defect Classification\)_**

The example below shows the Quality calculation using the Automatic Defect Classification example values from above:

![](/assets/Screen Shot 2016-08-15 at 4.33.15 PM.png)

**_Quality Calculation \(with Manual Defect Entry\)_**

The example below shows the Quality calculation using the Manual Defect Entry example values from above:

![](/assets/Screen Shot 2016-08-15 at 4.33.15 PM.png)

