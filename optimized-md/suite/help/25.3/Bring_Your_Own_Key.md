---
source_url: https://docs.appian.com/suite/help/25.3/Bring_Your_Own_Key.html
original_path: Bring_Your_Own_Key.html
version: "25.3"
title: "Appian Cloud Disk Encryption"
page_id: "Bring_Your_Own_Key"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian Cloud Disk Encryption

 [![](images/appian-protect.png) Requires Appian Protect Advanced or higher](
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

## Overview

Disk encryption protects information stored on computer disks by encrypting every bit of data. It transforms human-readable information on the drive to unreadable, seemingly randomized characters. If an encrypted disk is lost or stolen, the disk remains encrypted, and only authorized users are able to access and decipher its contents.

This page provides information about [standard disk encryption](#appian-cloud-standard-disk-encryption) for Appian Cloud. It also documents the [Bring Your Own Key (BYOK)](#bring-your-own-key-for-advanced-or-enterprise-support-customers) feature for Advanced or Enterprise Support customers who want to manage their own encryption keys.

Appian Cloud also offers [database encryption](Appian_Cloud_Database_Encryption.html) for customers who want to add an extra layer of encryption at the database level.

## Appian Cloud standard disk encryption

Appian uses full disk encryption in Appian Cloud. Data at rest is protected for Appian Cloud environments at the disk level using industry standard algorithms, such as AES, at key lengths considered to be strong for that algorithm. For example, 128-bit or 256-bit.

Disk encryption covers all data stored on disk in Appian by all Appian features. All the disks that contain your data will be encrypted and their encryption keys stored in a secured location within Appian Cloud.

## Bring Your Own Key for Advanced or Enterprise Support customers

**Note:**  The Bring Your Own Key (BYOK) feature is only available to customers that are on [Professional or Signature Success Plans](https://www.appian.com/customer-success/customer-support/). This functionality is not included in the base Appian platform.

Appian Cloud provides Bring Your Own Key (BYOK) for disk encryption and other data services using AWS Key Management System (KMS). With BYOK, you have decryption control of the disk and data services that contain your data. This page provides a summary of the offering and procedural steps to guide you through the process.

Appian Cloud data encryption supports the use of AWS Key Management Service (KMS) hosted in the same region as your Appian Cloud environment(s).

### AWS Key Management Service (KMS)

Amazon's Key Management Service allows you to abstract away the complexity of other BYOK options by exposing the key functionality via an API. You may use an AWS Customer Master Key (CMK) to control access to your environments.

#### Architecture

In this configuration, Appian Cloud utilizes your AWS CMK in 2 ways:

1.  Generating the Data Key to use for encryption of your data.
2.  Decrypting the generated data key.

Appian Cloud leverages the KMS API to generate a data key using your CMK. This data key is used to encrypt your data, and all encryption operations occur on the Appian Cloud environments that store your data. Invocation of the KMS API to generate and decrypt the data key also occurs on the Appian Cloud environments. Upon migration to a BYOK setup, Appian will programmatically generate a data key and store the encrypted copy in a secure credential store within Appian Cloud.

After the data for your Cloud environment instance(s) has been encrypted, it will be decrypted on each subsequent startup of your environment.

#### Updates to Key Policies with IAM Roles

To enhance security, reliability, and support new features, Appian is transitioning from using IAM Users to IAM Roles for Bring Your Own Key (BYOK) functionality. This new architecture extends BYOK support beyond disk encryption to include distributed site data sources such as S3 object storage. This functionality enables broader encryption support for new Appian Cloud features such as Autoscaling Processes. To take advantage of these new capabilities, BYOK customers must update their key policies.

Existing BYOK customers will append the new statements to their key policy. This is because [Appian Cloud Database Encryption](Appian_Cloud_Database_Encryption.html) still uses the IAM user, and some disk encryption dependencies are still in transition. New BYOK customers will also have an IAM user created for them as it is still required for Appian Cloud Database Encryption.

#### Steps

| **Steps** | **Description** | **Organizational Role** |
| --- | --- | --- |
| Create a support case | Open a support case with Appian Support to enable Bring Your Own Key.
Include the following information:
1.  **Configuration option**: AWS KMS

 | Your Business Relationship Owner |
| Generate policy statement | Appian Support will create an IAM User within Appian Cloud and provide you with the KMS Key Policy Statement. This statement will need to be added to your created KMS CMK. | Appian Support |
| Creation of the KMS CMK | Once you have the key policy statement, engage your AWS Administrator to create a KMS Customer Master Key and add the provided key policy statement to it. The CMK must be Symmetric and created in the same AWS region as your Appian Cloud environment. The key policy statement gives Appian permission to utilize your key to generate data keys and run decryption operations. Once the CMK has been created, post the Amazon Resource Number (ARN) into the Appian Cloud Support Case. | Your AWS Administrator |

### F.A.Q.

#### How can I enable BYOK on my environments?

Please follow the prerequisites listed above. Contact Appian Technical Support with any questions.

#### Can BYOK be used on existing environments?

Yes, BYOK can be configured on existing environments. All data from the existing environment will need to be re-encrypted with the new encryption key, which requires close coordination with Appian Technical Support during the transition.

#### What are some of the benefits of utilizing IAM Roles instead of IAM Users? This new architecture provides the following benefits:

-   **Reduced Credential Exposure:** IAM roles enable secure delegation of access without the need to handle or store permanent user credentials.
-   **Enhanced Security Posture:** The temporary nature of role-based credentials and automatic rotation reduce the attack surface.
-   **Follows Principle of Least Privilege:** Roles facilitate more effective implementation of the principle of least privilege by defining precise and temporary permissions.
-   **Improved Visibility and Auditing:** Customers can audit the usage of their KMS keys using AWS CloudTrail.

#### Will I need to update my policy or make changes on my end again in the near-future?

The goal of this architecture change is to make BYOK easier to manage on the customer's end. By granting access to the Appian Cloud Organizational Unit, there should be few reasons for additional changes in the foreseeable future.

#### What happens if I can’t update my policy now to support the new key policy?

New features and services are being built to only support IAM Roles for BYOK access instead of IAM Users. Starting in the 25.3 release, there are new features like AWS S3 object storage and Autoscaling Processes, with more planned in the future that you will not be able to take advantage of until you have updated your policy so that Appian can continue to protect your data with your CMK. 

#### Does Appian keep a copy of your encryption key?

Appian Cloud will only store the encrypted Data Encryption Key. If Appian is unable to unwrap or decrypt the Data Encryption Key, Appian won't be able to decrypt the disk storing your data and the environment will be unavailable.

#### What happens if the key is lost?

If the key is lost, all the data, including all backups, would be unrecoverable.

#### Does Appian request decryption of the data key(s) for every read/write operation?

No, decryption of Data Encryption Key(s) is not necessary after the disk is open, which occurs on each startup of your environment. The decrypted Data Encryption Key will remain in kernel memory for read and write operations.

#### Is key rotation supported?

Use of Amazon's built-in [automatic CMK key rotation](https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotate-keys-how-it-works) is supported for the AWS KMS configuration only. This type of rotation maintains access to the old key for decryption regardless of the rotation of the underlying material, and also maintains the same key metadata. Manual key rotation is not supported.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...