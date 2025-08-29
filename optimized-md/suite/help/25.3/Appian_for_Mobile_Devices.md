---
source_url: https://docs.appian.com/suite/help/25.3/Appian_for_Mobile_Devices.html
original_path: Appian_for_Mobile_Devices.html
version: "25.3"
title: "Appian Mobile"
page_id: "Appian_for_Mobile_Devices"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian Mobile

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Appian Mobile enables users to monitor, collaborate, and take action on the go by providing access to task and event notifications, up-to-date business information, and ad-hoc collaboration, all from the convenience of their iOS and Android devices.

[![Appian Mobile Example](images/Appian_Mobile_iOS_DR.jpg)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img322)

[![](images/Appian_Mobile_iOS_DR.jpg)](#_)

All you need to do to begin working with Appian Mobile is download the app from the [iOS App Store](https://itunes.apple.com/us/app/appian/id417065205?mt=8) or the [Google Play Store](https://play.google.com/store/apps/details?id=com.appian.android) and [create your account](Creating_and_Managing_Mobile_Accounts.html).

**Note:**  Appian Mobile relies on mobile operating system features to secure data within the Appian application. Customers who require strong assurance of confidentiality between users should not allow users to share the same mobile device, particularly if they are utilizing [offline mobile](offline-mobile-overview.html) features.

See also: System Requirements for [Mobile devices](System_Requirements.html#mobile-devices)

## Appian for enterprise mobility management

Enterprise mobility management (EMM) is a way for organizations to control and secure the mobile devices used by their employees. EMM practices help keep company data safe and secure while still allowing employees to work on the go as needed. See [Appian for Enterprise Mobility Management (EMM)](Appian_for_Enterprise_Mobility_Management_EMM.html) for more information.

## Custom mobile applications

Administrators and developers can customize different aspects of Appian Mobile to create a different look and feel that mirrors your organization's style in end-user interfaces. See [Custom Mobile Applications](Custom_Mobile_Applications.html) for more information.

## Network communication requirements

The Appian Mobile application must have access to the Appian server. See [Mobile Authentication Requirements](Mobile_Authentication_Requirements.html) for more information.

## Hardware recommendations

We recommend that users access Appian Mobile using mobile devices with a minimum 4 gigabytes (GB) of RAM. Depending on your Appian Mobile use case, you may want to use mobile devices with higher RAM, such as 8 GB, to support the needs of your applications.

For example, we recommend using mobile devices with more RAM if using Appian Mobile for a use case that includes any of the following:

-   [Offline mobile](offline-mobile-overview.html).
-   Many [file upload](File_Upload_Component.html) components on an interface.
-   Many images on an interface.

## Client authentication

Appian Mobile supports Appian, LDAP, and SAML [authentication](Authentication.html) mechanisms. It does not support SAML IdP-initiated sign in or client certificate authentication (CAC/PIV, smartcard).

When [creating an account](Creating_and_Managing_Mobile_Accounts.html) the mobile client presents the appropriate sign in screen to the user in an in-app browser. After users have successfully authenticated from the in-app browser, they are automatically redirected back to the mobile application. Users are required to go through this sign in workflow every time their session expires. Session expiration is controlled by the Appian server's authentication layer.

[![Appian Mobile Login](images/Appian_Mobile_Login.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img323)

[![](images/Appian_Mobile_Login.png)](#_)

When a user signs in to Appian Mobile on an iOS device, the operating system will prompt them to grant the application access to the site’s data in Safari.

## Client Certificate Access

With client certificate access, users can import a certificate into the mobile app. The certificate is used to ensure that access to the Appian server on the organization's internal network is restricted to clients that can provide a valid certificate when presented with a certificate challenge.

The validity of the digital certificate is typically ascertained by a network security service (gateway) that is responsible for keeping out unauthorized traffic from the organization's network.

The feature can be enabled on Appian Mobile applications deployed through an enterprise mobility management provider using a [custom configuration](Appian_for_Enterprise_Mobility_Management_EMM.html#custom-configurations). When enabled, the option to import a certificate into the mobile app is made available on the **Accounts** screen.

![Appian Mobile ClientCertAccess](images/Appian_Mobile_ClientCertAccess.png)

For the Appian Mobile iOS application, the certificate can be imported from any application that acts as a Document Provider. For the Appian Mobile Android application, the certificate can only be imported from the device's trusted credential store.

The imported certificate is automatically presented by the mobile app any time it receives a certificate challenge. After validating the certificate, the gateway forwards mobile app requests to the Appian server.

### Derived credentials

Client Certificate Access can also be used to access derived credentials (certificates derived from user's smart card credentials) deployed by providers like [Purebred](https://public.cyber.mil/pki-pke/purebred/), used by the Department of Defense (DoD).

**Tip:**  Purebred is a managed registration service to deploy and configure user certificates on mobile devices. Similar to using a common access card (CAC), mobile devices enrolled using the Purebred registration process can be used to perform security functions on DoD information systems such as authentication, authorization, and generation of digital signatures.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...