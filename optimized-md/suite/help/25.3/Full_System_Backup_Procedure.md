---
source_url: https://docs.appian.com/suite/help/25.3/Full_System_Backup_Procedure.html
original_path: Full_System_Backup_Procedure.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Full System Backup Procedure

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

This page outlines the steps to be followed to back up all data of an Appian installation.

# Backup procedure

Before a product upgrade or patch, the following steps must be taken to backup the Appian application in preparation for the upgrade:

### Step 1: Stop Appian

Refer to [Starting and Stopping Appian](Starting_and_Stopping_Appian.html) for instructions on how to shut down Appian.

**Note:**  Do not kill any Appian processes. Wait for the normal shutdown to complete. An improperly shut down instance cannot be upgraded.

-   If Appian is installed as a Windows Service, stop and delete the Appian Windows services.

### Step 2: Copy the entire Appian installation directory to a backup location

If your application data is stored on a SAN or other high-availability drive, ensure that all file system content on this drive is copied to the backup location.

Take a snapshot or data dump of the Appian data source, your business data sources, and any external RDBMS(s).

# Restore procedure

This section outlines the steps to be followed to restore all data of an Appian installation at an application level. It assumes restoration to an existing system with Appian installed.

### Step 1: Stop Appian

If Appian is already running on the server you wish to restore to, [stop all Appian services](Starting_and_Stopping_Appian.html). Backup the Appian application data into a temporary folder by copying the contents of the **<APPIAN\_HOME>** directory into a temporary backup location.

Refer to [Starting and Stopping Appian](Starting_and_Stopping_Appian.html) for instructions on how to shut down Appian.

-   **Note:** Do not kill any Appian processes. Wait for the normal shutdown to complete. An improperly shut down instance cannot be upgraded.
-   If Appian is installed as a Windows Service, stop and delete the Appian Windows services.

### Step 2: Restore Appian data

Delete the contents of the **<APPIAN\_HOME>** installation directory.

Copy the contents of the backup into **<APPIAN\_HOME>** installation directory.

### Step 3: Restore external data

Restore the latest backup or snapshot of any external data sources so that the data is synchronized.

### Step 4: Start Appian

[Start all Appian services](Starting_and_Stopping_Appian.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...