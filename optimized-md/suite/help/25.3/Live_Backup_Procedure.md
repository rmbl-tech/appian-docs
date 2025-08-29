---
source_url: https://docs.appian.com/suite/help/25.3/Live_Backup_Procedure.html
original_path: Live_Backup_Procedure.html
version: "25.3"
title: "Live Backup Procedure"
page_id: "Live_Backup_Procedure"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Live Backup Procedure

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

This page outlines the steps to be followed to back up all data of an Appian installation at an application level. It is not meant to replace or eliminate the need to backup the server at a drive and operating system level.

A live data backup can be performed on a running system in order to replicate the state of the data to an external storage device for restoration later should some catastrophic failure occur on the primary system.

## Configuring replication

A live backup of Appian involves several different types of data that require different replication mechanisms.

-   **File system**: Appian stores some of its system data, such as uploaded documents, archived processes, and more, on the host server's file system.

-   **Data service**: Appian stores data for record types with sync enabled in the [data service](Data_Server.html), along with other application metadata. Only self-managed customers need to configure data server data replication by using point-in-time file system backups, as data server data is automatically backed up for Appian Cloud customers.

-   **Internal Messaging Service**: The [Internal Messaging Service](Enterprise_Architecture_Overview.html#internal-messaging-service) holds data flowing between different components of Appian as well as transaction logs for the [Appian engines](Enterprise_Architecture_Overview.html#appian-engines) and the [data service](Enterprise_Architecture_Overview.html#data-service).

-   **RDBMS**: Appian typically connects to at least two [relational databases](Enterprise_Architecture_Overview.html#relational-databases): an [Appian Data Source](Configuring_Relational_Databases.html#appian-data-source) and one or more [business Data Sources](Configuring_Relational_Databases.html#business-data-sources).

## File system replication

The locations of application data listed in the following table should be replicated to your backup location using your standard file replication mechanism, such as rsync, disk snapshotting, or similar.

**Note:**  The <APPIAN\_HOME>/data-server/data/ directory should not be replicated during live backups, as this may result in data corruption.

| Component Name | Folder Location |
| --- | --- |
| Application Server | <APPIAN\_HOME>/\_admin/accdocs1/ |
| Application Server | <APPIAN\_HOME>/\_admin/accdocs2/ |
| Application Server | <APPIAN\_HOME>/\_admin/accdocs3/ |
| Application Server | <APPIAN\_HOME>/\_admin/mini/ |
| Application Server | <APPIAN\_HOME>/\_admin/models/ |
| Application Server | <APPIAN\_HOME>/\_admin/process\_notes/ |
| Application Server | <APPIAN\_HOME>/\_admin/shared/ |
| Application Server | <APPIAN\_HOME>/server/archived-process/ |
| Application Server | <APPIAN\_HOME>/server/msg/ |
| Channels Engine | <APPIAN\_HOME>/server/channels/gw1/ |
| Content and Collaboration Statistics Engines | <APPIAN\_HOME>/server/collaboration/gw1/ |
| Forums Engine | <APPIAN\_HOME>/server/forums/gw1/ |
| Notifications and Notifications Email Engines | <APPIAN\_HOME>/server/notifications/gw1/ |
| Personalization Engine | <APPIAN\_HOME>/server/personalization/gw1/ |
| Portal Engine | <APPIAN\_HOME>/server/portal/gw1/ |
| Process-design Engine | <APPIAN\_HOME>/server/process/design/gw1 |
| Process-analytics Engine (0000) | <APPIAN\_HOME>/server/process/analytics/0000/gw1/ |
| Process-analytics Engine (0001) | <APPIAN\_HOME>/server/process/analytics/0001/gw1/ |
| Process-analytics Engine (0002) | <APPIAN\_HOME>/server/process/analytics/0002/gw1/ |
| Process-execution Engine (00) | <APPIAN\_HOME>/server/process/exec/00/gw1/ |
| Process-execution Engine (01) | <APPIAN\_HOME>/server/process/exec/01/gw1/ |
| Process-execution Engine (02) | <APPIAN\_HOME>/server/process/exec/02/gw1/ |

If you have more than the default three shards of Process Execution and Process Analytics, the **gw1/** directories for those shards must be backed up as well.

**Note:**  After performing an upgrade or restoration, it is particularly important to ensure your keystore file, located in **\_admin/shared/**, and Appian data source data are present and in the correct state. If there is a problem with one of the two, the system will not start up and will log the following ERROR message to the application server log:

`The internal encryption module is in an inconsistent state. The appian.keystore file is missing or cannot be read. If migrating or restoring from a backup, ensure that _admin/shared/appian.keystore is in place. (APNX-1-4210-003)`

When running in a system with multiple application servers, some of these directories are shared between servers. In those cases, the data only needs to be backed up once from one of the servers. For those directories that are not shared between servers, the data needs to be backed up from each of the servers. See [High Availability and Distributed Installations](High_Availability_and_Distributed_Installations.html) for a list of directories that are shared when configuring a multiple server setup.

## Data Service replication

**Note:**  Configuring point-in-time file system backups is only necessary for self-managed customers. Data stored in the data service is automatically backed up for Cloud customers.

Data service replication can only be achieved by using point-in-time file system backups, such as EBS incremental snapshots, VMware snapshots, or other similar procedures. Backups must be taken on an hourly cadence to ensure compatibility. This timing can be changed by changing the [data service Kafka Retention time](Configuring_the_Data_Server.html#transaction-log). `rsync` and other non-point-in-time backups are not supported. With a point-in-time backup, the data service can be recovered by starting the recovery site using the backed-up data and the data service Kafka MirrorMaker topic.

If you are unable to use a point-in-time file system backup, the data service will have to be started without data on the backup server and all synced record types will need to be resynced. If you are using MirrorMaker to replicate your Kafka logs, the data service topic will need to be deleted.

To start Appian when you _cannot_ use a point-in-time file system backup:

1.  Delete the data service Kafka topic by running the following:

    ```
    1
    {APPIAN_HOME}/data-server/bin/delete-kafka-data.{sh/bat} {ABSOLUTE PATH TO KAFKA BIN DIRECTORY} {HOSTNAME} -f
    ```

2.  Delete snapshot data from the data service by running the following:

    ```
    1
    2
    rm -rf <APPIAN_HOME>/ae/data-server/data/ss
    rm -f <APPIAN_HOME>/ae/data-server/data/.no-op
    ```

3.  [Start Appian](Starting_and_Stopping_Appian.html).
4.  [Start a full sync](records-data-sync.html#manual-full-syncs) on all synced record types.

## Internal Messaging Service replication

**Note:**  Internal Messaging Service replication is not available to Appian Cloud customers, but [Enhanced Business Continuity](Enhanced_Business_Continuity_for_Appian_Cloud.html) can be purchased for disaster recovery.

The Internal Messaging Service is able to replicate its data to a backup location. Appian must be installed on the backup server, but only the Internal Messaging Service needs to be running there for the backup to take place.

This is a continuously running process that backs up the Internal Messaging Service data on a transaction-by-transaction basis. Only the transaction data is backed up by this process and any related data, such as engine .kdb files, must be backed up by other means like [File System Replication](Live_Backup_Procedure.html#file-system-replication)

### Topology

In **conf/appian-topology.xml** on the backup server, add `sourceKafkaCluster` and `mirrorMakerCluster` elements as in the examples below. In these examples, the backup system runs on `backupserver1.example.com` and the system to be replicated from runs on `primaryserver1.example.com`.

#### Example: Single-node

```
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
<topology port="5000">
  <server host="backupserver1.example.com">
    <engine name="forums"/>
    <engine name="notify"/>
    <engine name="notify-email"/>
    <engine name="channels"/>
    <engine name="content"/>
    <engine name="collaboration-statistics"/>
    <engine name="personalization"/>
    <engine name="portal"/>
    <engine name="process-design"/>
    <engine name="process-analytics0"/>
    <engine name="process-analytics1"/>
    <engine name="process-analytics2"/>
    <engine name="process-execution0"/>
    <engine name="process-execution1"/>
    <engine name="process-execution2"/>
  </server>
  <search-cluster port="9300">
    <search-server/>
  </search-cluster>
  <kafkaCluster>
    <broker host="backupserver1.example.com" port="9092"/>
  </kafkaCluster>
  <zookeeperCluster>
    <zookeeper host="backupserver1.example.com" port="2181"/>
  </zookeeperCluster>
  <sourceKafkaCluster>
    <broker host="primaryserver1.example.com" port="9092"/>
  </sourceKafkaCluster>
  <mirrorMakerCluster>
    <instance host="backupserver1.example.com"/>
  </mirrorMakerCluster>
  <data-server-cluster>
    <data-server host="backupserver1.example.com" port="5400" rts-count="2"/>
  </data-server-cluster>
</topology>
```

#### Example: High availability

```
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
<topology port="5000">
  <server host="backupserver1.example.com">
    <engine name="forums"/>
    <engine name="notify"/>
    <engine name="notify-email"/>
    <engine name="channels"/>
    <engine name="content"/>
    <engine name="collaboration-statistics"/>
    <engine name="personalization"/>
    <engine name="portal"/>
    <engine name="process-design"/>
    <engine name="process-analytics0"/>
    <engine name="process-analytics1"/>
    <engine name="process-analytics2"/>
    <engine name="process-execution0"/>
    <engine name="process-execution1"/>
    <engine name="process-execution2"/>
  </server>
  <server host="backupserver2.example.com">
    <engine name="forums"/>
    <engine name="notify"/>
    <engine name="notify-email"/>
    <engine name="channels"/>
    <engine name="content"/>
    <engine name="collaboration-statistics"/>
    <engine name="personalization"/>
    <engine name="portal"/>
    <engine name="process-design"/>
    <engine name="process-analytics0"/>
    <engine name="process-analytics1"/>
    <engine name="process-analytics2"/>
    <engine name="process-execution0"/>
    <engine name="process-execution1"/>
    <engine name="process-execution2"/>
  </server>
  <server host="backupserver3.example.com">
    <engine name="forums"/>
    <engine name="notify"/>
    <engine name="notify-email"/>
    <engine name="channels"/>
    <engine name="content"/>
    <engine name="collaboration-statistics"/>
    <engine name="personalization"/>
    <engine name="portal"/>
    <engine name="process-design"/>
    <engine name="process-analytics0"/>
    <engine name="process-analytics1"/>
    <engine name="process-analytics2"/>
    <engine name="process-execution0"/>
    <engine name="process-execution1"/>
    <engine name="process-execution2"/>
  </server>
  <search-cluster>
    <search-server host="backupserver1.example.com"/>
    <search-server host="backupserver2.example.com"/>
    <search-server host="backupserver3.example.com"/>
  </search-cluster>
  <data-server-cluster>
    <data-server host="backupserver1.example.com" port="5400" rts-count="2"/>
    <data-server host="backupserver2.example.com" port="5400" rts-count="2"/>
    <data-server host="backupserver3.example.com" port="5400" rts-count="2"/>
  </data-server-cluster>
  <kafkaCluster>
    <broker host="backupserver1.example.com" port="9092"/>
    <broker host="backupserver2.example.com" port="9092"/>
    <broker host="backupserver3.example.com" port="9092"/>
  </kafkaCluster>
  <zookeeperCluster>
    <zookeeper host="backupserver1.example.com" port="2181"/>
    <zookeeper host="backupserver2.example.com" port="2181"/>
    <zookeeper host="backupserver3.example.com" port="2181"/>
  </zookeeperCluster>
  <sourceKafkaCluster>
    <broker host="primaryserver1.example.com" port="9092"/>
    <broker host="primaryserver2.example.com" port="9092"/>
    <broker host="primaryserver3.example.com" port="9092"/>
  </sourceKafkaCluster>
  <mirrorMakerCluster>
    <instance host="backupserver1.example.com"/>
  </mirrorMakerCluster>
</topology>
```

The host of the `broker` elements inside the `sourceKafkaCluster` elements should point to the primary site's Kafka cluster (the one you want to replicate data from).

The number of `broker` elements inside `sourceKafkaCluster` must match the number of `broker` elements inside `kafkaCluster` as well as the number of `brokers` in the primary site's `kafkaCluster`. For example, if the primary site is running three Kafka brokers then the backup site must also run three Kafka brokers as well as have three brokers listed in the `sourceKafkaCluster` element.

The `mirrorMakerCluster` controls which server will run the replication process. There can only be one instance of this configured and it must be one of the servers listed in `kafkaCluster`.

### Firewall

In order for the Internal Messaging Service live backup procedure to work, the backup site must be able to connect to the primary site via port 9092.

### Starting the backup process

#### 1\. Preparing the Backup Instance

Delete the following directories from the servers hosting the backup site if they exist:

`APPIAN_HOME/services/data/zookeeper`

`APPIAN_HOME/services/data/kafka-logs`

#### 2\. Start ZooKeeper

On the servers that host the backup site's Zookeeper cluster, run:

```
1
APPIAN_HOME/services/bin/start.sh -p <password> -s zookeeper
```

#### 3\. Start Kafka

Verify that all of the Kafka brokers are running on the primary site. Then, run the following command on all the servers that host the backup site's Kafka cluster:

```
1
APPIAN_HOME/services/bin/start.sh -p <password> -s kafka
```

#### 4\. Start MirrorMaker

Now that the Kafka instances are up and running on the backup site, we need to start a process that will watch the main site's Kafka cluster for messages and replicate them into the backup site's Kafka cluster.

On the server that matches the hostname in the `mirrorMakerCluster` element in the backup site's **appian-topology.xml** file run:

```
1
APPIAN_HOME/services/bin/start.sh -p <password> -s mirror-maker
```

**Note:**  MirrorMaker must be manually restarted if the primary sites Kafka cluster becomes unavailable.

#### 5\. Validate Startup

Run the [Status Script](Service_Manager_Scripts.html#status-script) to validate MirrorMaker started successfully:

```
1
APPIAN_HOME/services/bin/status.sh -p <password>
```

Review the MirrorMaker log file for errors or warnings that may have occurred during the startup process. The MirrorMaker log file can be found at the following location:

`logs/service-manager/kafka/mirror-maker.log`

### Failover procedure

When failing over from your primary site to your backup site you must:

#### 1\. Stop the MirrorMaker processes

On the server that matches the hostname in the `mirrorMakerCluster` element in the backup site's **appian-topology.xml** file run:

```
1
APPIAN_HOME/services/bin/stop.sh -p <password> -s mirror-maker
```

#### 2\. Update the Appian Topology file

In **conf/appian-topology.xml** on the backup server, remove the `mirrorMakerCluster` and `sourceKafkaCluster` elements.

#### 3\. Start the backup Appian instance as normal

[Start all Appian services](Starting_and_Stopping_Appian.html).

#### 4\. Sync your record types

Perform a [full sync](records-data-sync.html#manual-full-syncs) for all of your record types with data sync enabled.

### Monitoring Replication Latency

Monitoring and alerting for data replication latency is available via the status script. By default alerts are triggered for topics where data replication has exceeded 5 minutes. The alerting threshold can be configured to meet specific requirements by setting the **serviceManager.mirrorMaker.replicationLagWarningThreshold** property in custom.properties.

**Example**: `serviceManager.mirrorMaker.replicationLagWarningThreshold = 1 minute`

Specify the time-based configurations in the format of `<number> <units>`, for example, `5 minutes` or `12 hours`. If no units are specified the assumed unit is milliseconds.

Alerting thresholds should be configured to meet specific Recovery Point Objective (RPO) requirements, when applicable.

See [Status Script](Service_Manager_Scripts.html#status-script) for a full listing of available alerts.

## RDBMS replication

Use your preferred backup mechanism for the specific RDBMS(s) used by your Appian environment.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...