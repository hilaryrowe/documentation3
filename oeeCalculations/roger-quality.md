## **Quality Calculation**

The Quality component of OEE measures the inverse of the ratio of defective output \(Defect Items\) to the total units of output \(Total Output\) or the yield of production passing quality standards. Quality displays as a percentage indicating that the asset is producing satisfactory output over a specific time horizon \(shift, daily, weekly, or monthly\).

**Quality Formula**

![](/assets/Screen Shot 2016-08-15 at 2.35.04 PM.png)

Quality is expressed as a percentage between 0% and 100%, with 100% being the value when an asset has operated with perfect Total Output quality or no Defect Items. These two factors of quality are dervied as follows.

### **Defect Items**

Defective units of production are created in one of two ways:

* _Automatic Classification_ - based on configuration rules for sensor values received in cycles data \(1 to 1 with output calculated for the cycle period\)

![](/assets/Screen Shot 2016-08-15 at 2.47.44 PM.png)

![](/assets/Screen Shot 2016-08-15 at 4.04.46 PM.png)

* _Manual Entry_ - entered by Sight Machine users using Defect Entry \(each entry represents 'n' number of defects\)

![](/assets/Screen Shot 2016-08-15 at 3.06.04 PM.png)

![](/assets/Screen Shot 2016-08-15 at 4.16.18 PM.png)

### **Total Output**

Output per cycle is used to track the units of production created by an asset \(machine, line, facility\) and will rely on either a fixed ratio \(e.g. 0.5 for machines that make less than one unit per cycle\) or a recipe-dependent value read directly from raw data streams \(1 widget in one cycle and 5 widgets in another cycle\). Total output is calculated by aggregating Cycles output.

**Piece Multiplier**

Specified in data streams to account for variable output per machine; e.g. Output per Cycle = 1\*3 = 3

**Output per Cycle = Cycle \* Piece Multiplier**

**Cycle Product Ratio**

Defined in machine type configuration as a fixed value; e.g. Output per Cycle = 1\/2 = .5

**Output per Cycle = Cycle \/ Cycle Product Ratio**

![](/assets/Screen Shot 2016-08-15 at 4.27.35 PM.png)

### **Quality**

Taking the earlier examples of Defect Items and Total Output we can calculate Quality for two different machines for the specified time period.

![](/assets/Screen Shot 2016-08-15 at 2.35.04 PM.png)

_**Quality Calculation \(with Automatic Defect Classification\)**_

![](/assets/Screen Shot 2016-08-15 at 4.33.15 PM.png)

_**Quality Calculation \(with Manual Defect Entry\)**_

![](/assets/Screen Shot 2016-08-15 at 4.33.15 PM.png)

