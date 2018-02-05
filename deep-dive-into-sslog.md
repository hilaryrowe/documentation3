# Deep Dive into SSLOG {#docs-internal-guid-2e90bb1e-66cd-8e80-ecf6-f8f204ffa562}

FactoryTX encrypts data at the edge device before transmitting it to Sight Machine. We transmit the data in SSLOG, a consistent, human-readable format that contains a JSON document per point in time. In other words, SSLOGs are customer data that have gone through a first layer of pre-processing in order to turn them into the JSON format.

## Sections of the SSLOG File {#docs-internal-guid-dfa27dc4-676c-e050-32e9-c317354db54a}

The SSLOG files consists of two sections:

![](/images/SSLOG Sample Color Coded Parameters.png)

**Sample SSLOG File**

![](/images/Sample SSLOG File w Lines.png)

## Converting Data into SSLOG Format {#docs-internal-guid-dfa27dc4-6770-f45b-ed31-787bc063e1c2}

The conversion process involves formatting and renaming fields. The core of FTX’s functionality is taking in data in many different formats and producing a standardized, human-readable output. It is possible to take existing fields and map them to reserved keywords, which will make ETL configuration easier in the Sight Machine platform. Most of these can be set by simply naming the field in the plugin configuration or renaming it as part of a transform operation.

## Understanding the Schema {#docs-internal-guid-dfa27dc4-6771-429c-99ac-47c461e41cd6}

The following table lists the schema that we use when we transmit data from plant floor assets.

![](/images/Transmit Schema Table.png)

## Encrypting Data {#docs-internal-guid-dfa27dc4-6772-5197-408b-a4c121b2f848}

FactoryTX includes the capability for at-rest encryption on the endpoints, which means that data is protected \(i.e., encrypted\) even when it is stored locally on the NUC or Virtual Machine. This is in addition to secure “in-flight” encryption used when transmitting data over HTTPS on local networks and the public internet.

The encrypted payload is embedded in JSON, and metadata headers including the machine and event timestamps are preserved so that the secure payload can be appropriately assigned and timestamp sorted. FieldValues are replaced by an encrypted payload, which can only be decrypted with the private key.

Multiple public/private key pairs can be used and rotated/replaced depending on the desired security policy. A Sight Machine Data Engineer will generate public/private key pairs and send a set of public keys that can be used with devices. The public key can then be assigned at the top level of the FactoryTX configuration document. For example:

```
“encryption_key”: “ssh-rsa PUBLIC_KEY_HERE”
```

When this encryption key is set, FactoryTX will automatically start data encryption of the payloads.

If you have further questions or are interested in other topics of data risk management, we would encourage you to talk to your Sight Machine account manager.

