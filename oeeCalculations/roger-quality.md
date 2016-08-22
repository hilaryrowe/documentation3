## **Quality Calculation**

Quality is a measure of the asset's yield, that is, its satisfactory output relative to its total output over a specific time horizon \(shift, daily, weekly, or monthly\).

**Quality Formula**


$$
Quality \ = \ 1 \ - \frac{Defect \ Items}{Total \ Output}
$$


Quality is expressed as a percentage between 0% and 100%, with 100% being the value when an asset has operated with perfect Total Output quality or no Defect Items. For example, if your total output was 100 and your defective items were 5, then Quality = 1 - 5\/100 = 95.00%

These two factors of quality are derived as follows.

### **Defect Items**

Defective units can be tracked in one of two ways:

* Automatic Detection, that is, detection based on the asset's sensor input.


$$
Defect \ Items \ = \ (Cycle \ 1:Good \ )\ 0 \ + \ (\ Cycle \ 2:Good \ )\ 0 \ + \ (\ Cycle \ 3:Bad \ )\ 1 \ + \ ... \\ + \ (\ Cycle \ 99:Bad \ )\ 1 \ + \ (\ Cycle \ 100:Good )\ 0 \ = \ 5
$$


![](/assets/Mockup_AutomaticDefectClassification5.png)

* Manual Entry, that is, using the Defect Entry on your touchpad.


$$
Defect \ Items \ = \ (User \ Entry \ 1:3 \ )\ + \ (\ User \ Entry \ 2:2 \ )\  = \ 5
$$


![](/assets/Mockup_ManualDefectClassification5.png)

### **Total Output**

Total Output is based on the output per cycle, the piece multiplier, and the cycle product ratio. See Calculating Output for more information.


**Total Output Formula**

$$
Total \ Output \ = \ (Output \ per \ Cycle \ 1:1 \ )\ + \ (\ Output \ per \ Cycle \ 2:1 \ )\ + \ ... \\ + \ (Output \ per \ Cycle \ 100:1 \ )\ = \ 100
$$

### **Quality**

Taking the examples for Defect Items and Total Output we can calculate Quality for the specified time period.

$$
Quality \ = \ 1 \ - \frac{Defect \ Items}{Total \ Output}
$$

$$
Quality \ = \ 1 \ - \frac{5}{100}
$$

$$
Quality \ = \ 95.00 \%
$$

