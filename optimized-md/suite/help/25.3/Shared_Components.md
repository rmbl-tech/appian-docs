---
source_url: https://docs.appian.com/suite/help/25.3/Shared_Components.html
original_path: Shared_Components.html
version: "25.3"
title: "AppMarket Submission Policies for Plug-Ins"
page_id: "Shared_Components"
section: "Submit plug-ins for approval"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# AppMarket Submission Policies for Plug-Ins

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="bi bi-clouds" aria-hidden="true"></i></td><td><p>This page applies to Appian Cloud only. It may not reflect the differences with <a href="/suite/help/25.3/appian-government-cloud-overview.html">Appian Government Cloud</a>.</p></td></tr></tbody></table>

Developers can extend the Appian platform with plug-ins to add new functionality to Appian applications. All plug-ins need to adhere to these policies to be deployed to an Appian Cloud environment or shared on the Appian AppMarket and made available in the Admin Console.

## Submit plug-ins for approval

All plug-ins, whether intended for public use on the AppMarket or private use within an organization, must receive approval before deployment.

To submit a plug-in, navigate to the [AppMarket Submissions page](https://forum.appian.com/suite/sites/appmarket-submissions/).

## Policies

### Code

-   Plug-ins must include the source code within the executable.
-   Plug-ins must not contain any known vulnerabilities, malware or viruses.
-   Plug-ins must not contain default passwords, authentication keys, key pairs or other credentials for any reason. Use the [Secure Credentials Store](Secure_Credentials_Store.html) to access credentials programmatically.
-   Plug-ins must only do what they advertise to do.
-   Plug-ins must not include software that collects and exports customer data without the customer's knowledge and express consent.
-   Plug-in packages must not be named `com.appiancorp.*` or `com.appian.*`.
-   Plug-ins must not be used to bypass Appian's default security (for example, by providing users access to content that would otherwise be inaccessible to them).
    -   The Administrator `ServiceContext` must not be used.
    -   Plug-ins must not directly use the context of a specific user, but must use the context provided via the initial constructor.
-   Plug-ins must not manually access or manipulate the file system. Use the `ContentService` and `Document` APIs to interact with Appian documents.
-   Plug-ins must not alter server or JVM global configuration properties (using `System.setProperty()` or any other method).
-   Plug-ins must explicitly close `Closeable` resources and delete temporary files in a guaranteed fashion.
-   Logging must be done through Log4j. Do not use `System.out()`, `Exception.printStackTrace()` or similar methods to log data.

### Libraries and licensing

-   Plug-ins must have full rights to use and distribute all code or libraries contained or used by the plug-in, including the ability to copy, distribute, and deploy all source code contained in the plug-in. The plug-in must be in compliance with the terms of any open source libraries used or incorporated into the plug-in.
-   Plug-ins must not include any third-party libraries licensed under copyleft or similar terms which require software distributed with or linking to those libraries to be distributed under similar terms.

### Reservations

-   Appian reserves the right to retain the plug-in's source code.
-   Appian reserves the right to review and edit the description, documentation, or any other attribute provided along with plug-ins.
-   Appian reserves the right to reject or stop hosting plug-ins that do not comply with the policies described here or for any other reason considered appropriate by the company.

## Support guidelines

-   Only plug-ins compatible with supported versions of Appian are available through the Appian AppMarket.
-   Plug-ins without clearly documented version compatibility will be removed from the Appian AppMarket.
-   Plug-ins marked as "free" are free to use with a licensed product.
-   Customers are responsible for validating and testing plug-ins before deployment in production. All plug-ins are use-at-your-own-risk.
-   Customers are responsible for validating plug-in functionality in their applications before upgrading to new versions of Appian software.
-   All plug-ins, except those listed as "supported by Appian" are made available as-is, and their functionality is not guaranteed by Appian. All plug-ins should be tested thoroughly.
-   By submitting a plug-in on the AppMarket, you agree to the [AppMarket Submissions Agreement](https://community.appian.com/p/appmarket-submission-agreement).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...