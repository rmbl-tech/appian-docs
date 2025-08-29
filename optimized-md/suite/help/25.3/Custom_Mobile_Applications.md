---
source_url: https://docs.appian.com/suite/help/25.3/Custom_Mobile_Applications.html
original_path: Custom_Mobile_Applications.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Custom Mobile Applications

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Appian lets you create a custom version of the Appian mobile application with your organization's colors, icons and introductory experience using the self-service [Mobile Branding](https://forum.appian.com/suite/sites/mobile-branding) application on Appian Community.

To create a custom version of the Appian mobile application for your organization, follow these steps:

-   [Overview](#overview)
-   [Enroll in a mobile developer program](#enroll-in-a-mobile-developer-program)
    -   [iOS Applications](#ios-applications)
    -   [Android Applications](#android-applications)
-   [Create a mobile application request](#create-a-mobile-application-request)
    -   [New iOS App](#new-ios-app)
        -   [Upload Provisioner File](#upload-provisioner-file)
    -   [Android & iOS Configuration Settings](#android--ios-configuration-settings)
-   [Sign your unsigned mobile application](#sign-your-unsigned-mobile-application)
    -   [Android Signing](#android-signing)
    -   [iOS Signing](#ios-signing)

**NOTE**: When a new version of an Appian for Mobile Devices application is released, you must request a new build from Appian. This includes going through the Apple or Android review process if your deployment approach requires it.

## Enroll in a mobile developer program

### iOS Applications

There are two different approaches your organization can take in order to enroll into the mobile developer program for iOS. The approach that's best for your organization depends on the level of in-house development experience your organization has with iOS applications, how you want your users to access the application, and how quickly you want the application to be available.

1.  **Public Deployment**
    -   The application is published to the App Store for any iOS user to install it.
    -   Your organization acts as the publisher by submitting it to Apple.
    -   Pre-release testing is possible via [TestFlight](https://developer.apple.com/testflight/) in the Apple Developer Program.
    -   The application (and each new version) must go through the Apple review process before it is published. This may take more than a week.
    -   The application becomes available for all users to install when Apple approves it. It is possible to delay availability by specifying a future release date when submitting the application.
    -   Requirements include the following:
        -   Membership in the [Apple Developer Program](https://developer.apple.com/programs/).
        -   Access to a development environment that satisfies the minimum requirements for iOS application development.
        -   In-house development expertise related to submitting applications to the App Store.
        -   An account in your Appian instance that Apple's App Store reviewer can use to test the application.
2.  **Enterprise Deployment**
    -   The application is not added to the App Store and not available to the general public.
    -   Your organization has control over and is responsible for how the application installer is distributed to employees, such as via a web page link, email attachment, etc.
    -   The application (and each new version) does **not** need to go through Apple's review process. This speeds up the time it takes before it is available to your employees.
    -   Your organization can install the application on an unlimited number of internal devices (those belonging to your organization or its employees) for testing.
    -   Requirements include the following:
        -   Membership in the [Apple Developer Enterprise Program](https://developer.apple.com/programs/enterprise/).
        -   Minimal in-house development experience related to iOS application distribution procedures, potentially including signing of applications.
        -   Infrastructure for notifying users of new versions of the application and distributing the installer for updates.

### Android Applications

There are several distribution options available to you: the app marketplace, email, or an internal website. More details can be found in Google's [alternative distribution options](https://developer.android.com/distribute/marketing-tools/alternative-distribution).

1.  **App Marketplace**
    -   The application is published to the Google Play Store for any Android user to install it.
    -   Appian provides you a branded application that must be signed using your organization's [signing or upload key](https://support.google.com/googleplay/android-developer/answer/7384423?hl=en).
    -   Your organization acts as the publisher by submitting the app to Google.
    -   Pre-release testing is possible via a [closed or internal test group](https://support.google.com/googleplay/android-developer/answer/3131213) in the Android Play Console.
    -   The application (and each new version) must go through the Google review process before it is published. This may take a few hours.
    -   Membership in the [Android Developer Program](https://play.google.com/apps/publish/signup) is required.
2.  **Email or Internal Website**
    -   The application is not added to the Google Play Store and not available to the general public.
    -   Your organization has control over and is responsible for how the application installer is distributed to employees, such as via a web page link, email attachment, etc.
    -   The application (and each new version) does **not** need to go through Google's review process. This speeds up the time it takes before it is available to your employees.
    -   Your organization can install the application on an unlimited number of internal devices (those belonging to your organization or its employees) for testing.
    -   Your users must [_opt-in_ for installing unknown apps](https://developer.android.com/distribute/marketing-tools/alternative-distribution#unknown-sources) in order to install apps from a webpage or an email. Note: _this allows applications to be installed from any source, not just your organization's application_.

## Create a mobile application request

Visit the [Mobile Branding](https://forum.appian.com/suite/sites/mobile-branding) site on Appian Community and select whether or not you wish you create an iOS application and/or an Android application.

![](images/mobile_branding/mobile-branding-main.png)

Click either the "+ New Android App" or "+ New iOS App" depending on the OS you wish your application to run on.

### New iOS App

Because an iOS requires information on how it will be code signed, the beginning of the process is different than when creating a new Android app.

![](images/mobile_branding/ios/mobile-branding-ios-start.png)

#### Upload Provisioner File

Provide the name of the particular app configuration and upload a `Provisoner File`.

**Note:**  In order to build a branded iOS application, Appian requires [code signing](https://support.apple.com/guide/security/app-code-signing-process-sec7c917bf14/web) information.

For applications that you want Appian to sign for you, this information is in the form of a Certificate, Provisioning Profiles, a locked Keychain, and an encrypted Keychain password that is only accessible by Appian's automated build system.

For applications that you intend to sign, this information is in the form of a Provisioning Profile and Certificate metadata. This data is not sensitive and is easily viewable in a mobile application downloaded from Apple's App Store.

When you finish running the Appian Provisioner, it bundles this information into a file that we will call the provisioner file.

**Note:**  The Appian Provisioner sends your Apple Developer account credentials only to Apple, and no other system.

To create the provisioner file:

**Note:**  This must be done on a Mac.

1.  Download the [Appian Provisioner tool](https://appian-docs.s3.amazonaws.com/AppianProvisioner.dmg).
2.  Double-click the `AppianProvisioner.dmg` to mount the virtual disk image.

![](images/mobile_branding/ios/appian_provsioner_diskimage.png)

1.  Double-click the `Provisioner` application and follow the prompts to create the files required by Appian to create your custom mobile application.

    **Note:**  Any sensitive data is encrypted.

2.  Upload the generated file to the `Provisioner File` file upload field on the `Upload Provisioner File` page and click `Next`.

For more information on the Appian Provisioner tool, please view the [Appian Provisioner docs](Appian_Provisioner.html) as well as the video tutorial:

### Android & iOS Configuration Settings

![](images/mobile_branding/android/mobile-branding_configure-android.png) ![](images/mobile_branding/ios/mobile-branding_configure-ios.png)

Follow the instructions for each field on the `Configure Settings` page.

If you wish to use your own icons, you must adhere to these requirements:

1.  All images must be provided, each using the PNG format.
2.  All images must have the correct dimensions. For example, for the image field `100 x 35`, must be 100 points wide by 35 points high.
3.  The iOS icons and Android Launcher images may not have any transparency.
4.  For iOS, images should not have any rounded corners or effects as the OS handles that.

Once completed, click the `Next` button at which point you'll be presented with a `Confirm` page.

Review the configurations, and, if everything is correct, click `Submit` to save the application configuration and to issue a request for a new branded build.

This request will be processed automatically in minutes. Once it is complete, you will receive an email notification and you will be able to download your mobile application via the Mobile Branding site.

If you requested the app be signed, it will be ready to be distributed immediately. If you requested an unsigned app, you will need to sign it before it can be distributed.

![](images/mobile_branding/mobile-branding-main-1-build.png)

**Note:**  If you are submitting a new app to Google Play, you are now required to use the [Android App Bundle (.aab)](https://developer.android.com/guide/app-bundle) file format. You may continue to use the Android Application Package (.apk) file format in the following scenarios:

-   You are updating an existing app on Google Play.
-   You are [distributing your app outside of Google Play](https://developer.android.com/distribute/marketing-tools/alternative-distribution).

We will provide you with a ZIP file containing both the AAB and APK files.

## Sign your unsigned mobile application

### Android Signing

1.  [Download Android Studio](https://developer.android.com/studio)
2.  [Sign your application](https://developer.android.com/studio/publish/app-signing)

#### Privacy Disclosures (Applicable only to Android app deployed on the Google Play Store)

Google requires applications deployed on the Google Play Store to explain their [privacy and security practices](https://support.google.com/googleplay/android-developer/answer/10787469). You are required to provide a data disclosure for your app through the Google Play Console before you can submit new apps and updates to the Google Play Store. The following table outlines the data disclosures for the Appian Mobile app that you can use to provide information about your app’s privacy practices:

| Question Label | Response Value |
| --- | --- |
| Does your app collect or share any of the required user data types? | True |
| Is all of the user data collected by your app encrypted in transit? | True |
| Do you provide a way for users to request that their data is deleted? | True |
| App info and performance / Crash logs | True |
| App info and performance / Diagnostics | True |
| App activity / App interactions | True |
| Data usage and handling (Crash logs) / Is this data collected, shared, or both? / Collected | True |
| Data usage and handling (Crash logs) / Is this data processed ephemerally? | False |
| Data usage and handling (Crash logs) / Is this data required for your app, or can users choose whether it's collected? / Data collection is required (users can't turn off this data collection) | True |
| Data usage and handling (Crash logs) / Why is this user data collected? Select all that apply. / Analytics | True |
| Data usage and handling (Diagnostics) / Is this data collected, shared, or both? / Collected | True |
| Data usage and handling (Diagnostics) / Is this data processed ephemerally? | False |
| Data usage and handling (Diagnostics) / Is this data required for your app, or can users choose whether it's collected? / Users can choose whether this data is collected | True |
| Data usage and handling (Diagnostics) / Why is this user data collected? Select all that apply. / Analytic | True |
| Data usage and handling (App interactions) / Is this data collected, shared, or both? / Collected | True |
| Data usage and handling (App interactions) / Is this data processed ephemerally? | False |
| Data usage and handling (App interactions) / Is this data required for your app, or can users choose whether it's collected? / Data collection is required (users can't turn off this data collection) | True |
| Data usage and handling (App interactions) / Why is this user data collected? Select all that apply. / Analytics | True |

### iOS Signing

**Note:**  This must be done on a Mac. Choose this option if you would rather manage your signing credentials yourself.

You will need a keychain with an Apple certificate and a private key. The private key's Access Control's allowed applications must include `codesign` and `security`. ![Keychain Access Control's allowed applications](images/mobile_branding/ios/private-key-access-control.png)

Once you have your keychain setup, follow these steps:

1.  Download the [AppianSigningTool](https://appian-docs.s3.amazonaws.com/AppianSigningTool.dmg).
2.  Double-click the `AppianSigningTool.dmg` to mount the virtual disk image.

![](images/mobile_branding/ios/appian_signing_tool_diskimage.png)

1.  Double-click the `SigningTool` application and follow the prompts to sign the unsigned ipa that Appian Support provided you.

**Note:**  The Appian Signing Tool runs locally on your Mac computer. At no point does Appian have access to the certificate, private key or private key password required to sign your mobile application.

#### Privacy Disclosures (Applicable only to iOS apps deployed on the App Store)

Apple requires applications deployed on the App Store to explain their [data handling and privacy practices](https://developer.apple.com/app-store/app-privacy-details/). The following table summarizes the data disclosures for the Appian Mobile app:

| Category | Data Type | Data Usage |
| --- | --- | --- |
| Identifiers | User ID | App Functionality |
| Usage Data | Product Interaction | Analytics |
| Usage Data | Other Usage Data | Analytics |
| Diagnostic | Crash Data | App Functionality |
| Diagnostic | Other Diagnostic Data | App Functionality |

You are required to provide a similar data disclosure for your app through App Store Connect before you can submit new apps and updates to the App Store. Follow these steps to provide information about your app’s privacy practices:

1.  Log in to [App Store Connect](https://appstoreconnect.apple.com/login) and select your application.
2.  From the **App Privacy** section, click **Get Started**.
3.  Select `Yes, we collect data from this app`. Click **Next**.
4.  Select the following data types:
    -   From the **Identifiers** section, select `User Id`.
    -   from the **Usage Data** section, select `Product Interaction` and `Other Usage Data`.
    -   From the **Diagnostic** section, select `Crash Data` and `Other Diagnostic Data`. Click **Save**.
    -   This should result in the creation of the five sections, one for each of the selected data types (User ID, Product Interaction, Other Usage Data, Crash Data, Other Diagnostic Data). ![](images/Apple_Privacy_Disclosure.png)
5.  Configure each of the data types and publish your changes as shown below.

To configure **User ID**:

1.  Click **Set Up User ID**.
2.  Select `App Functionality`. Click **Next**.
3.  Select option `No, user IDs collected from this app are not linked to the user's identity`. Click **Next**.
4.  Select option `No, we do not use user IDs for tracking purposes`. Click **Save**.

To configure **Product Interaction**:

1.  Click **Set Up Product Interaction**.
2.  Select `Analytics`. Click **Next**.
3.  Select `No, product interaction data collected from this app is not linked to the user's identity`. Click **Next**.
4.  Select `No, we do not use product interaction data for tracking purposes`. Click **Save**.

To configure **Other Usage Data**:

1.  Click **Set Up Other Usage Data**.
2.  Select `Analytics`. Click **Next**.
3.  Select `No, other usage data collected from this app is not linked to the user's identity`. Click **Next**.
4.  Select option `No, we do not use other usage data for tracking purposes`. Click **Save**.

To configure **Crash Data**:

1.  Click **Set Up Crash Data**.
2.  Select `App Functionality`. Click **Next**.
3.  Select `No, crash data collected from this app is not linked to the user's identity`. Click **Next**.
4.  Select option `No, we do not use crash data for tracking purposes`. Click **Save**.

To configure **Other Diagnostic Data**:

1.  Click **Set Up Other Diagnostic Data**.
2.  Select `App Functionality`. Click **Next**.
3.  Select `No, other diagnostic data collected from this app is not linked to the user's identity`. Click **Next**.
4.  Select `No, we do not use other diagnostic data for tracking purposes`. Click **Save**.

To **Publish** the change:

1.  From the upper-right corner of the page, click **Publish**.
2.  Click **Confirm** on the dialog that appears. These responses will be published to your app’s product page.

For more information, see [how to enter responses](https://help.apple.com/app-store-connect/#/dev1b4647c5b) in App Store Connect.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...