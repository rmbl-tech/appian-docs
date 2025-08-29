---
source_url: https://docs.appian.com/suite/help/25.3/Internal_Data.html
original_path: Internal_Data.html
version: "25.3"
title: "Internal Data"
page_id: "Internal_Data"
section: "Default directories"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Internal Data

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

## Default directories

Apart from storing information in the application databases, Appian also utilizes the file system on the machine to store content. This page describes how to modify the file paths where Appian stores this content.

After updating any of the properties listed, all Appian services and the application server must be restarted for the changes to take effect.

The table below lists the default directories where Appian internal data is stored on the file system.

| Component Name | Folder Name | Default Folder Location |
| --- | --- | --- |
| Collaboration | `accdocs1` | `APPIAN_HOME/_admin/` |
| Collaboration | `accdocs2` | `APPIAN_HOME/_admin/` |
| Collaboration | `accdocs3` | `APPIAN_HOME/_admin/` |
| Process | `archived-process` | `APPIAN_HOME/server/` |
| Search (Search Server) | `data` | `APPIAN_HOME/search-server/` |
| Search (shared content search index) | `search` | `APPIAN_HOME/_admin/` |
| Data Service (Snapshot) | `ss` | `APPIAN_HOME/data-server/data/` |
| Forums | `msg` | `APPIAN_HOME/server/` |
| Web Content Channel | `mini` | `APPIAN_HOME/_admin/` |
| Process | `models` | `APPIAN_HOME/_admin/` |
| Process | `process_notes` | `APPIAN_HOME/_admin/` |
| Keystore | `shared` | `APPIAN_HOME/_admin/` |
| Engine Transactions | `kafka-logs` | `APPIAN_HOME/services/data/` |
| Engine Transactions | `zookeeper` | `APPIAN_HOME/services/data/` |
| Web Application Collateral
(JSPs, JavaScript, CSS, XML configuration files, properties files and Java code) | `web.war` | `APPIAN_HOME/deployment/` |
| File Export | `tmp` | `APPIAN_HOME/_admin/` |

**Note:**  Both Kafka and Zookeeper are sensitive to latency reading from and writing to disk. Appian recommends keeping the data directories for these two components (`services/data/kafka-logs` and `services/data/zookeeper`) on local disks rather than mounting them onto network drives. This recommendation is consistent with industry [best practices for these services](https://docs.confluent.io/current/kafka/deployment.html#disks).

The same recommendation about using local disk applies to the [search server](Search_Server.html#index-data) (`search-server/data/`) and the [data service](Configuring_the_Data_Server.html#file-system) (`data-server/data/`) as well.

**Caution:**  The files in these directories should never be manually modified, moved, or deleted.

## Appian data source schema

Appian internal data is also stored in the database configured as the Appian data source. The schema for the tables in the Appian data source is available upon request from [Appian Support](https://forum.appian.com).

_The schema documentation is provided for informational purposes only. These tables are not considered to be part of the public API or integration points and should not be read from or written to directly._

## Changing the directory structure

You can modify the directories where Appian stores document management data.

-   The Base Path property (`conf.suite.BASE_PATH`) in [custom.properties](Custom_Configurations.html) specifies the directory that contains the following document management folders.
    -   accdocs1
    -   accdocs2
    -   accdocs3
-   The default location is `<APPIAN_HOME>/_admin`.

-   Relative paths use the `deployment/` directory as their starting point. For example, the relative path for the log index property (`conf.suite.VALIDATE_LOG_INDEX`) in custom.properties is set to `../../logs/validation`.

-   If you are specifying a relative path on Windows, do not use the backslash character (\\) which is an escape character in Java. Forward slash (/) characters are accepted and treated in the same manner as backslashes by Windows.

### Changing the directory used for storing process models

The directory used for storing process models can be defined using the following property in [custom.properties](Custom_Configurations.html).

```
1
resources.appian.process.application.PM_STORE_ROOT_PATH=
```

This path is read by Java. The backslash (\\) is an [Escape character](https://en.wikipedia.org/wiki/Escape_character) in Java. Though forward slash characters are recognized by Windows, you must include an extra backslash if specifying a path on Windows using backslash characters.

For example, you must type `C:\\appian\\_admin\\models` instead of `C:\appian\_admin\models`. We recommend using forward slash characters for this reason.

### Configuring search directories

The location of the search index for the Tempo News search and search server indices is `<APPIAN_HOME>/search-server/data/`. The location can be configured by setting the property below in `custom.properties`. This directory must not be shared between application servers. It is local to each application server.

```
1
conf.data.primary.datasource.search.index=
```

## XML property defined directories

The directories where Document Management subdirectories (document partitions) are specified in XML property files.

-   To modify the location settings, create override property settings in a [custom xml configuration file](Custom_Configurations.html). Where a filename lists an asterisk (\*) this portion of the filename is user-defined.

| Component Name | Folder Name | Custom Configuration File | Property to Override |
| --- | --- | --- | --- |
| Content | accdocs1 | `/server/_conf/partitions*.xml` | `"/accdocs1"` |
| Content | accdocs2 | `/server/_conf/partitions*.xml` | `"/accdocs2"` |
| Content | accdocs3 | `/server/_conf/partitions*.xml` | `"/accdocs3"` |

Appian assigns Document Management knowledge centers to a partition (the one with the lowest number of documents) when the knowledge center is created. Partition directories are added when documents are uploaded to the knowledge center. The documents for a particular knowledge center are always saved in the same partition.

It is possible to add a partition for storing knowledge center documents, by defining it in `<APPIAN_HOME>/server/_conf/partitions<CUSTOM>.xml` where CUSTOM is a name that you define for the property file changes (see [Configuring Custom Properties](Custom_Configurations.html)). For example, to create a new partition named `accdocs4`, add the following line to a copy of your partitions.xml file.

```
1
 <partition id="4">accdocs4</partition>
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...