---
source_url: https://docs.appian.com/suite/help/25.3/Appian_for_Enterprise_Mobility_Management_EMM.html
original_path: Appian_for_Enterprise_Mobility_Management_EMM.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian for Enterprise Mobility Management (EMM)

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Introduction

Enterprise Mobility Management (EMM) is a way for organizations to control and secure the mobile devices used by their employees. EMM practices help keep company data safe and secure while still allowing employees to work on the go as needed.

Appian Mobile provides two ways to protect business data on your users' mobile devices: mobile application management (MAM) through [Microsoft Intune](https://docs.microsoft.com/en-us/mem/intune/fundamentals/what-is-intune) and mobile device management (MDM) through Microsoft Intune or [AppConfig](https://www.appconfig.org/about.html).

## Mobile application management

Mobile application management [(MAM)](https://learn.microsoft.com/en-us/mem/intune/apps/app-management#mobile-application-management-mam-basics) provides EMM Admins granular control for managing and securing business data on users' personal devices. This is ideal for Bring Your Own Device (BYOD) deployments.

In order to use Microsoft Intune MAM capabilities with Appian Mobile, users must download the Appian for Intune app and enroll it with Microsoft Intune.

Appian for Intune protects corporate data at the application level through:

-   **[App protection policies](https://docs.microsoft.com/en-us/mem/intune/apps/app-protection-policy)** - Rules that protect or otherwise contain company data in a managed application. In the case of Appian for Intune, this could be policies that limit the ability to copy and paste, share information, or download and upload data while using the app.
-   **[App configuration policies](https://learn.microsoft.com/en-us/mem/intune/apps/app-configuration-policies-overview)** - Allow you to configure policies that are assigned before a user runs an app. The policy settings are automatically applied and the end-user doesn't need to take action.
-   **[App-based Conditional Access policies](https://learn.microsoft.com/en-us/mem/intune/protect/app-based-conditional-access-intune)** - App protection policies can work in combination with [Microsoft Entra](https://www.microsoft.com/en-us/security/business/identity-access/microsoft-entra-id) (formerly Azure Active Directory) Conditional Access capabilities. [Conditional Access](https://learn.microsoft.com/en-us/mem/intune/protect/conditional-access) uses certain criteria, like user or group membership, to make decisions and enforce policies. The combination of these Microsoft Entra ID capabilities with app protection policies is referred to as app-based Conditional Access.

MAM through Microsoft Intune can be used on company-owned devices and personal devices. If you are using Microsoft Intune for MDM, Appian for Intune will prioritize MAM policies over MDM policies.

### Configuring Appian for Intune with Microsoft Endpoint Manager

The [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431) is where you can find the Microsoft Intune service, as well as other device management related settings.

To configure Appian for Intune for your organization, sign into [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431) and follow the steps listed [here](https://docs.microsoft.com/en-us/mem/intune/apps/app-protection-policies#app-protection-policies-for-iosipados-and-android-apps).

To add the Appian for Intune app:

1.  On the Apps page, click **Select public apps**.
2.  Under **Select apps to target**, search for `Appian for Intune` and select to add it. This applies to both iOS and Android.

Once the app has been added, you can enforce Microsoft Intune app protection policies, app configuration policies, and app-based Conditional Access policies to manage and protect your organization's data.

## Mobile device management

Mobile device management (MDM) allows EMM admins to manage the security, policy, and provisioning requirements on fully managed devices. This is ideal for deployments on company-owned devices.

The Appian Mobile application can be configured and managed through any of the [EMM vendors](https://www.appconfig.org/members.html) that comply with the [AppConfig](#what-is-appconfig) standards.

If you are using Microsoft for Intune for both MDM and MAM, use the Appian for Intune app. If you are only using MDM, whether through Microsoft Intune or an AppConfig provider, your users can use the Appian Mobile app.

EMM Administrators can set configurations for the Appian Mobile application directly through the EMM provider.

Some examples of configurations that can be set include:

-   **Data Encryption**: Ensures that any data persisted on the device is automatically encrypted.
-   **Remote Wipe**: Allows the EMM administrator to remotely wipe device data.
-   **Prevent Application Backup**: Prevents users from backing up application data.
-   **Application Tunnel**: Allows for approved applications to use a per-app VPN tunnel to connect to your corporate networks.
-   **Disable Screen Capture**: Prevent users from taking screenshots of the application.

### What is AppConfig?

The [AppConfig Community](https://www.appconfig.org/about.html) is a collection of industry leading [EMM solution providers and app developers](https://www.appconfig.org/members.html) that have come together to make it easier for developers and customers to drive mobile adoption in business. The community's mission is to streamline the adoption and deployment of mobile enterprise applications by providing a standard approach to app configuration and management, building upon the extensive security and configuration frameworks available in the mobile operating systems.

## Custom configurations

The following table lists additional custom configurations that are available for Appian Mobile. These configuration keys are defined in the admin console for your EMM provider and are normally stored as part of a profile assigned to the application. The EMM Admin has the ability to update the configurations over the air at any point without requiring the application to be reinstalled.

These custom configurations can be configured for either MAM or MDM deployments.

| Configuration | Description | Key | Type | Default Value |
| --- | --- | --- | --- | --- |
| Suggested Servers | A list of servers presented to the mobile user to select from when creating a new account. | `suggestedServers` | _String_ (comma separated value of server addresses) | `{}` (No servers presented to the user) |
| Prevent Copy Paste (iOS) | Disables the ability to copy from, or paste into any fields in the application.

**Note:** This property only applies to iOS. Copy and paste operations on Android are automatically restricted to applications in the [work profile.](https://developer.android.com/work/managed-profiles) | `copyPasteProtection` | _Boolean_ | `False` (Copy-paste is allowed by default) |
| Open Custom Camera App | The name of an intent for a custom camera app. Use this if you want the Appian Mobile app on Android devices to open a custom camera app instead of the default camera app. | `openCustomCameraApp` | _String_ | `{}` (No intent specified) |
| Prompt for Passcode on Launch | Forces users to provide a user-defined passcode every time they launch the app. | `promptPasscodeOnLaunch` | _Boolean_ | `FALSE` |
| Prompt for Passcode on Idle | Forces users to provide a user-defined passcode when application has been backgrounded for greater than the specified time (in minutes) and on every launch. | `promptPasscodeOnIdleTimeout` | _Int_ | `-1` (Don't prompt for passcode when application is backgrounded) |
| Shared Device | Indicates if the mobile device is shared among multiple users. When enabled, Appian includes a `ForceAuthn` parameter on the request to the SAML provider. This informs the SAML provider that it should reauthenticate the user, regardless of whether or not they are remembered. Only affects remember me that is configured directly with the SAML identity provider; does not affect [remember me](Authentication.html#remember-me-authentication) configured in Appian. | `isDeviceShared` | _Boolean_ | `False` |
| Enable Client Certificate Access | Enables an option on the accounts screen that allows users to import a certificate into the mobile app. The certificate is used to ensure secure access to the server from authorized clients.

On iOS, the certificate can be imported from any application that acts as a [Document Provider](https://developer.apple.com/library/archive/documentation/General/Conceptual/ExtensibilityPG/FileProvider.html#//apple_ref/doc/uid/TP40014214-CH18-SW1).
On Android, the certificate can only be imported from the device's trusted credential store. | `enableClientCertificates` | _Boolean_ | `False` |
| Default Browser | Specifies the browser to be used exclusively by the mobile app (during authentication and for opening links to external web pages).

**Note:** Authentication and links are blocked if the specified browser is not found on the device.

To allow the MDM browser to redirect to Appian, you need to specify the following URL schemes in your MDM console:

**Appian - iOS App**
\-`appian`
\-`appianauth`
\-`com.appian.tempo`

**Appian for Intune - iOS App**
\-`appian`
\-`appianauth`
\-`com.appian.tempo.intune`
\-`msauth.com.appian.tempo.intune`

**Appian - Android App**
\-`appian`
\-`appianauth`
\-`com.appian.android`

**Appian for Intune - Android App**
\-`appian`
\-`appianauth`
\-`com.appian.android.intune`
\-`msauth` | `defaultBrowser` | _String_
(from the following list)
\- [access](https://www.blackberry.com/us/en/products/blackberry-dynamics/blackberry-access)
\- [airwatch](https://www.vmware.com/products/workspace-one/enterprise-mobile-browser.html)
\- [citrix](https://www.citrix.com/platform/citrix-secure-private-access/enterprise-browser.html)
\- [chrome](https://www.google.com/chrome/)
\- [maas360](https://www.ibm.com/support/knowledgecenter/SS8H2S/com.ibm.mc.doc/mmb_source/concepts/mmb_overview.htm)
\- [mobileiron](https://www.mobileiron.com/sites/default/files/Datasheets/WebATWorkEnterpriseMobileBrowser/MobileIron_Web%40Work_datasheet__EN-US-v2.pdf)
\- [opera](https://www.opera.com/)
\- [edge](https://www.microsoft.com/en-us/edge) | `{}` (No browser specified. Defaults to using `Safari` on iOS, and `Chrome` on Android) |
| Enable Print to PDF | Adds a printer icon to tasks and actions which allows users to create a PDF of the UI to share or print. | `enablePrintToPdf` | _Boolean_ | `True` |

### Applying custom configurations

This section explains how to enable the following custom configurations on the Appian mobile application through the BlackBerry Unified Endpoint Management (UEM) console:

-   Suggested Servers
-   Prompt for Passcode on Launch

Refer to the documentation of your EMM provider for further instructions if needed.

#### Configuring the iOS application

1.  Select the Appian iOS application from your BlackBerry UEM console.

    ![/Appian EMM iOS1](images/Appian_EMM_iOS1.png)

2.  Scroll to the bottom of the **Settings** tab. There should be a section for **App Configuration**. This is where you can specify the custom configurations you want to enable for the application.

    ![/Appian EMM iOS2](images/Appian_EMM_iOS2.png)

3.  Click on the **+** icon and choose the option to **Configure manually**.

    ![/Appian EMM iOS3](images/Appian_EMM_iOS3.png)

4.  Specify a name for the App Configuration. Click on the **+** icon and select option **String**.

    ![/Appian EMM iOS4](images/Appian_EMM_iOS4.png)

5.  Set the key to **suggestedServers**. The value to specified here should be a comma separated value of server addresses.
    -   In this example, we will be setting up a single server with URL **https://forum.appian.com**.
6.  Click on the **+** icon and select option **Boolean**. Set the key to **promptPasscodeOnLaunch**. Set the value to be true. Once you are done configuring these properties the configuration should look as shown below.

    ![/Appian EMM iOS5](images/Appian_EMM_iOS5.png)

7.  Save the configuration with the application. You can then assign the application along with the configuration to your users.

    ![/Appian EMM iOS6](images/Appian_EMM_iOS6.png)

These configurations take effect after the Appian mobile application is pushed to the device. Any updates to these configurations will be automatically applied when the application is relaunched.

#### Configuring the Android application

1.  Select the **+** icon from under App Configuration section when adding the application to your BlackBerry UEM console.

    ![/Appian EMM DR1](images/Appian_EMM_DR1.png)

2.  Specify a name for the App Configuration.
3.  Under **Suggested Servers**, specify a comma separated value of server addresses. In this example, we will be setting up a single server with URL **https://forum.appian.com**.
4.  Check the option **Prompt Passcode on Launch Enabled**. Once you are done configuring these properties the configuration should look as shown below.

    ![/Appian EMM DR2](images/Appian_EMM_DR2.png)

5.  You can then assign the application along with the configuration to your users.

    ![/Appian EMM DR3](images/Appian_EMM_DR3.png)

    These configurations take effect after the Appian mobile application is pushed to the device. Any updates to these configurations will be automatically applied when the application is relaunched.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...