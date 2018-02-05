# Tutorial: Deploying FactoryTX

There are two supported methods for FTX edge deployment:

* An edge industrial PC appliance \(the Intel NUC\)

* A Virtual Machine file in VMDK \(Virtual Machine Disk\) or QEMU format for use with Oracle VirtualBox

The Resin.io platform is recommended as it provides infrastructure for managing edge devices. It includes an operating system that is off-limits such that you cannot brick your device, and the ability to deploy arbitrary containers/applications on top of that operating system. It also handles phoning home for updates, compression of images for fast remote upgrades, VPN support if you SSH in to a given device, and a web-based portal for device management, version control, etc.

The graphic below shows how FTX can be installed on edge devices to pull data from the factory floor and transmit it to Sight Machine via various cloud environments, using the Resin.io platform to manage the process.

**FactoryTX Installation Flow**





