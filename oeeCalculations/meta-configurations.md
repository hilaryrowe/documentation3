## Configurations for OEE Metrics

A number of settings are created and stored for your account in conjunction with the data engineering team that drive the OEE calculations presented on the Dashboard and across the site. This page describes the settings that can be created and stored for your account.

### Machine Type

* Default Recipe

  * **Ideal Cycle Time** \(milliseconds\) \[_cycle\_ideal_\] - the expected time for a cycle to complete
  * **Maximum Cycle Time** \(milliseconds\) \[_cycle\_threshold_\] - the threshold at which the application triggers a downtime event
  * **Finished Output per Cycle** \(integer or float\) \[_cycle\_finished\_product\_ratio_\] - the expected number of units per completed cycle

* Custom Recipes - depending on the variabilty of output from a machine type custom configuration of the fields above may be required \(e.g. creating small widgets are expected to be created in 30 seconds while large widgets take 5 minutes to create\)


### SSLogs

* Piece Multiplier - Setting used to calculate the actual output created by a machine at the end of cycle when this could be variable \(e.g. 1 widget in one cycle and 5 widgets in another cycle\)

### Facility

* Shift Events - used to the define the shift schedule for the facility including:

  * Days of the week expected to operate
  * Start time of the shift
  * End time of the shift
  * Intra shift break times

* Timezone - defines the operating timezone of the facility and all machines associated with it

  * Continent
  * City
  * e.g. US\/Eastern, Europe\/London, Asia\/Shanghai  


_We currently do not allow for adhoc Shift changes or Holiday Schedule changes_

