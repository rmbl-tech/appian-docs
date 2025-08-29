---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/manage-credentials.html
original_path: rpa-9.17/manage-credentials.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Manage Credentials

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Credentials are a secure way to store usernames and passwords that robotic tasks might need to log in to external systems. You can use the Appian RPA console to store, reference, and update credentials.

All RPA credentials use AES 256-bit encryption, and follow the [FIPS Security Model for Cryptographic Modules](https://csrc.nist.gov/csrc/media/publications/fips/140/2/final/documents/fips1402annexa.pdf) standard. When credentials are created or updated, they are securely encrypted and stored in a database. The encryption key used for credentials is unique not only to each environment, but also separate from the other keys that are used to encrypt other fields. Each key is stored securely in the Java KeyStore, the password for which is uniquely generated at site startup.

## Screen layout

In the toolbar on the **Robotic tasks** tab, click the **Credentials** icon to manage credentials:

![rpa-toolbar-credentials.png](images/rpa-toolbar-credentials.png)

The **List of credentials** displays the credentials defined in the console, and allows you to perform different actions on them.

![rpa-credential-list.png](images/rpa-credential-list.png)

This list includes the following information:

-   **Application**: The name of the application associated with the credentials.
-   **Username**: Username value stored with the credential.
-   **Password**: Password value stored with the credential (this will always appear as `[PROTECTED]` to ensure security).
-   **Active**: Shows whether a credential is active.
-   **Use**: How many times a specific credential is being used out of the maximum. Click the **Update maximum use** icon to limit to how many times the credential can be used at a single time by robotic task executions. A credential's use has no maximum limit unless you add one.
-   **Actions**: Delete a credential or modify its permissions.
-   **Permissions**: [Permissions](security-rpa.html) associated with the credential.

## Create credentials

To create credentials:

1.  Go to the **Credentials editor**.
2.  Enter the **Application**, **Username**, **Password**, and **Permissions** for the credential. For more details on each of these components, [see the list above](#overview).
3.  Click **Save**.

![rpa-credential-editor.png](images/rpa-credential-editor.png)

## Update credentials

To update credentials:

1.  In the **List of credentials**, find the credential entry you want to update.
2.  Click the **Update password** icon next to `[PROTECTED]` to update the password for a credential entry.

## Delete credentials

To delete credentials:

1.  In the **List of credentials**, find the credential entry you want to delete.
2.  Click **Delete credential** in the **Actions** column.

## Add credentials to a robotic task

You can use low-code actions to add credentials to your robotic task. Use the [Interact with Element method](actions-browser.html#interact-with-element) in a robotic task to input credentials in a web browser, or use the [Type text method](actions-keyboard.html#type-text) when the robotic task logs into an application. You can also use the Windows Automation module's [Interact with Element](actions-windows-automation.html#interact-with-element) method to input credentials into Windows applications.

**Note:**  Never store usernames, passwords, or other sensitive information as plain text. If you use the [task recorder](task-recorder.html) to record login actions, remember to always remove the username and password values before saving the recording and update the generated actions to use credentials.

### Assign permissions to login credentials

Access to credentials is controlled through [permissions](security-rpa.html). A robotic task must have at least one permission in common with the credentials it needs to use.

To assign or modify permissions for credentials:

1.  Go to the **Robotic tasks page**.
2.  Click on the **Credentials** icon in the toolbar.
3.  In the **List of credentials**, click the **Permissions** icon ![2229048.png](./images/2229048.png) in the **Actions** column.
4.  In the window, assign new permissions or remove existing ones in the **Permissions** field. ![rpa-permission-tags.png](./images/rpa-permission-tags.png)
5.  Click **OK**.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...