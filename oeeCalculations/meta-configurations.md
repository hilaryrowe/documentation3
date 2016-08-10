## Calculation Configuration

There are a number of settings stored in your account created in conjunction with the data engineering team that drive the OEE calculations presented on the dashboard and across the site.

### Machine Type

* Default Recipe
  * cycle\_ideal \(milliseconds\) - the ideal amount of time expected for a cycle to complete from start to finish
  * cycle\_threshold \(milliseconds\) - the maximum amount of time of time expected for a cycle to complete from start to finish; if a cycle excedes it's threshold it triggers a downtime event and resumes available time when a new cycle starts
  * cycle\_finished\_product\_ratio - the expected output in units created after a cycle completes

* Custom Recipes - Depending on the variabilty of output from a machine type custom configuration of the fields above may be required (e.g. creating small widgets are expected to be created in 30 seconds while large widgets take 5 minutes to create)


