# Loading the FactoryTX Software into Resin for Deployment

On your local machine, you need to download the code base for the FactoryTX code repository \(i.e., github.com/sightmachine/factorytx2\).

This will require the open source version control tool Git. Our instructions are for the command line tool, but you may prefer a GUI. If you need to install Git on your local system, visit: [https://git-scm.com/download/](https://git-scm.com/download/)

You will also need to add SSH keys to Resin, which will let you deploy code securely from your local system. You can add an SSH key via: [https://dashboard.resin.io/preferences/sshkeys](https://dashboard.resin.io/preferences/sshkeys)

Since Resin can use your GitHub SSH keys, if you have an existing SSH configuration working with GitHub, the easiest method is to configure GitHub SSH and then import it into Resin. For information about setting up SSH on GitHub, see: [https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)

**To load the FactoryTX software into Resin for deployment:**

1. Run:  
   **`git clone git@github.com:sightmachine/factorytx2.git`**



