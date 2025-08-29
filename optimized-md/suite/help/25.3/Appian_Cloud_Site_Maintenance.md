---
source_url: https://docs.appian.com/suite/help/25.3/Appian_Cloud_Site_Maintenance.html
original_path: Appian_Cloud_Site_Maintenance.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian Cloud Environment Maintenance

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="bi bi-clouds" aria-hidden="true"></i></td><td><p>This page applies to Appian Cloud only. It may not reflect the differences with <a href="/suite/help/25.3/appian-government-cloud-overview.html">Appian Government Cloud</a>.</p></td></tr></tbody></table>

As part of the Appian Cloud service, it is necessary to schedule various types of maintenance windows in order to keep Appian Cloud environments and their supporting infrastructure up to date and secure. This topic explains the different types of maintenance windows so that Appian Cloud customers can prepare accordingly.

It is important to ensure Appian's maintenance communications are not filtered out by your email client or service. Make sure [support@appian.com](mailto:support@appian.com) is part of your safe senders list.

Authorized Technical Support Contacts are notified about some maintenance activities via email. Customers can designate other users who also need to be notified about maintenance activities, or even distribution lists instead of individual email addresses for this purpose (e.g., appianadmins@mycompany.com). Instructions for adding or removing additional maintenance notification recipients are detailed in Knowledge Base article [KB-1934](https://community.appian.com/support/w/kb/1438/kb-1934-how-to-add-new-recipients-for-appian-cloud-maintenance-notifications).

## Environment maintenance

Environment maintenance activities are performed on a regular basis to address defects, provide security updates, or deploy patches to supporting applications (e.g., OS security patches, Java patch updates, etc.). These code updates are deployed to Appian Cloud environments on restart through [hotfixes](https://docs.appian.com/suite/help/latest/Hotfixes.html).

Appian Cloud hotfixes are initially released to non-production environments and are typically made available for production environments one week later. If a hotfix includes a critical issue fix, Appian may make the hotfix available immediately for production environments. Customers can also work with Appian Support if they have a critical fix available in the latest hotfix that needs to be deployed to a production environment.

-   Authorized Technical Support Contacts are notified by email in advance about the exact date, time, and duration of the downtime required for environment maintenance.
-   Hotfixes are deployed during all scheduled maintenance windows, regardless of the reason for the scheduled maintenance.
-   Hotfixes are limited in scope to security updates and important defect corrections. They do not introduce new functionality.
-   It is expected that your Appian Cloud environments will be operated on different hotfix levels, based on when each environment has last taken maintenance. There is no expectation of customer testing or sequencing of hotfixes through non-production environments.
-   Hotfix updates are required to be applied at least every 90 days for all Appian Cloud customers. Customers operating in regulated environments will require more frequent updates (as determined by their specific compliance program requirements).
-   Separate email notifications are sent upon completion of the maintenance activities for each one of the affected environments.

## Infrastructure maintenance

Infrastructure maintenance activities are performed at least on a quarterly basis to deploy critical updates to servers in our shared infrastructure.

-   Infrastructure maintenance activities generally do not cause any disruption of service to individual customer environments.
-   Infrastructure maintenance affects multiple environments at once, since they require work in Appian Cloud's shared server infrastructure. Consequently, there's no ability to coordinate the schedules with individual customers. However, Appian makes all efforts to schedule this work outside business hours for the affected region.
-   In rare cases, Infrastructure maintenance activities may cause intermittent network interruptions. These might lead to disruptions to your applications with activities scheduled to execute outside of business hours for the affected region. For more information, reach out to Appian Technical Support.

## Platform upgrades

Each time a new Appian release is available, Appian Cloud customers can take advantage of the latest features, enhancements, and innovations available in the new version within days. Appian has new releases available on a quarterly basis.

-   Authorized Technical Support Contacts are notified in advance about the exact date, time, and duration of the maintenance window to upgrade their environments via email.
-   The email notification also includes a link to the release notes where customers can find detailed information regarding the functionality included in the new release.
-   Customers for whom the proposed upgrade schedule won't work or want to do a staged rollout as opposed to converting all environments at once, can adjust their upgrade schedule directly from the Cloud Installation environment. Refer to the following [KB article](https://community.appian.com/support/w/kb/679/kb-1403-rescheduling-cloud-installation-upgrades) for detailed instructions.
-   Separate email notifications are sent upon completion of the maintenance activities for each one of the affected environments.

## Critical maintenance

Critical maintenance is performed in the unlikely event that a critical issue, which may impact the stability or security of your environment, is discovered and must be addressed immediately.

-   Authorized Technical Support Contacts are notified in advance about the exact date, time, and duration of maintenance windows affecting their environments via email.
-   Appian notifies customers as far in advance as possible. However, for this type of maintenance, notifications may be sent the same day that the maintenance will be performed.
-   The email describes whether downtime is expected during the maintenance window.
-   Unless the issue is preventing users from accessing the environment or preventing them from using major functionality in your applications, critical maintenance activities are performed outside of regular business hours to minimize impact on end users of the system.
-   Separate email notifications are sent upon completion of the maintenance activities for each one of the affected environments.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...