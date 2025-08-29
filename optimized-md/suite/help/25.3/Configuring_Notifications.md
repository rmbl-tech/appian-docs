---
source_url: https://docs.appian.com/suite/help/25.3/Configuring_Notifications.html
original_path: Configuring_Notifications.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configuring Notifications

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

This page describes how email notification settings can be modified by adding custom property settings in a `custom.properties` file in the `<APPIAN_HOME>/conf/` directory.

-   Portal alerts are not modified by these properties.
-   Process error alert recipients can be configured by web administrators using the Alerts Tab of the Process Model Properties dialog.

See also: [Configuring Custom Properties](Custom_Configurations.html)

## Notification types and default values

The default values for system notifications sent using email can be configured in `custom.properties` for the following notification types. Each email notification can be set to one of the following intervals:

-   immediate
-   daily
-   weekly
-   hourly
-   never

These parameters set the default (global) value, not the value used by a particular user. If a user does not set a preference, then the global value is used. If the user has set a preference, then the user's preference is maintained.

In order to update a global notification setting, after Appian has already initialized default settings for each user, complete the following (the transaction log must be completely cleared before the change is fully applied to all users):

1.  Stop Appian
2.  Start Appian
3.  Stop Appian
4.  Start Appian. The new properties values are now used when initializing default settings for users.

The following table summarizes the notification types that can be set in a `custom.properties` file. The updated values are only used if the end user does not change his or her alert settings.

After applying these changes to `custom.properties`, the new properties only take effect after the services are started twice, or the next time a new server becomes the primary (in a distributed configuration).

The following properties take `server.conf.notifications` as a prefix. Unless otherwise noted, the default value for these properties is "immediate."

| Parameter | Description |
| --- | --- |
| group\_membership\_requested\_timing | Group Access Request |
| group\_invitation\_timing | Invitation to Join Group |
| group\_membership\_removed\_timing | Group Membership Removed. The default timing is never |
| group\_membership\_request\_approved\_timing | Group Access Request Approved |
| group\_membership\_request\_rejected\_timing | Group Access Request Denied |
| group\_invitation\_accepted\_timing | Group Membership Invitation Accepted |
| group\_invitation\_declined\_timing | Group Membership Invitation Declined |
| send\_link\_msg\_timing | You have received a link to a page |
| send\_feedback\_msg\_timing | Page Feedback from Use |
| page\_approved\_msg\_timing | Page Approved |
| system\_msg\_timing | You have received a message |
| page\_approval\_req\_msg\_timing | Page Approval Request |
| collab\_send\_link\_msg\_timing | You have received a link to a document |
| collab\_access\_approved\_msg\_timing | Knowledge Center Access Approved |
| collab\_access\_rejected\_msg\_timing | Knowledge Center Access Denied |
| collab\_access\_request\_msg\_timing | Knowledge Center Access Request |
| collab\_approved\_changes\_msg\_timing | Knowledge Center Change Approved |
| collab\_rejected\_changes\_msg\_timing | Knowledge Center Change Denied |
| collab\_export\_completed\_msg\_timing | Application Export Completed |
| collab\_import\_completed\_msg\_timing | Application Import Completed |
| collab\_change\_request\_msg\_timing | Knowledge Center Change Request |
| collab\_expiring\_files\_msg\_timing | Expiring files |
| collab\_invite\_kc\_msg\_timing | Invitation to Join Knowledge Center |
| collab\_accept\_invite\_msg\_timing | Knowledge Center Invitation Accepted |
| collab\_decline\_invite\_msg\_timing | Knowledge Center Invitation Declined |
| process\_escalation\_msg\_timing | Task has been escalated |
| process\_sub\_link\_republished\_timing | Sub/linked process models are republished |
| process\_super\_process\_causes\_publishing\_timing | Process model auto-published |
| process\_sub\_link\_disabled\_deleted | Sub/link process is disabled or deleted |
| process\_new\_task\_me\_timing | New task assigned to me |
| process\_new\_task\_others\_timing | New task assigned to me and others |
| process\_new\_task\_unassigned\_timing | A task is unassigned. A new task has been generated, but it is not currently assigned to anyone. |
| process\_cannot\_delete\_cancel\_sub | Cannot delete a subprocess |
| process\_exception\_msg\_timing | An error in the process has occurred |
| task\_exception\_msg\_timing | An error in a task of a process has occurred |
| tempo\_comment\_on\_message\_commented\_on\_msg\_timing | A new comment is added to a message that you have commented on |
| tempo\_comment\_on\_post\_commented\_on\_msg\_timing | A new comment is made to a post that you have commented on |
| tempo\_comment\_on\_system\_post\_commented\_on\_msg\_timing | A new comment is made to a system-event posting that you have commented on |
| tempo\_comment\_on\_post\_msg\_timing | A new comment is made on a News event that is sponsored by you |
| tempo\_comment\_on\_message\_msg\_timing | A new comment is made on a Tempo message that you posted, which targeted everyone |
| tempo\_comment\_on\_message\_to\_group\_msg\_timing | A new comment is made on your message to a group |
| tempo\_hazard\_on\_post\_commented\_on\_msg\_timing | A new hazard alert is added to a post that you have commented on |
| tempo\_hazard\_on\_system\_post\_commented\_on\_msg\_timing | A new hazard alert is added to a system-event post that you have commented on |
| tempo\_hazard\_on\_post\_msg\_timing | A new hazard alert is added to a Tempo event that you sponsored |
| tempo\_post\_attributed\_to\_you\_msg\_timing | A new event that is sponsored by you is posted |

## Mailhandler properties

Mailhandler properties can be modified by adding custom configurations to `custom.properties` using the namespace prefix conf.mailhandler.

See also: [Configuring Custom Properties](Custom_Configurations.html) and [Mail Server Setup](Mail_Server_Setup.html)

## Server communication settings

The following properties take the `server.conf.notifications` namespace as a prefix.

See also: [Configuring Custom Properties](Custom_Configurations.html)

| Property | Description |
| --- | --- |
| default\_ntf\_ttl | Default number of days to keep portal notifications before deleting them automatically (for those notifications where users have not specified the number of days explicitly in notifications preferences). The default is 10 days. |
| MAX\_ADDRESSES\_PER\_EMAIL | The maximum number of people that a notification is sent out to. This is defaulted to 100. For example, if there are 1000 people who should be notified, then 10 separate notifications will be sent, with each notification being sent to 100 recipients, assuming that this property is set to 100. |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...