**#**# **Output Calculation**

**Cycle Generated Output**

Output is calculated on a per cycle basis and is used to track the units of production created by an asset \(machine, line, facility\). It is calculated using either a fixed ratio \(e.g. 0.5 for machines that make less than one unit per cycle\) or a recipe-dependent value interpreted directly from raw data streams \(1 widget in one cycle and 5 widgets in another cycle\). Total output is calculated by aggregating individual Cycle output for a specific shift, day, week, or month.

* Cycle Multiplier

  * Specified in data streams based on recipe to account for variable output per machine
  * $$Output \ per \ Cycle \ = \ Cycle\times\ Cycle \ Multiplier$$
    * E.g. $$Output \ per \ Cycle \ = 1\times3 \ = \ 3$$


* Cycle Product Ratio

  * Defined in machine type configuration as a fixed value
  * $$Output \ per \ Cycle \ = \frac{Cycle}{Cycle \ Product \ Ratio}$$
    * E.g. $$Output \ per \ Cycle \ = \frac{1}{2} \ = \ .5$$

### Expected Output

In addition to **Actual** Output, created through observed cycles, Sight Machine projects daily **Expected** Output using these same inputs and planned operating time for the selected Machine or Line. For most individual assets, total Expected Output is calculated using the following formula:

**Expected Output Calculation**

Expected Output = [(Total Expected Run Time - Planned Downtime) / (Average Ideal Cycle Time)] X Cycle Multiplier or Cycle Product Ratio

Key inputs to this calculation are expected run time and planned downtime. The expected run time for a machine is based on its defined shift schedule and break periods (see Calculating Availability). When users update unplanned downtime events to planned downtimes (through the Data Tab) the total seconds available for the machine to operate will decrease which will subsequently decrease the expected daily output.

Using the prior example in Calculating Availability, if we assume a machine’s total Expected Run Time is 13 hours (based on Shift schedule) and the machine has three half hour breaks (Planned Downtime events) for a total of 1.5 hours, then the total time the machine was operating is 11.5 hours. Combining this with other data points based on the machine configuration (Ideal Cycle Time = 25 seconds and Cycle Product Ratio = .5 units) then the total Expected Output for the machine on a daily basis is 828 units.

Expected Output = [(13 hours - 1.5 hours) / (25 seconds)] X .5 units
 = 828 units

### Line Implications

The **Actual** and **Expected** output for a line is defined by the terminal machines in the topology. The output rates of the final machine or machines in the line will determine what the actual and expected output calculated for a specific shift, day, week, or month.




