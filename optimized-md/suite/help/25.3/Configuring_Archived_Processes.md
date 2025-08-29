---
source_url: https://docs.appian.com/suite/help/25.3/Configuring_Archived_Processes.html
original_path: Configuring_Archived_Processes.html
version: "25.3"
title: "Configuring Archived Processes"
page_id: "Configuring_Archived_Processes"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configuring Archived Processes

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

Beginning in 25.2, self-managed customers can delete and unarchive archived processes in the [Process Activity](monitoring_view.html#process-activity) monitor view by following the sections below for their respective deployment methodology.

**Note:**  Appian Cloud customers that do not already see archived processes in the Process Activity monitor view should contact Appian Support directly to enable this feature.

## Enabling Archived Processes in Process Activity

To enable archived processes in the Process Activity monitor view, add the following to [custom.properties](Custom_Configurations.html#custom-properties) and restart your application:

`appian.feature.isProcessHistoryInKafkaEnabled=true`

This will populate Process Activity with all existing and all newly archived processes after the site has been restarted.

## Mapping Process Activity with Archive Files

To index the pre-25.2 upgrade `.l` archived processes on the file system, a one-time `create-archive-process-csv.sh` script must be run to create a mapping between the Process Activity data and `.l` files using CSV files that will be automatically imported by the application server. All processes that are archived in 25.2 and above will have the necessary mapping.

### Location

`<APPIAN_HOME>/_admin/_scripts/internal/archive/create-archive-process-csv.sh`

### Usage

The script should be run after the site’s first restart upgrading to 25.2. Execute the script during non-business hours to avoid degraded site performance due to potential high file streaming when there are a large number of existing `.l` archived process files. For example, for a High Availability application:

```
1
$APPIAN_HOME/_admin/_scripts/internal/archive/create-archive-process-csv.sh $APPIAN_HOME/INPUT_DIRECTORY/ /tmp/ $APPIAN_HOME/_admin/shared/archive-process-index/
```

-   **INPUT\_DIRECTORY**: input directory where your archived processes are stored that you must point to
-   **/tmp/**: temporary directory where in-progress CSV files are written
-   **/\_admin/shared/archive-process-index/**: output directory that will be created and where finalized CSV files are written

The temporary and output directories will be created for you, as well as the temporary directory cleaned up once the script has finished executing. Ensure that the user that you are executing the script with has the proper permissions to create both directories and files within them. You must update and point **INPUT\_DIRECTORY** to your archived process files, otherwise the CSV files generated for mapping will be incorrect.

Once the script finishes according to your deployment methodology below, there will be an empty `archive-process-csv-complete.txt` file created within the same directory. This file is used by the application server to know that the script has been completed successfully, and the generated CSV files can be imported.

The script is idempotent and is safe to rerun should any errors occur, as existing CSV files will be rewritten line by line and new CSV files added, if necessary.

### Appian on Kubernetes

To ensure the script is present, make sure that you have pulled the [latest image](k8s-0.184.0/artifacts.html#appian-operator-and-appian-images) of webapp from our external registry. While your site is running, exec into the webapp pod and execute a command like the following, however updating for your directories:

```
1
$APPIAN_HOME/_admin/_scripts/internal/archive/create-archive-process-csv.sh $APPIAN_HOME/server/archived-process/ /tmp/ $APPIAN_HOME/_admin/shared/archive-process-index/
```

### Linux

While your site is running, SSM into your primary node, and execute a command like the following, however updating for your directories:

```
1
sudo -u appian -i cd /<APPIAN_HOME>/_admin/_scripts/internal/archive/create-archive-process-csv.sh /<APPIAN_HOME>/server/archived-process* /path/to/temp/dir /<APPIAN_HOME>/_admin/shared/archive-process-index/
```

### Windows

While your site is running, SSM into your primary node, and execute a command like the following, however updating for your directories:

```
1
runas /user:<localmachinename>\appian cmd cd \<APPIAN_HOME>\_admin\_scripts\internal\archive\create-archive-process-csv.bat \<APPIAN_HOME>\server\archived-process* \path\to\temp\dir \<APPIAN_HOME>\_admin\shared\archive-process-index\
```

## Automated Deletion

The number of archived processes can rapidly grow with a busy application. Consider automating the clean up of your archived processes, rather than setting up a scheduled job using the [cleanup.sh](Data_Maintenance.html#cleanup-script). To do so, add the following property to [custom.properties](Custom_Configurations.html#custom-properties) to define when archived processes will automatically be deleted, both from the Process Activity monitor view, and the `.l` files themselves. Keep in mind that once the archived processes are deleted, they can never be unarchived.

`server.conf.processcommon.AUTODELETE_ARCHIVES_DELAY_DAYS=##`

For example, if you want to clean up and delete all archived processes after 90 days, set `##` to 90. For ad-hoc removal, you can manually delete archived processes from Process Activity as well.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...