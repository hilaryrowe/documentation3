# Computing and Recomputing Contextualized Data {#docs-internal-guid-fc552753-9ac2-5c8b-b7ca-7ab9d602e00a}

When raw data is streaming into the platform in real-time, and you have deployed models, the AI Data Pipeline will automatically Compute manufacturing models.

However, when you deploy models for the first time, or when you make changes, you may want to run a Recompute. This will overwrite existing data within the selected timeframe with recomputed data. The Compute interface allows you initiate and monitor Recompute jobs.

**To recompute contextualized data:**

1. On the top menu, click **Compute**.  
   ![](/computing-and-recomputing-contextualized-data/Compute1.png)

2. On the left, click **Selected Assets**.

3. In the Assets window, click one or more assets. For example, Robot 1.  
   ![](/computing-and-recomputing-contextualized-data/Compute2.png)

4. In the new window, verify that the asset you selected is correct, and then click **Apply**.  
   ![](/computing-and-recomputing-contextualized-data/Compute3.png)

5. On the left, click the date range selector.

6. In the calendar window, click a start date to select it. You cannot set an end date; the recompute will start from the selected date and run up until the present.  
   ![](/computing-and-recomputing-contextualized-data/Compute4.png)

7. On the left, verify the start date, and then click **Apply**.  
   ![](/computing-and-recomputing-contextualized-data/Compute5.png)

8. At the bottom, click **Compute**.  
   ![](/computing-and-recomputing-contextualized-data/Compute6.png)

9. In the Active job status window, view the pending job to check its percentage completed and number of records are being processed.  
   ![](/computing-and-recomputing-contextualized-data/Compute7.png)

10. When the job is finished, you can view it in the Completed section of the window on the right.  
    **NOTE: **The Completed window shows both successfully completed jobs in black as well as failed or canceled ones in red.  
    ![](/computing-and-recomputing-contextualized-data/Compute8.png)



