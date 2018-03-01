# Adding a Facility

When working with a new Sight Machine instance, start by creating a Facility model. This will generate API keys for FactoryTX, so you can begin streaming raw data to your cloud environment. In addition, you will need at least one Facility for later, so that you can associate Machines with it.

It is also important to add shifts for each Facility so that the Sight Machine platform can use this information to analyze when production and non-production are taking place. For instance:

* Cycles that occur during a shift will be labeled with that shift. Cycles that occur outside of any configured shift will be labeled as Off-Shift.

* Downtimes that occur during a shift will be labeled as Unplanned. Downtimes that occur outside of any configured shift, or during a break, will be labeled as Planned. This is used in the calculation of OEE Availability.

**To add a Facility:**

1. On the Models tab, click **Facilities**.  
   ![](/configuring-models/configuring-a-machine-type/Models Facilities Menu.png)

2. On the main Facilities screen, click the plus \(+\) button to add your first Facility.  
   ![](/configuring-models/configuring-a-machine-type/Facility1.png)

3. At the top of the Location screen that opens automatically, type a name for the Facility.  
   ![](/configuring-models/configuring-a-machine-type/Facility2.png)

4. Under Location, in the Address field, type the address of the Facility.  
   ![](/configuring-models/configuring-a-machine-type/Facility3.png)  
   **NOTE: **If you type a full address, the geolocation and time zone will automatically populate based on that address. The interface will accept a partial address, so if you prefer to leave the address private, you can type a city, state, or country instead.  
   ![](/configuring-models/configuring-a-machine-type/Facility4.png)

5. On the left, click** Shift Schedule**.  
   ![](/configuring-models/configuring-a-machine-type/Facility5.png)

6. On the Shift Schedule screen, in the Shift Name field, enter a user-friendly reference for the shift. This will appear in Manufacturing Applications.  
   ![](/configuring-models/configuring-a-machine-type/Facility6.png)

7. In the Shift ID field, enter your Shift Name but without spaces. In a future version, this field will be automatically generated.  
   ![](/configuring-models/configuring-a-machine-type/Facility7.png)

8. In the Shift Start Time/Shift End Time fields, determine when the shift is scheduled to start and end.  
   ![](/configuring-models/configuring-a-machine-type/Facility8.png)

9. Under Add a Break, add break start and end times. These are optional. Click the plus \(+\) button to add additional breaks.  
   ![](/configuring-models/configuring-a-machine-type/Facility9.png)

10. Under Shift Occurs on These Days, click the field to open a window, and then determine the days for the shifts. Click **Apply** when finished.  
    ![](/configuring-models/configuring-a-machine-type/Facility10.png)

11. When finished with the shift setup, in the bottom-right, do one of the following:

    * Click **Apply** if you are finished.

    * Click **Apply and Add Another** if you want to add additional shifts.  
      ![](/configuring-models/configuring-a-machine-type/Facility11.png)

12. After you are finished adding shifts, on the Shift Schedule screen, review them, and then do any of the following:

    * In the upper-right, click the plus \(+\) button to add another shift.

    * Hover over any shift, and then click the pencil button to edit it.

    * Hover over any shift, and then click the trashcan button to delete it.  
      ![](/configuring-models/configuring-a-machine-type/Facility12.png)

13. On the left, click **Review & Deploy**.

14. On the Review & Deploy screen, look over the information. Do one of the following:

    * If you need to make changes, click **Revert This Change**.

    * If you are finished, click **Deploy**.  
      ![](/configuring-models/configuring-a-machine-type/Facility13.png)

15. You should see a success screen, indicating that the Facility was created. To check the Facility, do one of the following:

    * In the Name column, click the Facility’s name.

    * To the right of the Facility, click the three-dot menu button.  
      ![](/configuring-models/configuring-a-machine-type/Facility14.png)

16. On the Facility’s Location screen, under FactoryTX API Credentials, check that the FactoryTX Username and FactoryTX API Key were automatically generated. These credentials are used in FactoryTX to authenticate posting data to your cloud environment.  
    ![](/configuring-models/configuring-a-machine-type/Facility15.png)



