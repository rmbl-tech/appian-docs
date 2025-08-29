---
source_url: https://docs.appian.com/suite/help/25.3/Appian_Cloud_Database_Encryption.html
original_path: Appian_Cloud_Database_Encryption.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian Cloud Database Encryption

 [![](images/appian-protect.png) Requires Appian Protect Professional Success Plan or higher](
                /suite/help/25.3/Appian_Protect.html
              )

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="bi bi-clouds" aria-hidden="true"></i></td><td><p>This page applies to Appian Cloud only. It may not reflect the differences with <a href="/suite/help/25.3/appian-government-cloud-overview.html">Appian Government Cloud</a>.</p></td></tr></tbody></table>

## Introduction

Appian Cloud environments provisioned with MariaDB as the database have the option to enable **data-at-rest encryption** in the database. This page provides an overview of the offering along with steps to leverage the feature.

**Note:**  Data-at-rest encryption is available to Appian Cloud customers on [Advanced and Premium tiers](Appian_Tiers.html).

## Feature overview

In addition to disk encryption on Appian Cloud, you can use the database encryption feature to store your data in an encrypted state at rest in the Appian Cloud. For tables that enable database encryption, data will be encrypted in real-time before being written to disk, and decrypted when database queries are executed. As a result, no unencrypted data will be persisted to disk. This provides an additional level of protection, safeguarding against unauthorized access to the filesystem or to the physical drives.

The data in your database can only be accessed via authenticated SQL queries. This feature is also referred to as **Transparent Data Encryption (TDE)**, since this form of database encryption is transparent to the application layer. Any queries performed via phpMyAdmin or other database clients will continue to show decrypted output. No Appian application changes are required to leverage the functionality.

Additionally, due to the **Bring Your Own Key** functionality with **AWS Key Management Service**, Appian will make an API call to request your Customer Managed Key in AWS to start the database. This will enable you to audit every request to start the database and empower you to disable the start up of your database in Appian Cloud. Customers who choose to use database encryption functionality will need to manage the encryption keys using their **own** AWS Key Management Service account. AWS CloudHSM Hardware Security Module (HSM) is not supported for use with data-at-rest encryption in the Appian Cloud database.

Appian Cloud leverages MariaDB's built-in data-at-rest encryption functionality with AWS Key Management Plugin. More details about the encryption feature can be found on MariaDB's [data-at-rest encryption page](https://mariadb.com/docs/server/security/securing-mariadb/securing-mariadb-encryption/encryption-data-at-rest-encryption).

## Architecture

Appian Cloud database encryption uses AWS Key Management Service to manage the keys. AWS Key Management Service exposes key functionality via an API. For the purposes of Appian Cloud, AWS Customer Managed Key can be used to control access to the database. Appian Cloud database uses your Customer Managed Key for the following purposes:

1.  To generate the data encryption key (DEK) during the first startup
2.  To decrypt the data encryption key (DEK) on subsequent restarts

The following diagrams describe the steps taken during the database startup:

[![images/db_encryption_initial.png](images/db_encryption_initial.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img205)

[![](images/db_encryption_initial.png)](#_)

[![images/db_encryption_subsequent.png](images/db_encryption_subsequent.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img206)

[![](images/db_encryption_subsequent.png)](#_)

## Steps

Perform the following steps to enable encryption on your Appian Cloud database:

| **Step** | **Description** | **Owner** |
| --- | --- | --- |
| Determine encryption parameters | Choose your encryption strength and default encryption for tables. Available parameters are described in the [setup parameters section](#setup-parameters). | Customer |
| Create a support case | Create a support case with Appian to enable database encryption. Provide details about the chosen setup parameters. | Customer |
| Generate policy statement | If it is not already created, Appian Support will create an IAM User within Appian Cloud that will be used exclusively with your Appian environment. Your technical support contact will provide you with the KMS Key Policy Statement that will need to be added to your created KMS CMK (next step). | Appian Support |
| Creation of the KMS CMK | Once your Professional or Signature Success Plan contact has provided a key policy statement, you are set to create the [KMS Customer Master Key](https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html) that will be used for database encryption. Engage your AWS Administrator to create this key and add the provided key policy statement to it. You may reference [AWS documentation](https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-modifying.html#key-policy-modifying-how-to-console-policy-view) on how to create a CMK and add this policy statement to it.
Below are the constraints for the CMK:
1.  Must be [Symmetric](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
2.  Must be created in the same AWS region as your Appian Cloud Environment

The Key Policy statement will give us permission to utilize your key in order to generate data keys and run decryption operations.
Once the CMK has been created, please post the Amazon Resource Number (ARN) into the Appian Cloud Support Case. | Customer |
| Appian Cloud environment restart | Your environment will need to be restarted in order for encryption to apply. | Appian Support |

## Setup parameters

In the support case you create to enable database encryption, you can specify the encryption parameters to override the defaults. Following parameters are available:

### Default encryption for tables

This parameter controls whether all the tables in your database are encrypted by default. Valid values are:

-   **OFF**: Only the tables manually created/altered by you with `ENCRYPTED=YES` option via a SQL statement will be encrypted. The rest of the tables in your database will remain unencrypted. `OFF` is the recommended value for the default encryption parameter if you want to encrypt only specific tables in your database. Since there is a [performance overhead](#performance-impact) for encrypting and decrypting the data, you may want to encrypt only the tables with sensitive data. For example, you can create an encrypted table using the following SQL statement:

```
1
2
3
4
CREATE TABLE t1 (
   id int PRIMARY KEY,
   name varchar(255)
) ENCRYPTED=YES
```

You can also alter an existing table to encrypt it by using the following SQL statement:

```
1
ALTER TABLE t1 ENCRYPTED=YES
```

-   **ON**: All the database tables in your Appian Cloud database will be encrypted by default, unless a table is created/altered explicitly with `ENCRYPTED=NO` option via a SQL statement. Choosing this value for default encryption parameter will also encrypt the existing database tables on your environment. This includes tables that contain your business data, and tables that contain Appian metadata. `ON` is the recommended value for the default encryption parameter if you want to encrypt the entire database, except a few large tables. For example, you can create an unencrypted table explicitly by using the following SQL statement:

```
1
2
3
4
CREATE TABLE t1 (
   id int PRIMARY KEY,
   name varchar(255)
) ENCRYPTED=NO
```

-   **FORCE**: All the database tables in your Appian Cloud database will be encrypted by default. A table cannot be created/altered with `ENCRYPTED=NO` option via a SQL statement. Choosing this option will also encrypt the existing database tables on your environment. This includes tables that contain your business data, and tables that contain Appian metadata. `FORCE` is the recommended value for the default encryption parameter if you want to ensure all the tables in your database are always encrypted.

If the default encryption parameter is not specified, the value is set to `ON` by Appian.

### Encryption algorithm

This parameter controls the encryption algorithm used to encrypt the data. Either AES 256 or AES 128 algorithm can be selected. If this parameter is not specified, the default value used by Appian is AES 256.

## Additional details

### Key rotation

-   **CMK rotation**: Use of Amazon's built-in [automatic AWS CMK rotation](https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotate-keys-how-it-works) is supported. This type of rotation maintains access to the old key for decryption regardless of the rotation of the underlying material, and also maintains the same key metadata. Manual key rotation is not supported.

**Caution:**  If you need to remove an AWS CMK, Appian recommends disabling the key instead of [deleting it](https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html). Deleting an AWS CMK will delete the key material and all associated metadata, and this action is irreversible. If encryption is not disabled prior to the CMK deletion, the encrypted data in your cloud database cannot be recovered.

To disable or delete the CMK used for Appian Cloud database encryption, open a support case.

-   **DEK rotation**: Customers can rotate the Data Encryption Key (DEK) used for encryption of database tables by executing a stored procedure. You can execute `CALL AppianProcess.rotateEncryptionKey(-1)` in phpMyAdmin to rotate all the keys. If you have created tables with specific key IDs, you can pass the key ID to the stored procedure instead of passing `-1`, to rotate that specific key.

### Disabling encryption

To disable database encryption on your Appian Cloud environment, you will need to open a support case with Appian. Your Professional or Signature Success Plan contact will guide you through the necessary steps to disable encryption.

Do **not** disable or delete your AWS CMK before you disable database encryption. If you disable this before disabling data encryption, the data encryption key (DEK) can't be decrypted and you won't be able to access your data upon site restart.

### Encryption of database logs

-   **Binary log**: When database encryption is enabled, the database the binary log produces output in encrypted format.

-   **Audit log**: Appian Cloud maintains full Cloud database audit log for compliance purposes. The database audit log does not automatically produce an encrypted output when database encryption is enabled. However, Appian will encrypt the database audit log file at an hourly interval using the same AWS Customer Managed Key as provided by the customers for database encryption. Thus, your database audit log files will not be stored in plaintext. Please note that the [Appian Cloud database requests log](Logging.html#cloud-database-requests) that captures requests to the business data source and is typically available for Appian Cloud customers in `APPIAN_HOME/logs/audit/rdbms` directory, is disabled when the database encryption is enabled. The Cloud database requests log is disabled to ensure that no data is retained on disk in plaintext.

-   **Error log**: The database error log does not produce encrypted output when encryption is enabled. However, Appian will encrypt the database error log file at an hourly interval, using the same AWS Customer Managed Key as provided by the customers for database encryption. Thus, your database error log files will not be stored in plaintext.

### Transport layer encryption

The data in transit between Appian Cloud database (MariaDB) and the clients is encrypted using the Transport Layer Security (TLS) protocol. No additional configuration is required to enable security for data in transit.

### Performance impact

A small performance impact on the database is expected when encryption is enabled. This is due to the processing that goes into encrypting and decrypting your data at runtime. Thus, it is advisable to use the database encryption feature only when strictly required for compliance reasons.

### Data sync and search server

**Note:**  Disk encryption is provided out-of-the-box by Appian Cloud and is applicable to all data stored in Appian Cloud environments. This section addresses components that do not support database encryption, which is an additional layer of protection that can be enabled on top of the out-of-the-box disk encryption.

Enabling data sync on a [record type](Record_Type_Object.html) creates a copy of your source data in Appian and leverages disk encryption provided by Appian Cloud. However, the responsible [data service](Data_Server.html) does not currently support database or data-at-rest encryption. If disk encryption is not sufficient for your use case, do not enable data sync on record types that source data from an encrypted database.

Similarly, database encryption is not available in the [search server](Search_Server.html), which indexes data to enable faster search in some areas of the product. Search server currently indexes design objects metadata, Appian user activity, [News feed](News.html) entries and CDT field names with [document extraction](Appian_Doc_Extraction.html) feature. If you use News feed features and write business data to the feed, that data will be stored in the search server. Similarly, if you use the document extraction feature, the Custom Data Type (CDT) field names and the document field names (not the values in the fields) are indexed into the search server. If the document extraction feature is used, the corresponding CDT field names will be stored in the search server.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...