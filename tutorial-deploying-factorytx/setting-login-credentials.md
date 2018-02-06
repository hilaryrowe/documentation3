# Setting Login Credentials

The FactoryTX user interface requires a user name and password. You can either disable authentication or set your own user name and password.

**To set login credentials:**

1. Go to the device Summary page, and then select **Environment Variables**.  
   ![](/tutorial-deploying-factorytx/Setting Login Credentials1 w Lines.png)

2. To disable authentication, on the Device Environment Variables page, do the following:

   * Add the variable **FTX\_NOAUTH**.

   * Set it to **TRUE**.

   * Click **Add**.  
     ![](/tutorial-deploying-factorytx/Setting Login Credentials2 w Lines.png)

3. To enable authentication, on the Device Environment Variables page, you need to set two environment variables. Do the following:

   * Add the variable **FTX\_USERNAME** \(the string to be used as the user name\).

   * Add the variable **FTX\_PW\_HASH** \(sha256 hash of your password string\).  
     **NOTE:** If you want admin/admin as your user name and password, do the following:

     * Set FTX\_USERNAME to: **admin**

     * Set FTX\_PW\_HASH to: **pbkdf2:sha256:50000$z2SStOsN$bb86fa0489dd4c360ba97e15a7744a95bc952fa77170bf05cbd1abaa6ae1e3c3**

   * Click **Add**.

4. To create a hash for your custom password, use this Python method:

   `$ python`

   `>>> from werkzeug.security import generate_password_hash`

   `>>> generate_password_hash('custom_password')`

   `'pbkdf2:sha256:50000$Y7Ig4Cbd$ae385722a29068a64ac8d06dfa93dc0872c0b995f62ac6e71c87eb5531baed97'`



