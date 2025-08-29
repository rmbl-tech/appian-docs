---
source_url: https://docs.appian.com/suite/help/25.3/Managing_Process_Archives.html
original_path: Managing_Process_Archives.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Archive Process Script

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

## Introduction

Data for processes that have completed (which are no longer needed for auditing or reporting purposes) must be archived regularly. Archiving a process removes it from being used by the process analytics engine.

Users with appropriate access would still be able to view the history of an archived process in the [Process Activity](monitoring_view.html#process-activity) tab under the [**Monitor** view](monitoring_view.html) for auditing purposes. This feature is enabled for Appian Cloud sites created with version Appian 21.1+. If you are an Appian Cloud customer and do not see archived processes, contact Appian Support. For self-managed customers, follow the steps [here](Configuring_Archived_Processes.html).

Archiving a process does not reduce the size of an execution engine file (.kdb) by the same amount of memory previously used by the process. Much of the space freed by archiving the process is reserved as pre-allocated space. New processes that are started use the pre-allocated space before increasing the size of the .kdb file.

## Archiving overview

Processes can be archived in the following manner:

-   Setting each process model to archive its processes on its own schedule. This is set from the Data Tab of the Process Model Properties dialog in the Process Modeler.

-   Using the `archiveprocess.bat (.sh)` script located in the `<APPIAN_HOME>/server/_scripts/tools/` directory.

-   Allowing the processes to automatically archive based on settings in the [custom.properties file](Custom_Configurations.html) discussed below.

The `custom.properties` file has the following archive setting:

-   `server.conf.exec.AUTOARCHIVE_DELAY=`
    Determines the archive interval when `AUTOARCHIVE` is enabled. By default, it's set to `7` so that 7 days after a process completes or is canceled, it's archived. The maximum interval you can set is `999` days.

For more details about the effects of process archiving, see the [Considerations for Archiving Processes page](Archiving_Processes.html).

## Using the archive process script file

The `archiveprocess.bat (.sh)` script is located in the `<APPIAN_HOME>/server/_scripts/tools/` directory.

This script allows you to selectively archive or unarchive processes based on process or Process Model attributes. It uses the following syntax:

```
1
archiveprocess.bat (.sh) <action> {<option> {argument}}
```

Running the `archiveprocess.bat (.sh)` script without arguments will show you the help section of the script. The help section will allows you to see all actions, options, and arguments as well as some examples of how to use the script.

Processes that have been unarchived can only be rearchived using `archiveprocess.bat (.sh)`. Automatic archive settings do not apply to unarchived processes.

Archiving and unarchiving processes in bulk can be resource intensive so it is recommended that this script is run during non-business hours to avoid potential performance issues.

### Actions

`archive`: Archive one or more processes based on the parameters passed.

`search`: Return matching archive files based on certain search criteria.

`unarchive`: Restore processes to Appian, according to search criteria.

`help`: Lists help information about actions and options.

### Archiving

When a process gets archived, by default the script creates a `.l` file in the `<APPIAN_HOME>\server\archived-process` directory. The name of the `.l` file would be something like the following:

`process_0002dcee-c903-8000-aae2-014d98014d98_20160510160058_536870915.l`

where `0002dcee-c903-8000-aae2-014d98014d98` is the process model UUID, `20160510160058` is the timestamp when the process got archived, and `536870915` is the process id.

#### Archive options

`-pid`: Specify one or more process IDs to archive.

`-pmid`: Specify one or more process model IDs to archive all their process instances.

`-pmuuid`: Specify one or more process model UUIDs to archive all their process instances.

Any other options will be ignored.

#### Example

To archive processes with IDs 123 and 456, use the following:

```
1
archiveprocess archive -pid 123 456
```

### Unarchiving

**Note:**  Developers can view the history of all archived processes in the [monitoring view](monitoring_view.html#process-activity) without having to run the unarchiving script. This feature is currently enabled by default for all new Appian Cloud sites starting on Appian 21.1 or later versions and will be enabled on existing Appian Cloud sites via a phased approach.

When unarchiving a process you should pass at least two options: either `-pid` or `-pmuuid` _and_ the required `-file` option, in that order. Wildcard characters are allowed, but the option value must be enclosed in quotes to prevent premature expansion by the operating system (see examples).

#### Unarchive options

`-pid`: Specify the process ID or '\*' to indicate any process id available in the archive file provided by the `-file` option.

`-pmuuid`: Specify the Process Model’s UUID or '\*' to indicate any process model uuid available in the archive file provided by the `-file` option.

`-file`: Specify the filename of the archived process. Do not pass the complete path. This parameter is required for effecient unarchiving and calling the `unarchive` option without this parameter is not supported. Process archive filenames are of the form `process_<pmuuid>_<timestamp-YYYYMMDDHHmmss>_<pid>.l`.

#### Examples

To unarchive the process with the process ID 123456 represented by the specified file name on disk, use the following:

```
1
archiveprocess unarchive -pid 123456 -file process_0003cc70-5ad7-8000-5ad7-0a000064044c_20070803154824_123456.l
```

To unarchive the process with the process ID 536870938

```
1
archiveprocess unarchive -pid '*' -file '*_536870938.l'
```

To unarchive processes from the process model with the UUID 0002de8e-39d3-8000-80a4-014d98014d98

```
1
archiveprocess.sh unarchive -pmuuid 0002de8e-39d3-8000-80a4-014d98014d98 -file '*0002de8e-39d3-8000-80a4-014d98014d98*'
```

### Searching

If you do not know the file name of the process you want to unarchive, you can use the search action. However, this action can be resource intensive as it requires loading the archive files to retrieve the metadata. Like the unarchive options, wildcards are allowed but the option value must be enclosed in quotes.

**Note:**  Timestamps are specified in the format `YYYYMMDDHHmmss` in GMT.

#### Search options

`-pid`: Specify the process ID

`-pmuuid`: Specify the Process Model’s UUID.

`-pname`: Specify the process display name.

`-pcreator`: For processes that are archived in 20.1 and later, specify the **user UUID** of the process creator. For processes that were previously archived prior to 20.1, specify the **user ID** of the process creator.

`-powner`: For processes that are archived in 20.1 and later, specify the **user UUID** of the process owner. For processes that were previously archived prior to 20.1, specify the **user ID** of the process owner.

`-pstarted`: Specify the time that the process started using the following format `YYYYMMDDHHmmss`.

`-pmodified`: Specify the timestamp of last process modification.

`-pcompleted`: Specify the time when the process completed using the following format `YYYYMMDDHHmmss`.

`-parchived`: Specify the timestamp of when the process was archived.

`-pmid`: Specify the Process Model ID.

`-pmname`: Specify the Process Model name.

`-pmdesc`: Specify the Process Model description.

`-pmcreator`: For processes that are archived in 20.1 and later, specify the **user UUID** of the Process Model creator. For processes that were previously archived prior to 20.1, specify the **user ID** of the Process Model creator.

`-pmowner`: For processes that are archived in 20.1 and later, specify the **user UUID** of the Process Model owner. For processes that were previously archived prior to 20.1, specify the **user ID** of the Process Model owner.

`-pmcreated`: Specify the time when the Process Model was created.

`-pmmodified`: Specify the timestamp of the last process model modification.

`-pattern`: Specify a non-default archive file-naming pattern (the default pattern is `process*.l`).

#### Examples

To retrieve the file paths for archived processes for process model ID 999 started on August 3, 2007, use the following:

```
1
archiveprocess search -pmid 999 -pstarted "20070803*"
```

To return the file paths of the archived processes for process model ID 999, assuming that the archives are named with the `.bak` file extension (instead of the usual `.l` file extension), use the following:

```
1
archiveprocess search -pmid 999 -pattern "*.bak"
```

## Managing archive files

It is important to run the `cleanup.bat (.sh)` script on a regular basis to manage your process archive files. Use a Windows Scheduled Task, a cron job, or a job-scheduler calendar to run this script at least once-a-week to keep archive files from accumulating.

See also: [Data Maintenance](Data_Maintenance.html)

## Migrating process archives

It is not necessary to migrate archives when upgrading versions of Appian.

## Options for Appian Cloud users

-   By default, completed or canceled processes are archived 7 days after the process was active. Process Designers must set up the appropriate data management settings for every process model they want to preserve in the system for a different period of time.
-   If you require Appian Technical Support to unarchive a set of processes, a support ticket should be opened providing the appropriate unarchive options.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...