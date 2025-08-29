---
source_url: https://docs.appian.com/suite/help/25.3/Appian_Cloud_Web_Administration.html
original_path: Appian_Cloud_Web_Administration.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian Cloud Web Administration

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="bi bi-clouds" aria-hidden="true"></i></td><td><p>This page applies to Appian Cloud only. It may not reflect the differences with <a href="/suite/help/25.3/appian-government-cloud-overview.html">Appian Government Cloud</a>.</p></td></tr></tbody></table>

Appian provides a number of useful tools and features to assist you in administering your site. These are in addition to the many standard [Appian web administration](Web_Administrator_Guide.html) features.

For more information about the Appian Cloud database, see [Appian Cloud Database Administration](appian-cloud-database-administration.html).

## Updating the Site Logo

The site logo that appears in the header and on the login screen can be updated using [Admin Console](Appian_Administration_Console.html#branding).

### Header Logo

Changing the logo displayed at the top of the screen is possible through [Admin Console](Appian_Administration_Console.html#branding).

### Login Screen Logo

Changing the logo displayed on the Appian log-in screen can be accomplished along with other branding changes through [Admin Console](Appian_Administration_Console.html#branding).

### Favorites Icon

The favorites icon (favicon.ico) that appears in your browser when you are using Appian can be modified using [Admin Console](Appian_Administration_Console.html#branding).

## System User

The Appian super user account (`Administrator`) is used by Appian Technical Support as needed to assist customers whenever an issue requires access to the application from the user interface. The primary user account created for each customer has the same rights and roles as the `Administrator` account.

## Lost Password

The Appian Cloud login page includes a link that allows users to request their password to be reset.

-   Users are asked for their username registered in Appian.
-   For security reasons, the user is not given an indication as to whether or not the username entered is valid. The confirmation screen displayed is the same for valid and invalid entries.
-   The system automatically generates a personalized email message with a link where users can reset their password. The email also includes instructions to access the system once the password has been reset.
-   The URL in the email is only valid for 15 minutes. It is only valid for the username associated with the email.
-   On the password reset page, users must type and confirm their new password. Upon submission a confirmation screen is shown with a link for them to access their Appian site with the new password.

## Log Files

Access to the Appian and Application Server logs is available through the user interface for users who have access to the Designer interface.

-   To view logs for the node that the user is currently logged into, do one of the following:
    -   Open the navigation menu , then select **System Logs**.
    -   Navigate the browser to the URL `<cloud-domain>/suite/logs`.
-   To view logs for all nodes in a multi-node Cloud site: Navigate the browser to the URL `<cloud-domain>/suite/shared-logs`.

Application server logs and [login audit logs](Logging.html#logins) are rotated on a daily basis (GMT) and the date is appended at the end of the file name. Unless otherwise indicated in customer's service agreement logs can be compressed after 6 months, and can be deleted after 1 year except for login-audit logs which are retained for 3 years.

## Process Archives

[Process Archives](Archiving_Processes.html) are stored in the same server hosting a customer site. Customers who want to unarchive can do so leveraging some of the available shared components in MyAppian or can work with Appian Technical Support to unarchive using the available scripts to [manage process archives](Managing_Process_Archives.html).

Unless otherwise indicated in customer's service agreement, process archives can be compressed after 6 months, and can be deleted after 1 year. Once compressed, customers must request the process archives from Appian Technical Support.

## System Properties

Appian Cloud utilizes standard configuration settings that are the default for Appian. Designers are required to design and tune their applications to be within standard configuration settings.

These standard configuration settings have been set based on data collected throughout time from all Appian deployments and have been set to prefer the stability and performance of the system.

Designers are required to design their applications to work within those specifications rather than requesting custom settings to circumvent sub optimal design patterns or poor performing system integrations.

The only changes to settings allowed are those that are exposed via the web browser via the [Admin Console](Appian_Administration_Console.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...