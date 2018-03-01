## Generating Downtimes

There are three channels for creating downtimes:

* **Maximum Cycle Time:** You define Cycle Boundaries, and downtimes are created when Cycles reach the Maximum Cycle Time.

* **In-Cycle Downtimes: **You can specify one or more downtime fields that signal if a machine is up or down. This expects a binary field, and any time that it goes from 0 to 1, it creates a downtime, even if it is during a Cycle.  
  NOTE:This is typically used when cycles are very long \(i.e., multiple hours\), so that you can record the downtime without breaking up the cycle. We do not recommended that you use this feature if machines of this type have shorter cycles.

* **Downtimes During Gaps:** The AI Data Pipeline automatically creates downtimes in any gaps that exist between Cycles.



