# Viewing Output in the Databuffer Directory {#docs-internal-guid-d6bac7cc-6712-6fee-c360-4f21c07afcb1}

In order for a file attachment to get from a factory machine to Sight Machine, FactoryTX must produce a file attachment SSLOG, and place both the file and the SSLOG in that machine’s databuffer directory.

To view output to verify the setup after running the transform, you will need access to the local machine where the databuffer directory is installed.

The default location is: **/var/spool/sightmachine/factorytx/databuffer**

You may want to be able to copy files from that directory to a local system, or SSH into the system to view them. The following is a list of tools you can use to view the files in an easier to read layout.

**If you are using SSH:**

1. Use Resin or direct SSH to get shell access.
2. Run: **`cd /var/spool/sightmachine/factorytx/databuffer`**
3. To list file names, run: **`ls`**
4. Run:
   **`python -m json.tool <filename>`**

**If you are remote:**

1. Use an SSH copy tool such as WinSCP or Fugu.
2. SSH copy the file locally from: 
   /var/spool/sightmachine/factorytx/databuffer
   **NOTE: **If you are using a code editor such as Atom, you may want to install a JSON-formatting plugin. Good resources include the following:

   * [https://atom.io/packages/pretty-json](https://atom.io/packages/pretty-json)

   * [https://github.com/dzhibas/SublimePrettyJson](https://github.com/dzhibas/SublimePrettyJson)

   Or in your browser, go to: [http://jsonprettyprint.com](http://jsonprettyprint.com)





