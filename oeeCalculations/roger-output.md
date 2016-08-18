## **Output Calculation**

Output is calculated on a per cycle basis and is used to track the units of production created by an asset \(machine, line, facility\). It can be calculated using either a fixed ratio \(e.g. 0.5 for machines that make less than one unit per cycle\) or a recipe-dependent value interpreted directly from raw data streams \(1 widget in one cycle and 5 widgets in another cycle\). Total output is calculated by aggregating individual Cycle output for a specific shift, day, week, or month.

**Piece Multiplier**

Specified in data streams to account for variable output per machine; e.g. $$Output \ per \ Cycle \ = 1\times3 \ = \ 3$$

**Output per Cycle = Cycle x Piece Multiplier**



**Cycle Product Ratio**

Defined in machine type configuration as a fixed value; e.g. $$Output \ per \ Cycle \ = \frac{1}{2} \ = \ .5$$

**Output per Cycle = Cycle \/ Cycle Product Ratio**

