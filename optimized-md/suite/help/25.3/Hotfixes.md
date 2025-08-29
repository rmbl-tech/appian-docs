---
source_url: https://docs.appian.com/suite/help/25.3/Hotfixes.html
original_path: Hotfixes.html
version: "25.3"
title: "Appian Hotfixes"
page_id: "Hotfixes"
section: "Hotfix package (28 Aug 2025)"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian Hotfixes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page lists all the recent hotfixes for Appian 25.3.

**Note:**  **Appian Cloud** customers can refer to [MyAppian](https://community.appian.com/success/) to see your latest hotfix version.

For **self-managed customers**, all hotfixes are released as a downloadable package at the end of each week.

## Hotfix package (28 Aug 2025)

Self-managed customers can use the following links to download and install the hotfixes package. If you are managing Appian on Kubernetes, instead of using the links below, you'll need to [upgrade to the latest Appian on Kubernetes images](k8s-0.184.0/upgrading-appian-on-k8s.html) to apply the hotfixes.

-   [Hotfix package 25.3.260.0](https://forum.appian.com/suite/sites/myappian/page/support)
-   [Installation instructions](#Installation)

This cumulative hotfix package includes all resolved issues listed below in a single download. This hotfix is required for any Appian 25.3 installations not currently up to date with the latest hotfixes. After installing, you will be running on Appian 25.3.260.0.

You can view your current self-managed Appian version by logging into your Appian environment as a [designer](User_Roles.html#designer-role) or system administrator and clicking the **navigation menu** > **About Appian**.

The package resolves the following issues.

### 25.3.260.0 (28 Aug 2025)

-   **Security Updates** - High

-   **LCP-20723** - High
    Fixed an issue causing site startup failure when the MySQL timezone property is set and the site is restarted within a new Kubernetes pod.

-   **LCP-19702** - Medium
    Resolved an issue where changing the data source of a record type unintentionally removed existing field configurations such as validations and UI.

-   **LCP-21609** - Medium
    Fixed an issue in which creating new record types from a new Salesforce connected system received a schema qualification error.

-   **LCP-19764** - Low
    Fixed an issue in which a replication lag caused node startup issues.

-   **LCP-21700** - Low
    Tokenisation of RPA Feature toggle 'rpa.ea-rpaha.improved-next-compatible'

### 25.3.240.0 (22 Aug 2025)

-   **Security Updates** - High

-   **LCP-15243** - Critical
    Fixed an issue where the file upload component was not correctly interpreted by screen readers.

-   **LCP-19614** - Critical
    Fixed an issue with concurrent full syncs and smart service syncs on the out-of-the-box Document record type.

-   **LCP-20111** - High
    Fixed an issue in which a replica does not rejoin the cluster due to inability to set the timezone.

-   **LCP-19316** - Medium
    Resolved an issue where referencing a translated field in the application caused an error.

-   **LCP-19966** - Medium
    Fixed an issue that prevented autoscaled processes to be started when the parent process is not using Autoscale.

-   **LCP-16672** - Low
    The start process smart service setup tab now remains configurable when types (or related record types) referenced in outputs are deleted.

### 25.3.220.0 (15 Aug 2025)

-   **Security Updates** - High

-   **LCP-17115** - Critical
    Extended the database connection timeout to prevent sync failures during periods when database connections are not immediately available.

-   **LCP-3843** - High
    Fixed an issue where exports to Excel included unnecessary blank rows in the exported data.

-   **LCP-13750** - High
    Updated record field validations to support expression rules with references to the record field directly.

-   **LCP-13989** - High
    Fixed an issue where processes using Start Process Smart Service would fail when run at higher scales.

-   **LCP-15947** - High
    Updated debug logs to expanded tracing for certain data sync types.

-   **LCP-16159** - High
    Fixed an issue that prevented control panel object from working with the Quick search.

-   **LCP-16804** - High
    Fixed an issue in which phpmyadmin was not coming up on some sites running on AL2023.

-   **LCP-17534** - High
    Optimized Personalization engine queries to improve the performance of certain operations like syncing the User Record Type and displaying Users in the Admin Console.

-   **LCP-18030** - High
    Updated control panel's interface builder metrics to not capture names of case types, categories, or data fields created by users.

-   **LCP-18797** - High
    Fixed sharepoint and blueprism connected system issue.

-   **LCP-19052** - High
    Fixed an issue that prevented customers with existing control panels from adding Related Data to their control panel.

-   **LCP-14420** - Medium
    Bug fixed so that generating bulk translation strings from expression mode now works as expected.

-   **LCP-15015** - Medium
    Resolved an issue where reusing a previously used record field name caused the newly added field to be pre-populated with values.

-   **LCP-16587** - Medium
    Updated the error message for write and delete record smart service syncs to provide information about the process where the failure occurred.

-   **LCP-18562** - Medium
    database.skip.optimization tokenize to skip optimization process

-   **LCP-20045** - Medium
    Fixed an issue where older versions of the read-only grid component would incorrectly return an error in Design View.

-   **LCP-20045** - Medium
    Fixed an issue where older versions of the read-only grid component would incorrectly return an error in Design View.

-   **LCP-2038** - Low
    Fixed an issue where very large database schemas could not be navigated during record type creation.

-   **LCP-2038** - Low
    Fixed an issue where very large database schemas could not be navigated during record type creation.

-   **LCP-6356** - Low
    Archive previous CASM log on podified sites to ensure only the most recent startup activity is recorded in the current log.

-   **LCP-13471** - Low
    Bug Fix.

-   **LCP-13901** - Low
    Fixed an issue caused by improper handling for memory errors in data service real-time store components, which resulted in subsequent data service query failures.

-   **LCP-15605** - Low
    Fixed an issue in the Reconcile Doc Extraction smart service to reflect a correct error message when handling incorrect string extraction ID

-   **LCP-15642** - Low
    Tokenizes the property to disable unique key validation.

-   **LCP-15912** - Low
    Fixed the exception thrown when editing phone numbers with Blurb permission disabled

-   **LCP-19185** - Low
    Fixes an issue related to some metrics exposed to self-managed customers

-   **LCP-19400** - Low
    Fixed an issue in which a recovering node does not rejoin the HA cluster.

## Installation

Perform the following steps to apply the hotfix:

1.  Stop Appian. See [Starting and Stopping Appian](Starting_and_Stopping_Appian.html) for detailed instructions:
    1.  Shut down the application server.
    2.  Shut down the search server.
    3.  Shut down the data server.
    4.  Shutdown all Appian Engines, ensuring that the engines are checkpointed upon shutdown.
2.  Back up your existing Appian instance. See [Backing Up Your Existing Appian Instance](Upgrade_Guide.html#Back_up_Your_Existing_Appian_Instance).
3.  Unzip the contents of the [Hotfix package 25.3.260.0](https://forum.appian.com/suite/sites/myappian/page/support) into your `<APPIAN_HOME>` directory.
4.  Run the **deleteFiles** script (_deleteFiles.bat_ on Windows, _deleteFiles.sh_ on Linux) that is now located in your `<APPIAN_HOME>` directory.

    -   If the script reports that some files were not deleted, address the reason for the failure (common causes listed below), and run it again until it no longer reports failed deletions.
    -   Common causes of failed file deletion include:

    -   The file is open in another window or process
    -   The file is locked
    -   You do not have permission to delete the file
5.  Unzip the contents of the **updates.zip** archive that is now located your `<APPIAN_HOME>` directory.
6.  Run the **installJdk** script (_installJdk.bat_ on Windows, _installJdk.sh_ on Linux).
7.  If you maintain customized or overridden Spring Security .xml files, merge them with the associated base files in the /deployment/web.war/WEB-INF/conf/security/ directory.
8.  Delete the following files:
    **Linux**

    -   deleteFiles.sh
    -   installjdk script.sh
    -   OpenJDK8U-jdk\_x64_linux\_hotspot_.tar.gz
    -   updates.zip

    **Windows**

    -   deleteFiles.bat
    -   installjdk script.bat
    -   OpenJDK8U-jdk\_x64_windows\_hotspot_.zip
    -   updates.zip
9.  If you are using a Web server, copy the content of `<APPIAN_HOME>/deployment/web.war` to the folder where the Web server is getting the static resources. See [Copy Static Resources to the Web Server](Configuring_Apache_Web_Server_with_Appian.html#Copy_Static_Resources_to_the_Web_Server) for more information.
10.  Run the [configure script](Configure_Script.html#deploying-configurations) to deploy your environment's configuration and re-configure any [node names](Configure_Script.html#configure-tomcat-clustering-by-specifying-a-node-name) previously set by the configure script tools.
11.  Start Appian:
     1.  Start the Appian Engines.
     2.  Start the data server.
     3.  Start the search server.
     4.  Start the application server.

To determine if the Appian 25.3 Hotfix is deployed, open the **build.info** file located in `<APPIAN_HOME>/conf/`. The contents of this file should match the following code sample:

build.revision=5fabd1e2fbb1422a979f5e46f59d95526f29de68
build.version=25.3.260.0

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...