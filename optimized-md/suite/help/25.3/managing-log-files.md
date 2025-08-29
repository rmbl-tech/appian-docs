---
source_url: https://docs.appian.com/suite/help/25.3/managing-log-files.html
original_path: managing-log-files.html
version: "25.3"
title: "Managing Log Files"
page_id: "managing-log-files"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Managing Log Files

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Log files can accumulate rapidly and must be actively managed. This page contains an overview of common log management topics such as log rotation, retention, and removal.

## Log rotation

Appian log files are rotated to limit the total size of logs. Some files are rotated based on the date, while other files may be rotated based on file size. When a log reaches its size limit, the system creates a new file of the same name to continue logging, and renames the old file with a numerical suffix. For example: `file_downloads.log` will become `file_downloads.log.1`.

**Caution:**  Never configure HTTP integration request/response logging using the `appian_log4j.properties` files. Making any change to the `log4j.appender.INTEGRATION_REQ_RESP_ALL` properties will lead to unexpected behavior. Instead, they should be configured in the [Admin Console](Appian_Administration_Console.html#logging).

### Limiting log file size

The maximum size for any log file is determined by the following property in the `appian_log4j.properties` files:

```
1
log4j.appender.<APPENDER_NAME>.MaxFileSize=
```

By default, this value is set to **10MB**. You can modify this property to increase or decrease the maximum size of the file.

### Tomcat log rotation (self-managed installations)

On Windows, the Tomcat log is automatically rotated daily.

On Linux, the log is rotated only if `rotatelogs` is installed and included in the PATH environment variable.

The latest log file is named `tomcat-stdOut.log`. Logs for prior days will have a date suffix with the format `tomcat-stdOut.log.yyyy-MM-dd`.

## Log retention

Logs continue to [rotate](#log-rotation) until the maximum number of log files for that log is reached. Once the maximum is reached, the oldest will be deleted when a new log of the same name is created on the next rotation.

### Log retention for Appian Cloud

The latest two log files for each log are retained. The only exceptions to this are:

-   The application server log, which is periodically compressed as needed.
-   The Cloud database audit logs, which are retained in the `<APPIAN_HOME>/logs/audit/rdbms` directory for one week.

Older log files in Appian Cloud are deleted every 10 minutes.

### Limiting number of log files

The number of files that are created is limited by the following property in the `appian_log4j.properties` file:

```
1
log4j.appender.<APPENDER_NAME>.MaxBackupIndex=
```

By default, most logs retain a maximum of **10** old versions, but some retain **100** or **1,000**. You can find the default value for each log listed in `appian_log4j.properties`. Modify this property to define the maximum number of log files to keep.

## Removing log files

To prevent log files from consuming excessive disk space, you must periodically run the `cleanup.bat (.sh)` script to move or delete older log files. You can find the script here:

```
1
<APPIAN_HOME>/server/_scripts/
```

To remove aging log files, use the **logs** argument, passing the path to a backup folder and the number of log files to keep.

For example:

```
1
./cleanup.sh logs -target /appian_backup_log_files/ -keep 3
```

This command moves all but the three most recent log files to the`/appian_backup_log_files/` directory.

See also: [Data Maintenance](Data_Maintenance.html)

## Securing log files

Log files, particularly troubleshooting and audit files, can include usernames, content ids, and other information that may be considered sensitive. The `<APPIAN_HOME>/logs/` directory, its subdirectories, and the files within it should be secured accordingly so that only trusted administrators can access them.

To learn how to secure system files and directories, see your operating system's documentation.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...