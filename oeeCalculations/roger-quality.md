## **Quality Calculation**

The Quality component of OEE measures the inverse of the ratio of defective output \(Defect Items\) to the total units of output \(Total Output\) or the yield of production passing quality standards. This calculation shows the resulting percentage that the asset \(machine, line, or facility\) is producing satisfactory output over a specific time horizon \(shift, daily, weekly, or monthly\).

**Quality Formula**

$$
Quality \ = \ 1 \ - \frac{Defect \ Items}{Total \ Output}
$$


Quality is a percentage between 0% and 100% with 100% being the value when an asset is operating with perfect output quality or no defects. Using the components of Quality \(Defect Items and Total Output\) we can further explain how this is computed.

### **Defect Items**

Defective units of production are created in one of two ways:

* Automatic Classification - based on configuration rules for sensor values received in cycles data \(1 to 1 with output calculated for the cycle period\)

$$
Defect \ Items \ = \ (Cycle \ 1:1 \ )\ + \ (\ Cycle \ 30:1 \ )\ + \ (\ Cycle \ 35:1 \ )\ + \ (\ Cycle \ 60:1 \ )\ + \ (\ Cycle \ 89:1 )\ = \ 5
$$

![](/assets/Screen Shot 2016-08-15 at 4.04.46 PM.png)

* Manual Entry - entered by Sight Machine users using Defect Entry \(each entry could represent n number of defects\)

$$
Defect \ Items \ = \ (User \ Entry \ 1:3 \ )\ + \ (\ User \ Entry \ 2:2 \ )\  = \ 5
$$

![](/assets/Screen Shot 2016-08-15 at 4.16.18 PM.png)

### **Total Output**

Output per cycle is used to track the units of production created by an asset \(machine, line, facility\) and will rely on either a fixed ratio \(e.g. 0.5 for machines that make less than one unit per cycle\) or a recipe-dependent value read directly from raw data streams \(1 widget in one cycle and 5 widgets in another cycle\). Total output is calculated by aggregating Cycles output.

**Piece Multiplier**

Specified in data streams to account for variable output per machine; e.g. $$ Output \ per \ Cycle \ = \ 1 \ * \ 3 \ = \ 3 $$

**Output per Cycle = Cycle \* Piece Multiplier**

**Cycle Product Ratio**

Defined in machine type configuration as a fixed value; e.g. Output per Cycle = 1\/2 = .5

**Output per Cycle = Cycle \/ Cycle Product Ratio**

![](/assets/Screen Shot 2016-08-15 at 4.27.35 PM.png)

### **Quality**

Taking the earlier examples of Defect Items and Total Output we can calculate Quality for two different machines for the specified time period.

![](/assets/Screen Shot 2016-08-15 at 2.35.04 PM.png)

**_Quality Calculation \(with Automatic Defect Classification\)_**

![](/assets/Screen Shot 2016-08-15 at 4.33.15 PM.png)

**_Quality Calculation \(with Manual Defect Entry\)_**

![](/assets/Screen Shot 2016-08-15 at 4.33.15 PM.png)

