---
source_url: https://docs.appian.com/suite/help/25.3/Upgrade_Guide.html
original_path: Upgrade_Guide.html
version: "25.3"
title: "Upgrade Guide"
page_id: "Upgrade_Guide"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Upgrade Guide

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

## Overview

**Tip:**   This page applies to self-managed installations only. Appian Cloud customers do not need to follow these instructions when upgrading to newer versions of Appian.

This guide assumes you are on Appian version 23.4 or later. If you are on an [earlier version of Appian](Product_Release_History.html), upgrade to 23.4 first before upgrading to the current release.

To view your current Appian version:

1.  Sign into your Appian environment as a [designer](User_Roles.html#designer-role) or system administrator.
2.  In the header bar, click to open the navigation menu.
3.  Select **About Appian**.

[![images/about_appian_dialog.png](images/about_appian_dialog.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img224)

[![](images/about_appian_dialog.png)](#_)

In this document, the following conventions are used to indicate the locations you have selected on your servers during installation:

-   Location of the previous Appian installation: `<OLD_APPIAN_HOME>`
-   Location of the new Appian installation: `<APPIAN_HOME>`

## Before beginning

### Check the KDB+ license

Appian requires K4 version 4.0. Before upgrading to the latest Appian version, you will need to ensure that you have a valid K4 license installed on your Windows or Linux system.

To find your current K4 license details:

1.  Open `<OLD_APPIAN_HOME>/logs/data-server/k4_license.info`. For example:

    ```
    1
    2
    3
    4
    5
    6
    7
     $ cat $APPIAN_PATH/logs/data-server/k4_license.info
     #System auto-generated log on 2021-08-20T09:24:11Z
     VERSION=4.0
     RELEASE_DATE=2021-02-02
     EXPIRY_DATE=2022-06-01
     UPDATE_DATE=2022-06-01
     BANNER_TEXT=example.com #123456
    ```

2.  Review the following dates: `EXPIRY_DATE` and `UPDATE_DATE`.

If either of these two dates is before your planned Appian upgrade date, or if the `k4_license.info` file is not present on your installation, [open a support case](https://community.appian.com/support/) for assistance obtaining a valid K4 version 4.0 license before continuing with the Appian upgrade process.

### Review new system requirements and behavior changes

Review the [release notes](Appian_Release_Notes.html) and [system requirements](System_Requirements.html) for more details.

### Open the required ports

Appian components communicate with each other over [specified network ports](Port_Usage.html). If you are preparing a [distributed installation](High_Availability_and_Distributed_Installations.html), you must first ensure that the required ports are open between the servers that host the different Appian components.

### Review plug-ins

Always check the release notes for defect fixes, Java API deprecations and removals, and other changes that may affect plug-ins used by your installation.

Some plug-ins may need to be updated as part of the upgrade in order to continue to provide the desired functionality.

### Custom application portal pages

In 24.4, a package in the [public Java API](api/) was renamed from `com.appiancorp.common.struts` to `com.appiancorp.common.webmvc`. If your application contains custom Application Portal code, an uncommon configuration, prior to upgrading you must make corresponding changes to your customization.

## 1\. Disable scheduled Appian administrative scripts

Halt any scheduling for the following scripts to prevent system changes while upgrading or unnecessary jobs from continuing.

-   **cleanup.sh (.bat)** - This required administrative script copies archives, and logs to backup locations and deletes them from production. Be sure to reschedule this job once you have completed the upgrade process.
-   **status.sh (.bat)** - Reports the status of Appian Engines and is used for monitoring purposes.

## 2\. Shut down Appian

Refer to [Starting and Stopping Appian](Starting_and_Stopping_Appian.html) for the version of Appian that you are upgrading from for instructions on how to shut down Appian.

-   **Note:** Do not kill any Appian processes. Wait for the normal shutdown to complete. An improperly shut down instance cannot be upgraded.
-   If Appian is installed as a Windows Service, stop and delete the Appian Windows services.

## 3\. Back up your existing Appian instance

1.  Back up the entire `<OLD_APPIAN_HOME>` directory.
2.  Back up the schemas/tables in the RDBMS used by Appian using the RDBMS vendor's preferred backup method.

## 4\. Rename your existing installation directory

If you are installing the new version of Appian on the same server as your current Appian instance, first rename your current Appian installation directory to keep from losing the existing data (you will need to copy this data over after installing the new version in the next step). For example, you might change the current directory name of `APPIAN_HOME` to `OLD_APPIAN_HOME`. This will allow you to install the new version into `APPIAN_HOME`.

## 5\. Install new version of Appian

Refer to the Appian [Installation Guides](Installation_Guide.html) specific to your environment and new version. Follow the steps in Part 1 of the guide to install the new version of Appian and then configure the installation as detailed in Part 2. You should not start Appian until you have completed all instructions prior to step 9 in this document.

-   [Windows Installation Guide](Windows_Installation_Guide.html#part-1-install-appian-engines-and-services)
-   [Linux Installation Guide](Linux_Installation_Guide.html#part-1-install-appian-engines-and-services)

Keep the following in mind:

-   If you use the same installation directory (name and path) as was used during the original Appian installation (which was renamed in [step 4](#4-rename-your-existing-installation-directory)), you will avoid the need to change file paths. Otherwise, you must update the `conf.suite.BASE_PATH` property in **custom.properties** file located in the `<APPIAN_HOME>/conf/` directory using forward slashes on both UNIX and Windows.
-   If necessary, update the JDK version to match the supported versions listed in the [System Requirements](System_Requirements.html#java).
-   Review the web server configuration instructions and copy the new static files to the web server, as these also change from release to release.
-   If you are running a [distributed installation](High_Availability_and_Distributed_Installations.html), run the installer on every server that will host any Appian component. Ensure that you use the same version of the installer on every server in the environment. This can be verified after the installation steps by opening the **build.info** file located in `<APPIAN_HOME>/conf/`. The contents of this file should match across all servers in the environment.

## 6\. Copy your data

Copy the following files and folders from the old Appian directory into the same location in your new Appian installation. Some of these directories might not exist in the legacy Appian directory, depending on what version it is.

-   `<APPIAN_HOME>/_admin/accdocs1/`
-   `<APPIAN_HOME>/_admin/accdocs2/`
-   `<APPIAN_HOME>/_admin/accdocs3/`
-   `<APPIAN_HOME>/_admin/mini/`
-   `<APPIAN_HOME>/_admin/models/`
-   `<APPIAN_HOME>/_admin/plugins/`
-   `<APPIAN_HOME>/_admin/process_notes/`
-   `<APPIAN_HOME>/_admin/shared/`
-   `<APPIAN_HOME>/data-server/data/`
-   `<APPIAN_HOME>/logs/`
-   `<APPIAN_HOME>/server/archived-process/`
-   `<APPIAN_HOME>/server/channels/gw1/`
-   `<APPIAN_HOME>/server/collaboration/gw1/`
-   `<APPIAN_HOME>/server/forums/gw1/`
-   `<APPIAN_HOME>/server/msg/`
-   `<APPIAN_HOME>/server/notifications/gw1/`
-   `<APPIAN_HOME>/server/personalization/gw1/`
-   `<APPIAN_HOME>/server/portal/gw1/`
-   `<APPIAN_HOME>/server/process/analytics/*/gw1/`
-   `<APPIAN_HOME>/server/process/design/gw1/`
-   `<APPIAN_HOME>/server/process/exec/*/gw1/`
-   `<APPIAN_HOME>/services/data/kafka-logs/`
-   `<APPIAN_HOME>/services/data/zookeeper/`

If you copied your data files for the `_admin/mini/` directory into a directory that uses a different file path than before, such as `//NewRootFolder/_admin/mini/` instead of `//OldRootFolder/_admin/mini/`, you must run the `change-paths.sh (.bat)` file located in `<APPIAN_HOME>/_admin/_scripts/tools/` to update the mini website content directory location.

Note that copying the corresponding files from the old Appian installation into `<APPIAN_HOME>/services/data/kafka-logs/` in the new installation is mandatory since this directory contains essential data required for proper start up. The target directory must be empty before copying the data from the previous installation.

Double check each directory to ensure that your old files were successfully copied over.

**Note:**  The system may still start successfully with improperly copied or missing resources. However, resulting system errors may still occur later when a process action that relies on a missing resource is attempted.

## 7\. Update your configuration files

Copy the **custom.properties** file located at `<OLD_APPIAN_HOME>/conf/` to the `<APPIAN_HOME>/conf/` directory.

### Appian topology

For any other custom configuration files, such as `appian-topology.xml`, merge your customizations with the new default example or template files and place the resulting file in the new installation's directory.

### Data service configuration

Copy over the data service security token from `<OLD_APPIAN_HOME>` to the corresponding directories in `<APPIAN_HOME>`:

-   `conf/data-server-sec.properties`
-   `data-server/conf/data-server-sec.properties`

For more information about the security token, including regeneration, please refer to [Data Service Connection Restrictions](Data_Server_Connection_Restrictions.html).

### Search server configuration

Ensure a password is generated and configured in the following two custom properties:

| Property | File Location |
| --- | --- |
| `conf.password.SearchServer` | `<APPIAN_HOME>/conf/passwords.properties` |
| `conf.search-server.user.appian.password` | `<APPIAN_HOME>/search-server/conf/custom.properties` |

These two properties should share the same password. The password must contain at least 6 characters.

**Note:**  In Appian version 24.3, the Elasticsearch server has been upgraded from version 7 to version 8. To ensure a [proper upgrade](Upgrade_Guide.html), do not make any [site topology changes](How_to_Set_Up_High_Availability_Installations.html) while upgrading your site. Topology changes should be made before or after the major Appian version upgrade.

### Appian data source configuration

The Appian data source must reuse the same database before and after upgrading in order to preserve the existing data. The schema of that data source will be automatically updated to the latest version during application server startup.

Elevated user rights (such as Schema Owner or Database Owner) are required for the Appian Data Source during the application server startup portion of the upgrade process. These elevated rights may be removed after upgrading, if desired.

See also: [Configuring Relational Databases](Configuring_Relational_Databases.html)

### Custom spring security configurations

**Note:**  Support for custom Spring Security configurations has been deprecated since version 7.11 and you should convert your authentication configuration to one of the three out-of-the-box [authentication mechanisms](Authentication.html#configuring-authentication) at the earliest opportunity.

If you have not yet converted to using the out-of-the-box authentication configurations and you maintain customized or overridden Spring Security .xml files, you must merge them with the associated base files in the `<APPIAN_HOME>/deployment/web.war/WEB-INF/conf/security/` directory when upgrading to the latest version of Appian.

## 8\. Start Appian

1.  Bring up Appian fully using the [Starting and Stopping Appian](Starting_and_Stopping_Appian.html) instructions.
2.  Once all engines, services, and application servers are running, log in.

**Note:**  If you have multiple application servers, start one application server and wait for it to complete startup before starting the rest. The remaining application servers may be started simultaneously.

It is possible to successfully upgrade Appian, but see a blank page or older login screen while testing the initial login. If this occurs, clear you browser cache, and try navigating to the `BASE_PATH`.

## 9\. Reschedule Appian administrative scripts

Reschedule the administrative script(s) you disabled in the first step.

Make sure to update the script location to the new instance.

## 10\. Merge email templates

If you used customized email templates in the prior version, reapply these changes to the new templates used in your new version of Appian.

1.  In the E-mail Templates folder of the System Knowledge Center, download the updated emailHeader.html and emailFooter.html files.
2.  Merge your prior customizations into these files, as appropriate.
3.  Upload new versions of the merged file(s).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...