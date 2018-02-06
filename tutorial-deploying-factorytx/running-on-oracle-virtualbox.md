# Running on Oracle VirtualBox

You will need to convert the image file into a format that Oracle VirtualBox can use.

**To spin up for Oracle VirtualBox:**

1. Use the .img file and convert it to VMDK:  
   **`qemu-img convert <your_image_file.img> -O vdi outputImage.vdi`**

2. Resize the .vdi file to use appropriate space:  
   **`vboxmanage modifyhd resinQEMU.vdi --resize 2288`**  
   **NOTE: **The last parameter is space in MB; this is ~2GB.

3. Start Oracle VirtualBox.

4. Follow the instructions and use Linux Ubuntu 64-bit.

5. Set memory size to 1024MB.

6. Use the existing .vdi file as your virtual hard disk.

7. Go to the Resin.io Applications page and verify that the new VM device is added.



