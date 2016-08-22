# Configuration Tools

Options:

* Cycle Configuration

  * Ideal Cycle Time
  * Max Cycle Time

* Output

  * Piece per pair


Availability = “a percentage measure of the degree to which machinery and equipment is in an operable and committable state at the point in time when it is needed.”1

Classifications to consider:

* Instantaneous \(or Point\) Availability.
* Average Up-Time Availability \(or Mean Availability\).
* Steady State Availability.
* Inherent Availability.
* Achieved Availability.

**Operational Availability.**

* A0=Uptime\/OperatingCycle

* Logistics Time

* Ready Time

* Waiting\/Administrative Downtime

* Preventive Maintence Downtime

* Corrective Maintence Downtime


## Notes from John Sun

Multiple Calculator Plugins

* Base
* Part based = Flyknit
* Parallel based = OSC Knife
* Skip Bad = 3D, MSP
* Line Stats = Auto No Sew...

## Base Formulas

Availability = sec cycles \/ exp cycles

Performance = mean ideal cycle time \/ mean cycle time

Quality = \# of defects\/ \# of output



### Output = \(intended\_pieces - error\_pieces\) \* piece\_multipler \/ cycles\_per\_part

* Piece Multiplier - Specified in sslog data streams to account for variable output per machine;

  * e.g. Output = \(1-0\)\***3**\/\(1\/1\) = 3

* Cycle Finished Product Ratio - defined in machine type yamls as a fixed value

  * cycles per part = 1\/cycle finished product ratio
  * e.g. Output = \(1-0\)\*1\/\(1\/**.5**\) = .5


_ETL Output Calculator_

###



```py

 def updateMetadataFromStats(self, recipe, mt):

 # Add output based on intended pieces, error pieces, and cycle per part data

 kDEFAULT_INTENDED_PIECES = 1
 kDEFAULT_PIECE_MULTIPLIER = 1
 kDEFAULT_ERROR_PIECES = 0

 default_intended_pieces = self.getRecipeField(mt,'default_intended_pieces', recipe)

 intended_pieces = self.getMetaAssign(mt, 'intended_pieces', recipe)
 if intended_pieces == 0 and default_intended_pieces is not None:
 intended_pieces = default_intended_pieces
 if intended_pieces is None:
 intended_pieces = kDEFAULT_INTENDED_PIECES

 piece_multipler = self.getMetaAssign(mt, 'piece_multiplier', recipe)
 if piece_multipler is None:
 piece_multipler = kDEFAULT_PIECE_MULTIPLIER

 error_pieces = self.getMetaAssign(mt, 'error_pieces', recipe)
 if error_pieces is None:
 error_pieces = kDEFAULT_ERROR_PIECES

 cycles_per_part = self.getMetaAssign(mt, 'cycles_per_part', recipe)
 if not cycles_per_part:
 cycles_ratio = self.getRecipeField(mt,'cycle_finished_product_ratio', recipe)
 if cycles_ratio is None:
 log.error("cycle_finished_product_ratio setting not found in recipe {}. Recipe key is {}", mt.recipes, recipe)
 cycles_ratio = 1
 cycles_per_part = 1/cycles_ratio

 output = (intended_pieces - error_pieces) * piece_multipler / cycles_per_part
 self.metadata['output'] = output
 self.metadata['NG'] = self.stats.get('NG', {}).get('val', False)
 return True

```




