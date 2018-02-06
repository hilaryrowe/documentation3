## Adding the Resin Application as a Remote {#docs-internal-guid-3763732e-6bf9-e3fb-6f5f-1d40a70dc488}

You need to add the Resin application as a remote inside your deployment git repository.

**To add the Resin application as a remote:**

1. In the upper-right of the Resin.io maintenance page, there is a snippet to add the remote application to your git repository.  
   ![](/tutorial-deploying-factorytx/Adding Resin Application as Remote1 w Lines.png)

2. Copy this text, and then add it as a remote inside your deployment Git repository.  
   **`cd factorytx2`**  
   **`git remote add resin <your Resin user name>@git.resin.io:<your Resin user name>/<your Resin application name>.git`**

3. To check if you did this correctly, you can list your remotes:  
   **`± % git remote -v origin git@github.com:sightmachine/factorytx2.git (fetch)  
   origin git@github.com:sightmachine/factorytx2.git (push)  
   resin <your Resin name>@git.resin.io:<your Resin name>/<your Resin application name>.git (fetch)  
   resin <your Resin name>@git.resin.io:<your Resin name>/<your Resin application name>.git (push)`**  
  
   **NOTE: **This effectively means you can push code to two different remote locations: origin, which is the GitHub repository for committing changes back to Sight Machine, or "resin," which will execute a build pipeline and automatically update all the devices in that application with the new software. 



