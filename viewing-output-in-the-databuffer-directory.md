# Viewing Output in the Databuffer Directory {#docs-internal-guid-d6bac7cc-6712-6fee-c360-4f21c07afcb1}

In order for a file attachment to get from a factory machine to Sight Machine, FactoryTX must produce a file attachment SSLOG, and place both the file and the SSLOG in that machine’s databuffer directory.

To view output to verify the setup after running the transform, you will need access to the local machine where the databuffer directory is installed.

The default location is: **/var/spool/sightmachine/factorytx/databuffer**

You may want to be able to copy files from that directory to a local system, or SSH into the system to view them. The following is a list of tools you can use to view the files in an easier to read layout.

