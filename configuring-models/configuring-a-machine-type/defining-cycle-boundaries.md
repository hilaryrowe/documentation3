## Defining Cycle Boundaries

The second step in creating a Machine Type is to make sure that you correctly define the cycle boundaries, to ensure that each cycle in the model starts and ends at the correct timestamps.

**To define cycle boundaries:**

1. After you create a new Machine Type, the Cycles screen opens automatically.  
   ![](/configuring-models/configuring-a-machine-type/Machine Type6.png)

2. On the Cycles screen, click the **Cycle Boundary** field to select one of the following:

   * **Counter Already Exists: **Use if there is a cycle counter in the raw data.

   * **Machine Event:** Use if there is an event log in the raw data that can be mapped to cycle boundaries \(e.g., load and unload\).

   * **One Cycle Per Record:** Use to convert each record from each stream into a cycle.

   * **Time Interval:** Use to make all cycles the same duration.  
     ![](/configuring-models/configuring-a-machine-type/Machine Type7.png)

3. If you select Counter Already Exists, on the Cycles page, do the following:

   * Under Define the Cycle Boundaries, click **Add a Steam**, and then click the **Stream** drop-down arrow to select an option \(for example, PLC\).

   * Click the **Counter** drop-down arrow to select the field on the stream that represents the cycle counter \(for example, Outs\).

   * Under Set the Boundary Function, click the **Boundary Function** drop-down arrow to select the boundary for the counter \(for example, Alternating Signal\).

   * Under Max Cycle Time, accept the default of 10000 ms or set a new time. When a cycle exceeds this duration, the AI Data Pipeline ends the cycle and starts a downtime, and then waits for the signal to indicate the start of a new cycle.  
     ![](/configuring-models/configuring-a-machine-type/Machine Type8.png)

4. If you select Machine Event, on the Cycles page, do the following:

   * Under Set Event Source, click the **Stream** drop-down arrow to select an option \(for example, PLC\).

   * Click the **Field** drop-down arrow to select a field that contains an event stream from the machine \(for example, WPA\).

   * In the Cycle Start Event and Cycle End Event fields, type the name of the string in the event log that represents the start and end of the cycle \(for example, load and unload\).

   * Under Max Cycle Time, accept the default of 10000 ms or set a new time.  
     ![](/configuring-models/configuring-a-machine-type/Machine Type9.png)

5. If you select One Cycle Per Record, to establish the boundaries based on that one record, under Max Cycle Time, accept the default of 10000 ms or set a new time.  
   ![](/configuring-models/configuring-a-machine-type/Machine Type10.png)

6. If you select Time Interval, under Cycle Duration, accept the default of 60000 Milliseconds or set a new time.  
   ![](/configuring-models/configuring-a-machine-type/Machine Type11.png)



