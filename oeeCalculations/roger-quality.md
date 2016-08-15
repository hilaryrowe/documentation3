## **Quality Calculation**

The Quality component of OEE measures the inverse of the ratio of defective output \(Defect Items\) to the total units of output \(Total Output\) or the yield of production passing inspection\/quality standards. This calculation shows the resulting percentage that the asset \(machine, line, or facility\) is producing quality output over a specific time horizon \(shift, daily, weekly, or monthly\).

**Quality Formula**

![](/assets/Screen Shot 2016-08-15 at 2.35.04 PM.png)

Quality is a percentage between 0% and 100% with 100% being the value when an asset is operating with perfect output quality or no defects. Using the components of Quality \(Defect Items and Total Output\) we can further explain how this is computed.

### **Defect Items**

Defective units of production are created in one of two ways:

* Automatic Classification - based on configuration rules for sensor values received in cycles data \(1 to 1 with output calculated for cycle\)

![](/assets/Screen Shot 2016-08-15 at 2.47.44 PM.png)

* Manual Entry - entered by Sight Machine users using the Defect Entry \(each entry could represent n number of defects\)

![](/assets/Screen Shot 2016-08-15 at 3.06.04 PM.png)

### **Total Output**

Output per cycle is used to track the units of production created by an asset \(machine, line, facility\) and will rely on either a fixed ratio \(e.g. 0.5 for machines that make less than one unit per cycle\) or a recipe-dependent value read directly from raw data streams \(1 widget in one cycle and 5 widgets in another cycle\). Total output is calculated by aggregating Cycles output.

### Output per Cycle = \(intended\_pieces - error\_pieces\) \* piece\_multipler \/ cycles\_per\_part

* Piece Multiplier - Specified in data streams to account for variable output per machine;

  * e.g. Output = \(1-0\)\***3**\/\(1\/1\) = 3


* Cycle Finished Product Ratio - Defined in machine type configuration as a fixed value

  * cycles per part = 1\/cycle finished product ratio
  * e.g. Output = \(1-0\)\*1\/\(1\/**.5**\) = .5


