---
source_url: https://docs.appian.com/suite/help/25.3/Configuring_Backup_and_Restoration.html
original_path: Configuring_Backup_and_Restoration.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configuring Backup and Restoration

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

This page outlines the backup process for Appian documents and data.

## Reasons for taking backups

The main reasons for backing up Appian installations and related data are for data archival and auditing purposes and as a protection against catastrophic events. The frequency of conducting backups depends on the use case.

For data archival and auditing purposes, backing up weekly or even monthly may be sufficient. Using backups to preserve data when a catastrophic event occurs requires more frequent backups that ultimately depend on how much data you are willing to lose when restoring the data. If you back up nightly, the most data you might lose is one day's worth. This concept is referred to as the Recovery Point Objective (RPO).

While backups are an approach to achieving an RPO on the order of hours, it is not the preferred method for achieving very low RPOs (minutes). Instead, the [High Availability](High_Availability_and_Distributed_Installations.html) configuration should be used for disaster recovery with low RPO requirements.

## Data components

There are two primary data components that should be backed up:

-   Appian application data (documents, archived processes, and other files)
-   External data

Each of these components is backed up separately, yet all backups must occur simultaneously so that data can be restored in a consistent state. When scheduling a script to backup the Appian data, external databases must be backed up at the same time. This ensures that during recovery the system's data snapshot is synchronized and consistent. Otherwise, you might encounter synchronization issues.

### Appian application data

Application data comprises files stored on the server that are referenced by Appian engines, including documents stored in the document management system, archived processes, search indices, the keystore file, data managed by the data service, and other data files. The folders containing this application data should be backed up at the same time.

### External data sources

All external data sources used with Appian must be backed up separately and simultaneously. Use your preferred backup mechanism for the specific RDBMS used in the Appian environment.

## Types of backups

There are two types of backups:

-   **Full System Backups**: The entire server hosting Appian is backed up, which includes Appian application data, logs, and Appian software and other executable artifacts that are provided by the installer.
-   **Live Data Backups**: Only Appian application data directories listed in the [live data backup](Live_Backup_Procedure.html) procedure, the RDBMS data, and, optionally, the log files are backed up.

A [full system backup](Full_System_Backup_Procedure.html) is appropriate when upgrading Appian or applying a patch/hotfix. Full system backups can also be run periodically (perhaps monthly) in order to capture a snapshot of the state of the server(s) should a catastrophe strike that requires a full system restoration.

A [live data backup](Live_Backup_Procedure.html) is appropriate in order to frequently capture the state of the application data in order to provide rapid restoration of a previous state in case of a failure. While not sufficient for low recovery time objective (RTO) use cases, it can be used for a hot/cold restoration scenario where an RPO on the order of minutes is desirable.

## Primary/secondary system approach to disaster recovery

When the primary goal is rapid recovery from a disaster with little data loss (low RTO and RPO), an alternative is to run two separate Appian environments in different regions with a shared external database. This will typically be possible only when Appian holds very little data itself and most of the data it interacts with is housed in external systems and databases. Maintaining two independent Appian environments, each loaded with copies of your applications and each integrated with the same external data-storage systems, can be an effective strategy in these cases. If both environments are online with only one taking traffic, failover to the secondary environment (via DNS update or other operational procedure) can typically happen faster than bringing an environment online from a backup.

Applications that are good candidates for this strategy:

-   Are designed specifically for this usage pattern
-   Store all business data in an external database that provides real-time replication to the secondary region (or has a primary/replica cluster mechanism that can span wide geographical distances). The database provided with Appian Cloud is not suitable for this approach.
-   Do not have long-running processes
-   Do not use Appian's native document storage
-   Inherit most group membership and user identity from an external [SAML](SAML_for_Single_Sign-On.html#group-membership-synchronization) or [OIDC](OpenID_Connect_User_Authentication.html#group-membership-synchronization) identity providers

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...