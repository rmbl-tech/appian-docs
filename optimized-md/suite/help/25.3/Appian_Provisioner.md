---
source_url: https://docs.appian.com/suite/help/25.3/Appian_Provisioner.html
original_path: Appian_Provisioner.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian Provisioner

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Appian Provisioner is an Appian-provided macOS command line tool that creates all the files required for signing and provisioning a custom-branded Appian iOS app. These files are used as your company's signature to indicate that your application has been signed and unmodified when uploading it to Apple's AppStore or installing onto a device. The Provisioner tool only needs to be run when your signing certificates have expired or when creating new certs.

The tool does this by managing provisioning profiles, certificates, and Apple Push Notification Services (APNs) Keys on the Apple Developer account. If you run the tool with an existing account, there may already be some of these assets setup in your Apple account for other application identifiers. Whenever an action may potentially be dangerous or affect any existing apps linked to the account (e.g. revoking a certificate), the tool displays a clear warning and waits for further input on whether the action should be performed or not.

**Note:**  MacOS is necessary to run Appian Provisioner.

### Why is it Required?

Rebranding an iOS application is complicated due to the specific information found in the Info.plist and embedded signing entitlements. Some of this information includes the company’s Apple team ID, signing certificate ID, bundle ID, application name, build number, associated domains, etc. The Provisioner is used to streamline the process of creating and linking signing assets to the exact specifications we require for the rebranding process. The tool also gathers specific, non-sensitive account and application details into an XML file which is described in the Implementation section below. This way, the user doesn’t have to provide this information manually with the possibility of missing a step, causing further complications later.

## Implementation Details

### Environment Setup

We require Apple’s Command Line Tools to be installed in conjunction with Google’s mobile build and release tool called [fastlane](https://fastlane.tools/). At the start of the process, the Provisioner will check for available updates to the Command Line Tools and install them if needed. A specific version of fastlane is installed in the temporary working directory for the current session.

When the Provisioner creates a new certificate, it will put the signing identity, i.e. the private key and certificate, in a locked keychain. Before we touch any keychains, we record what the default keychain was at the start and reset it at the end of the process.

### Apple Developer Login

This process is handled entirely locally through interacting with the Apple Developer API - Appian never receives any login credentials. The tool begins this process by checking the validity of the provided username and password and if it requires Multi Factor Authentication (MFA) as shown below.

![images:apple-developer-prompt.png](images/appian_provisioner/apple-developer-prompt.png)

Once we know the password is correct, we utilize Fastlane’s Spaceauth tool which follows a series of steps for MFA validation interacting solely with the Apple Developer API. The Spaceauth tool then stores a temporary session token locally on the user’s computer to execute Apple Developer API commands.

![images:mfa-prompt.png](images/appian_provisioner/mfa-prompt.png)

Once you are logged into the Apple Developer API, the Provisioner prompts for team selection or defaults to use the only registered team for that user. The Provisioner then checks to see if the user has access rights to "Developer Resources" as these are required privileges by Apple to view, create, update, or delete any iOS signing assets.

Below is an example of a successful check for access to Developer Resources: ![images:access-success.png](images/appian_provisioner/access-success.png)

An example of permission denied to Developer Resources: ![images:access-denied.png](images/appian_provisioner/access-denied.png)

Finally the user decides if they want Appian to handle signing which allows for the customer to immediately distribute the app internally or via the AppStore. By responding yes, the customer is agreeing to provide any signing identities created in this process to Appian. Otherwise, all signing will be handled on the customer’s machine. The process for requesting signed builds and unsigned builds will be expanded upon in the “Certificate Selection” section below.

![images:signing-identity-prompt.png](images/appian_provisioner/signing-identity-prompt.png)

### App Selection

The user is asked to provide an App Name which is used for naming the application identifier, provisioning profiles, and APNs Keys. For any bundle IDs already registered to the account, they will be displayed to the user as an option to select or they can choose to type in a new bundle ID. If an existing bundle ID was selected, the Provisioner will check to see if any App Identifiers are registered with that bundle ID and ask the user if they would like to proceed with the same settings.

![images:existing-app-summary.png](images/appian_provisioner/existing-app-summary.png)

When creating a new app identifier or changing an existing one, you will be prompted to allow push notifications and iCloud. Appian requires app groups and associated domains to be enabled by default. The Provisioner then creates the app identifier if it doesn’t exist and enables these services. App groups and iCloud containers specific to the application identifier will be created and linked if needed.

Please note that enabling the iCloud permissions is necessary if you intend to use the 'CHOOSE\_FILE' upload method within the [File Upload Component](File_Upload_Component.html) in your application.

### Certificate Selection

The Provisioner gathers details on any existing certificates and displays a summary to the user. The user can select to sign with an existing certificate or create a new one. Apple restricts the number of certificates to two for Enterprise (inHouse) accounts and three for AppStore accounts. In the case that a new certificate needs to be created, the user can revoke an existing certificate and create a new one.

A new keychain is generated with either a randomly encrypted password or a user defined password if they have opted out of signed builds (i.e. they do not want to supply Appian with their signing identity). If the user selects to create a new certificate, the resulting signing identity will be imported into the newly created keychain. The tool extracts non-sensitive information needed for the rebranding process - certificate label, sha, serial number, creation date, and expiration date. If the user selects to provide Appian with their signing identity, the newly created keychain will be sent to Appian with the encrypted password and stored in our secure Vault backend, only accessible via our secure signing server.

![images:existing-certificate.png](images/appian_provisioner/existing-certificate.png)

In the case where the user wants to switch from self signing to requesting signed builds, the Provisioner will attempt to locate the signing identity on the user’s computer utilizing the native Security tool. If the signing identity is successfully located, the user will need to provide their password so that the signing identity can be migrated over to the newly created keychain secured by the randomly generated encrypted password.

### APNs Key Selection

If the application identifier includes push notifications, the user will have the choice to generate or use an existing APNs Key. If there are no APNs Keys available then the Provisioner will create one using the App Name. There can only be a maximum of two APNs Keys issued at a time due to Apple’s restrictions. In this scenario, the user has the option to revoke a key and create a new one.

![images:existing-apns-key.png](images/appian_provisioner/existing-apns-key.png)

Appian requires the APNs Key to be provided in the packaged assets as it needs to be uploaded to our Firebase notification service. The Provisioner will try to locate the APNs Key locally if it existed before the current session. Otherwise, the user can revoke and create a new APNs Key if none of the existing keys have been sent to Appian. Before the key is packaged, the Provisioner encrypts it to ensure a secure delivery.

### Profile Renewal

The Provisioner will display any existing profiles registered with the selected application identifier and renew them using the selected signing certificate or APNs Key. If the user selected an Ad Hoc profile, they have the option to add and edit devices to that profile before it is created.

## Asset Packaging and Submission

The Provisioner will package any Provisioning Profiles, APNs Keys, Keychains and associated encrypted passwords, along with the debug log file and an XML file containing non-sensitive information gathered from the Provisioner session. This package will need to be uploaded to your iOS configuration on the Branded Builds application on Forum. If you have any reservations about what is being sent to Appian, the output zip file from the Provisioner session can be expanded and viewed. Do not edit and repackage any of the contents as it may disrupt the rebranding process.

Below is an example properties.xml: ![images:properties-xml.png](images/appian_provisioner/properties-xml.png)

An example Provisioner assets folder: ![images:provisioner-assets.png](images/appian_provisioner/provisioner-assets.png)

Once the Provisioner is completed, upload the zip file to the [Mobile Branding](https://forum.appian.com/suite/sites/mobile-branding) site by editing an existing configuration or creating a new one. For any remaining questions, open a support case on [forum.appian.com](https://forum.appian.com/suite/tempo/actions) and an Appian representative will get back to you shortly.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...