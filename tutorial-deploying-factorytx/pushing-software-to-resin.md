# Pushing Software to Resin

You can deploy FactoryTX repository code to all devices in the application.

**To push software to Resin:**

1. To push the master branch of FTX to the master branch of Resin, run:  
   **`git push resin master`**

2. If you are wanting to deploy changes from any other software branch on your local machine, use the following syntax:  
   **`git push resin task/local_branch:master`**  
   where` local_branch` is the local branch that you are working on. This will effectively push your local branch to the master on the Resin remove, which kicks off the build pipeline. 

3. If everything goes well, you should get a series of logs from the Dockerfile, which ends with a unicorn. Dockerfile is a text document that contains all the commands a user could call on the command line to assemble an image.  
   ![](/tutorial-deploying-factorytx/Pushing Software to Resin3.png)



