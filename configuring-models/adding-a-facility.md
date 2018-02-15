# Adding a Facility

When working with a new Sight Machine instance, start by creating a Facility model. This will generate API keys for FactoryTX, so you can begin streaming raw data to your cloud environment. In addition, you will need at least one Facility for later, so that you can associate Machines with it.

It is also important to add shifts for each Facility so that the Sight Machine platform can use this information to analyze when production and non-production are taking place. For instance:

* Cycles that occur during a shift will be labeled with that shift. Cycles that occur outside of any configured shift will be labeled as Off-Shift.

* Downtimes that occur during a shift will be labeled as Unplanned. Downtimes that occur outside of any configured shift, or during a break, will be labeled as Planned. This is used in the calculation of OEE Availability.



