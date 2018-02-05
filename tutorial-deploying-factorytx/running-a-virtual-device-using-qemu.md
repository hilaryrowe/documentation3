# Running a Virtual Device Using QEMU

If you need to install QEMU for your platform, go here for more information: [https://www.qemu.org/download/](https://www.qemu.org/download/)

QEMU is a lightweight virtualization service. We recommend QEMU for the development or testing of FactoryTX, but for production deployments, we recommend using VMWare or VirtualBox.

To run a virtual device using QEMU:

1. Run the following to start the image:

   * On Linux systems with KVM support:  
     **`qemu-system-x86_64 –drive file=<your_image_filename.img>,media=disk,cache=none,format=raw –net nic,model=virtio –net user –m 512 –nographic –machine type=pc,accel=kvm –smp 4 –cpu host`**

   * On Linux systems without KVM support:  
     **`qemu-system-x86_64 –drive file=<your_image_filename.img>,media=disk,cache=none,format=raw –net nic,model=virtio –net user –m 512 –nographic –machine type=pc –smp 4 –cpu host`**

   * On Windows or MacOSX systems:  
     **`qemu-system-x86_64 -drive file=<your_image_filename.img>,media=disk,cache=none,format=raw -net nic,model=virtio -net user -m 512 -nographic -machine type=pc -smp 2`**

2. Your device should appear in your application dashboard with a few minutes.



