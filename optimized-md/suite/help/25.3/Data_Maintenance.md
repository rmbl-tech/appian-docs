---
source_url: https://docs.appian.com/suite/help/25.3/Data_Maintenance.html
original_path: Data_Maintenance.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Data Maintenance

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

Appian retains historical data in process archives, .kdb files, and log files. These files can accumulate rapidly and must be actively managed.

## Appian engine files

Old .kdb files are automatically moved to an archive location (`services/data/archived`) when they are no longer in use. By default, the most recent .kdb file for the [analytics engine](Enterprise_Architecture_Overview.html#appian-engines), and the two most recent .kdb files for all other engines are kept. Any older versions are deleted to preserve disk space.

## Log files

In addition to moving and deleting historical database files, the **cleanup.bat** (**.sh**) script is used to move the Appian log files to a backup location and delete older versions. It must be run on each machine where log files are stored.

## Process archives

The system default archives a process 7 days after it has been canceled or completed. Historical archive files must be moved or deleted to prevent them from consuming too much disk space on your production system. This is done using the **cleanup.bat** (**.sh**) script.

Process archives are generated in the following ways.

-   The default archive interval is: **7** (days after process completion). After this time period, completed processes are automatically archived.
    1.  You can override the default **AUTOARCHIVE\_DELAY** setting by configuring `<APPIAN_HOME>/conf/custom.properties`.
    2.  Type the following configuration. `server.conf.exec.AUTOARCHIVE_DELAY=n`. Replace _n_ with the number of days you want to include for the interval. You must create this file, if it does not already exist. For additional details, see [Configuring Custom Properties](Custom_Configurations.html#custom-properties) for additional details.
-   Each Process Model can be set to its own archive interval from the [Data Management Tab](process-model-object.html#data-management-tab) of the Process Model Properties dialog in the Process Modeler. All processes spawned from the Process Model are impacted by this overriding archive interval (including previously completed processes).
-   Processes can also be archived using the **archiveprocess.bat** (**.sh**) [script](Managing_Process_Archives.html#using-the-archive-process-script-file) located in the `<APPIAN_HOME>/server/_scripts/tools/` directory.

### Automatically deleting completed processes

Completed processes can be automatically deleted after a certain interval. See the [Archiving Processes](Archiving_Processes.html) help topic for details regarding how to configure a process model's properties to enable automatic deletion of each completed or canceled process. There is no global setting for automatic process deletion.

All processes spawned by a Process Model are impacted by a change to its automatic-deletion setting (including processes that have already completed).

It is possible to modify the default interval displayed in the **days** field of the **Delete processes** option (on the Data Management Tab on each Process Model).

## Cleanup schedule

The **cleanup.bat** (**.sh**) script is intended to be run on a regular basis to preserve disk space. Use a Windows Scheduled Task, a **cron** job, or a Job Scheduler calendar to run this script at least once per day for system maintenance.

## Cleanup script

The **cleanup.bat** (**.sh**) script is used to copy log files and process archives to a backup location and delete old ones from the production server. The script is located in the `<APPIAN_HOME>/server/_scripts/` directory.

**Tip:**  On Windows, you may need to run the script as Administrator.

### Usage

`cleanup [Action] [Options] [Arguments]`

#### Actions

| Option | Description |
| --- | --- |
| logs | Clean up old log files. |
| logsv2 | Clean up old log files including:
-   Tomcat
-   Engine Performance
-   Removed Processes
-   Logins
-   Engine Calls
-   Expressions Performance

 |
| processes | Clean up old archived processes. |
| help | Display this information. |

#### Options and arguments

##### Back up the log files or archived processes.

Use the **target** option and specify the full or relative path to the location where a back up of the cleaned-up files are (or will be) stored.

`-target [backup location]`

##### Retain a given number of files on the production server.

Use the **keep** option to specify the number of existing files that are retained. For data files and log files, provide an integer specifying the number of files. For process archives, type the age (in days) of the oldest archive files that are to be retained.

`-keep [the number of the most recent files to keep, or the retention interval for archived processes listed in days]`

##### Delete files.

Use the **delete** option to delete specified files, without first moving them to a backup location.

`-delete`

## Cleanup script examples

**To move archived processes that are older than 100 days to a specified backup directory:**

`cleanup processes -target C:\BKUP20\ap\ -keep 100`

**To keep the three most-recent log files of each type and move all others to C:\\BKUP20\\logs:**

`cleanup logs -target C:\BKUP20\logs\ -keep 3`

**To move files to a backup directory and keep the five most recent versions of log files:**

`<APPIAN_HOME>/server/_scripts/cleanup.sh logsv2 -target <Backup_Location> -keep 5`

**To delete files and keep the 30 most recent versions of log files:**

`<APPIAN_HOME>/server/_scripts/cleanup.sh logsv2 -delete -keep 30`

**To run the debug flag with the cleanup script:**

`<APPIAN_HOME>/server/_scripts/cleanup.sh logsv2 -target <Backup_Location> -keep 30 -debug`

**Tip:**  The `-debug` flag enables debugging information helpful for troubleshooting.

Additionally, the `-logDir` flag can be used to point to a different log directory rather than the default logs folder.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...