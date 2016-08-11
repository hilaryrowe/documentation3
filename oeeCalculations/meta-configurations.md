## Calculation Configuration

There are a number of settings stored in your account created in conjunction with the data engineering team that drive the OEE calculations presented on the dashboard and across the site.

### Machine Type

* Default Recipe
  * **Ideal Cycle Time** \(milliseconds\) [_cycle_ideal_] - the ideal amount of time expected for a cycle to complete from start to finish
  * **Maximum Cycle Time** \(milliseconds\) [_cycle_threshold_] - the maximum amount of time of time expected for a cycle to complete from start to finish; if a cycle excedes it's threshold it triggers a downtime event and resumes available time when a new cycle starts
  * **Finished Output per Cycle** (integer or float) [_cycle_finished_product_ratio_] - the expected output in units created after a cycle completes

* Custom Recipes - depending on the variabilty of output from a machine type custom configuration of the fields above may be required (e.g. creating small widgets are expected to be created in 30 seconds while large widgets take 5 minutes to create)

* Statplugin - Different ways of calculating OEE metrics can be specified in the machine type configuration
  * PartOEEStatCalculator - ???
  * ParallelCyclePerfCalculator - ???
  * SkipBadCycleStatCalculator - ignores cycles with NG data
  * LineStatsCalculator - used to calculate OEE metrics for the line model with overlapping or parallel processes (total aggregate daily time > 24 hours)


### Factory
* shift_events - used to the define the shift schedule for the facility including:
  * Days of the week expected to operate
  * Start time of the shift
  * End time of the shift
  * Intra shift break times
* timezone - defines the operating timezone of the facility and all machines associated with it
  * Continent
  * City
  * e.g. US/Eastern, Europe/London, Asia/Shanghai  

_We currently do not allow for adhoc Shift changes or Holidays_

### Calculation Impact
* Availability
  * cycle_ideal ==> Scheduled Time
  * cycle_threshold ==> should be [Available Time]
* Performance
  * cycle_ideal ==> numerator = mean ideal cycle time
* Output
  * cycle_finished_product_ratio




