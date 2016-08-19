## **Quality Calculation**

Quality is a measure of the asset's yield, that is, its satisfactory output relative to its total output over a specific time horizon \(shift, daily, weekly, or monthly\).

**Quality Formula**


$$
Quality \ = \ 1 \ - \frac{Defect \ Items}{Total \ Output}
$$


Quality is expressed as a percentage between 0% and 100%, with 100% being the value when an asset has operated with perfect Total Output quality or no Defect Items. For example, if your total output was 47 and your defective items were 6, then Quality = 1 - 6\/47 = 87.2%

These two factors of quality are derived as follows.

### **Defect Items**

Defective units can be tracked in one of two ways:

* Automatic Detection, that is, detection based on the asset's sensor input.


$$
Defect \ Items \ = \ (Cycle \ 1:1 \ )\ + \ (\ Cycle \ 30:1 \ )\ + \ (\ Cycle \ 35:1 \ )\ + \\ (\ Cycle \ 60:1 \ )\ + \ (\ Cycle \ 89:1 )\ = \ 5
$$


![](/assets/Screen Shot 2016-08-15 at 4.04.46 PM.png)

* Manual Entry, that is, using the Defect Entry on your touchpad.


$$
Defect \ Items \ = \ (User \ Entry \ 1:3 \ )\ + \ (\ User \ Entry \ 2:2 \ )\  = \ 5
$$


![](/assets/Screen Shot 2016-08-15 at 4.16.18 PM.png)

### **Total Output**

Total Output based on output per cycle, the piece multiplier, and the cycle product ratio as follows.

**Output Per Cycle: **is the number of units produced by the asset during a given cycle. It relies on either:

* a fixed ratio \(e.g. 0.5 for machines that make less than one unit per cycle\), or 
* an algorithm-dependent value read directly from raw data streams \(1 unit in one cycle and 5 units in another cycle\)

**Piece Multiplier: **specified in data streams to account for variable output per machine; e.g. Output per Cycle = 1\*3 = 3

**     Output per Cycle = Cycle \* Piece Multiplier**

**Cycle Product Ratio:** defined in machine-type configuration as a fixed value; e.g. Output per Cycle = 1\/2 = .5

# **     Output per Cycle = Cycle \/ Cycle Product Ratio**

* Piece Multiplier
  * Specified in data streams to account for variable output per machine
  * $$Output \ per \ Cycle \ = \ Cycle\times\ Piece \ Multiplier$$

    * E.g. $$Output \ per \ Cycle \ = 1\times3 \ = \ 3$$



* Cycle Product Ratio
  * Defined in machine type configuration as a fixed value
  * $$Output \ per \ Cycle \ = \frac{Cycle}{Cycle \ Product \ Ratio}$$

    * E.g. $$Output \ per \ Cycle \ = \frac{1}{2} \ = \ .5$$



**Total Output Formula**


$$
Total \ Output \ = \ (Output \ per \ Cycle \ 1:1 \ )\ + \ (\ Output \ per \ Cycle \ 2:1 \ )\ + \ ... \\ + \ (Output \ per \ Cycle \ 100:1 \ )\ = \ 100
$$




