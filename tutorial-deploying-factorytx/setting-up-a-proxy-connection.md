# Setting Up a Proxy Connection \(Draft\)

You can bring the Resin container online using a proxy.

**To set up a proxy connection:**

1. Add a system-proxy folder to the root of the deployment image.

2. Copy [https://github.com/darkk/redsocks/blob/master/debian/redsocks.conf](https://github.com/darkk/redsocks/blob/master/debian/redsocks.conf) into that folder.

3. Edit the following configurations:

   * `daemon = off;`

   * `local_port = 12345;`

   * `ip = <IP OF PROXY HOST>;`

   * `port = <PORT OF PROXY HOST>;`

   * `type = <TYPE OF PROXY>;`  
     This can be one of the following: `socks4, socks5, http-connect, http-relay`

   * `login = "<USERNAME FOR PROXY>";`  
     This is optional, if you need to authenticate.

   * `password = "<PASSWORD FOR PROXY>";`  
     This is optional.

4. If you have a list of IPs that you can reach without the proxy \(including your internal IPs\), add them 1 line per file to a file named:  
   “/mnt/boot/system-proxy/no\_proxy”



