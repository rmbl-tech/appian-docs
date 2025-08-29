---
source_url: https://docs.appian.com/suite/help/25.3/Service_Manager_Scripts.html
original_path: Service_Manager_Scripts.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Service Manager Scripts

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

## Purpose

The following scripts allow you to interact with the Appian engines and service manager. They are located in `<APPIAN_HOME>/services/bin/`.

## Script Wrapper

Provides Appian on Kubernetes sites with the ability to run service manager scripts without the Admin REST API password. If you do include the `-p` password parameter while using the wrapper, the request will fail.

### Location

`$APPIAN_HOME/serviceManagerScriptWrapper.sh`

### Usage

Exec into a service manager pod for use. For example:

```
1
$APPIAN_HOME/serviceManagerScriptWrapper.sh $APPIAN_HOME/services/bin/script.sh
```

**Note:**  The script wrapper does not currently support the following scripts: [Export](#export-script), [Password](#password-script), or [TransactionLogUtil](#transactionlogutil-script).

Read below to understand the usage and parameters for each script to use.

## Checkpoint Script

The checkpoint script allows you to manually request a [checkpoint](Configuring_Application_Checkpointing.html) for a given service.

Checkpointing will automatically happen periodically based on the estimated replay time should the engine restart and the total amount of time since the last successful checkpoint. Automatic checkpointing cannot be disabled.

However, there are a few cases where you would want to run the checkpoint script yourself. First, if you want more control over what time of day checkpoints occur. If you only have one running instance of a given engine, the checkpointing process causes a brief disruption of service for that engine while the checkpoint completes, which can take several seconds or minutes. If you have more than one running instance of an engine, a replica instance will perform the checkpoint, leaving the engine available throughout the checkpoint process. To force checkpointing to occur outside of your peak load hours, you can run this script on a cronjob or as a Windows Scheduled Task off-hours to reset the timers that trigger the automatic checkpointing.

Second, it is sometimes [necessary to re-sync](#recovery-script) the in-memory copy of an engine to the .kdb file on disk the so that other instances of the engine can start up from it rather than from the transaction log.

### Location

`<APPIAN_HOME>/services/bin/checkpoint.sh (.bat)`

### Options

| Short Name | Long Name | Required | Meaning |
| --- | --- | --- | --- |
| \-h | \--help | No | Show usage information |
| \-p | \--password | Yes | Password for Admin REST API |
| \-s | \--services | Yes | A comma-separated list of engines to checkpoint. See below for possible values. |
| \-w | \--wait | No | Wait for the requested checkpoints to complete |

**Available values for the `--services` parameter:** `all`, `analytics00`…`analytics31`, `channels`, `content`, `download-stats`, `execution00`…`execution31`, `forums`, `groups`, `notifications`, `notifications-email`, `portal`, `process-design`.

### Usage

This script will only have an effect when run on the same server that hosts the primary instance of a service.

```
1
./checkpoint.sh -p <password> -s content
```

## Engine Restart Script

**Tip:**  All [highly-available](High_Availability_and_Distributed_Installations.html) sites automatically restart engines during [checkpointing](Configuring_Application_Checkpointing.html) given the proper, safe conditions to do so.

The engine restart script allows you to restart an Appian engine safely while the site is running in a [High Availability configuration](High_Availability_and_Distributed_Installations.html). This allows you to free up memory that has been reserved but is not currently used by the engine.

If you still need to run this script between automatic engine restarts, Appian recommends running this script on the server hosting the primary engine in a High Availability configuration (use the [Status Script](#status-script) to determine the primary engine). Restarting the primary engine frees up the most memory, but it can be used on replicas as well, to lesser effect. This script only runs on one engine at a time.

### Location

`<APPIAN_HOME>/services/bin/engineRestart.sh (.bat)`

### Options

| Short Name | Long Name | Required | Meaning |
| --- | --- | --- | --- |
| \-h | \--help | No | Show usage information |
| \-p | \--password | Yes | Password for Admin REST API |
| \-s | \--service | Yes | The service to restart. See below for values. |

**Available values for the `--service` parameter:** `analytics00`…`analytics31`, `channels`, `content`, `download-stats`, `execution00`…`execution31`, `forums`, `groups`, `notifications`, `notifications-email`, `portal`, `process-design`.

### Usage

```
1
./engineRestart.sh -p <password> -s execution00
```

## Export Script

The Appian engines synchronously store write transactions in the Kafka component of the Internal Messaging Service as they are applied. For troubleshooting purposes it is sometimes useful to be able to look at the contents of the transaction log for an engine to see how many transactions were applied in a given time period, what types of transactions are flowing through the system, or what parameters were used in a particularly slow transaction. The export script outputs the contents of the transaction log in a machine-readable format for analysis by Appian Support.

Run this script when directed to do so by Appian Support as part of troubleshooting.

### Location

`<APPIAN_HOME>/services/bin/export.sh (.bat)`

### Options

| Short Name | Long Name | Required | Meaning |
| --- | --- | --- | --- |
| \-h | \--help | No | Show usage information |
| \-f | \--from-transaction | No | Id of the first transaction to export (inclusive) |
| \-o | \--output-directory | No | Directory to write the export file to |
| \-r | \--raw | No | Export the entire transaction log in raw kafka data format |
| \-t | \--to-transaction | No | Id of the last transaction to export (inclusive) |

Although none of the options are required, you must use either `--from-transaction` and `--to-transaction` to specify a transaction range or use the `--raw` option.

### Usage

The export script takes as a parameter the name of a service for which to export transactions. One of: `analytics00`, `analytics01`, `analytics02`, `channels`, `content`, `download-stats`, `execution00`, `execution01`, `execution02`, `forums`, `groups`, `notifications`, `notifications-email`, `portal`, `process-design`.

```
1
export.sh groups --from-transaction 1 --to-transaction 100
```

## Password Script

Administrative scripts, like the [checkpoint script](#checkpoint-script), interact with the service manager via a REST API. To prevent applications from inadvertently accessing this REST API, it is protected by a password. The password script is used to set service manager's password.

Run this script when initially installing and configuring Appian. This script sets the password for the service manager instance on the server on which it was run. It should be run on all servers that are configured to have an Appian engine or Internal Messaging Service (Kafka and Zookeeper).

### Location

`<APPIAN_HOME>/services/bin/password.sh (.bat)`

### Options

| Short Name | Long Name | Required | Meaning |
| --- | --- | --- | --- |
| \-h | \--help | No | Show usage information |
| \-p | \--password | Yes | New Password |

### Usage

All Appian services, including the service manager, must be shut down before running this script.

```
1
./password.sh -p <password>
```

## Recovery Script

The Appian engines synchronously store write transactions in the Kafka component of the Internal Messaging Service as they are applied. When an engine restarts after either an unclean shutdown or after being cleanly [shut down with the –quick option](Service_Manager_Scripts.html#stop-script), the engine will need to replay these transactions as part of its startup process. Occasionally, there is an [error during this transaction replay](Logging.html#engine-event-logs) that halts startup. When this occurs it is usually necessary to truncate the transaction log before the problematic transaction in order to restart the engine.

Run this script when a transaction replay error prevents starting an engine and you need to truncate the transaction log before that point. When possible, the decision to use the recovery script should be made in consultation with Appian Support.

If you have a running instance of the engine in question that is already past the bad transaction in the log, instead of truncating the transaction log you should [checkpoint](#checkpoint-script) that engine and then re-attempt to start the replica copy of the engine.

### Location

`<APPIAN_HOME>/services/bin/recovery.sh (.bat)`

### Options

| Short Name | Long Name | Required | Meaning |
| --- | --- | --- | --- |
| \-h | \--help | No | Show usage information |
| \-p | \--password | Yes | Password for Admin REST API |
| \-ni | \--no-import | No | Do not reimport transactions into the log |
| \-s | \--service | Yes | The K service to recover |
| \-t | \--last-transaction | No | The max transaction id in the transaction logs to keep |

**Available values for the `--service` parameter:** `analytics00`…`analytics31`, `channels`, `content`, `download-stats`, `execution00`…`execution31`, `forums`, `groups`, `notifications`, `notifications-email`, `portal`, `process-design`.

You must either specify the `--last-transaction` or `--no-import` parameters.

### Usage

```
1
./recovery.sh -p <password> -s content -t 100
```

## Reset Analytics Script

The execution and analytics engines are paired with each other and the data in a given execution engine, for example, execution01, is replicated into the corresponding analytics engine, for example, analytics01. Occasionally the data in the two paired engines get out of sync and need to be re-synced. This is accomplished by "resetting" or clearing out the data in the analytics engine, after which the analytics engine will automatically rebuild itself off of the data in execution.

Run this script when instructed by Appian Support.

### Location

`<APPIAN_HOME>/services/bin/resetAnalytics.sh (.bat)`

### Options

| Short Name | Long Name | Required | Meaning |
| --- | --- | --- | --- |
| \-h | \--help | No | Show usage information |
| \-p | \--password | Yes | Password for Admin REST API |

### Usage

Before you run the resetAnalytics script, [the application server](Starting_and_Stopping_Appian.html) must be shut down first followed by these engines:

-   Appian Analytics K engines
-   Process-design engines
-   Paired execution shard engines

To shut down the engines, use the following script:

```
1
./stop.sh -p <password> -s analytics,execution,process-design
```

This script must be run on every server that contains an analytics engine.

Once you have shut down the engines and the application server, you can run the resetAnalytics script. While running the script, Kafka and Zookeeper must be running.

This script can be used on [distributed sites](High_Availability_and_Distributed_Installations.html#how-to-configure-a-distributed-installation) where components are distributed across multiple physical machines. To reset all of the different analytics engines on a distributed site, you must run the script on any of the servers that manage the shard you want reset.

For HA sites, the script must be run on any one of the servers which hosts a copy of the analytics shard(s) being reset.

```
1
./resetAnalytics.sh -p <password>
```

If you only need to reset some, but not all, analytics engines, you can use an optional `-s` flag and specify the engines for restart. See the example below.

```
1
./resetAnalytics.sh -p <password> -s analytics01,analytics02
```

Now that you have run the resetAnalytics script, you can restart the following engines:

-   Appian Analytics K engines
-   Process-design engines
-   Paired execution shard engines

```
1
./services/bin/start.sh -nk -p <password> -s analytics,execution,process-design
```

## Start Script

The start script starts up the Appian engines and associated other services, like service manager and Kafka.

### Location

`<APPIAN_HOME>/services/bin/start.sh (.bat)`

### Options

| Short Name | Long Name | Required | Meaning |
| --- | --- | --- | --- |
| \-h | \--help | No | Show usage information |
| \-p | \--password | Yes | Password for Admin REST API |
| \-s | \--services | Yes | A comma-separated list of services to start. See below for values. |
| \-f | \--foreground | No | Run in the foreground |
| \-nk | \--no-kafka | No | Skip starting distributed transaction log |

**Available values for the `--services` parameter:** `all`, `analytics00`…`analytics31`, `channels`, `content`, `download-stats`, `execution00`…`execution31`, `forums`, `groups`, `notifications`, `notifications-email`, `portal`, `process-design`, `manager`, `mirror-maker`.

### Usage

```
1
./start.sh -p <password> -s all
```

## Status Script

The status script displays a summary of the state of the Appian engines and associated other services as well as a list of any active alerts.

Run this script periodically in order to monitor the state of the Appian engines.

### Location

`<APPIAN_HOME>/services/bin/status.sh (.bat)`

### Options

| Short Name | Long Name | Required | Meaning |
| --- | --- | --- | --- |
| \-h | \--help | No | Show usage information |
| \-p | \--password | Yes | Password for Admin REST API |
| \-c | \--cluster | No | Show status of all nodes in cluster |
| \-nc | \--no-color | No | Turn off colored output |
| \-wfr | \--wait-for-running | No | Wait for all engines in topology to be in RUNNING state with leaders elected |

### Usage

```
1
./status.sh -p <password> -c
```

#### Alerts

Below is a listing of the alerts that can be reported by the status script, their possible causes, and likely steps to resolve.

##### Service Manager on host \[host\] is unreachable

The service manager instance on the specified host is either not running, not responsive, or blocked from network traffic from the host where the status script ran. Restart the down service manager instance or unblock the network connection.

##### Kafka broker on \[host\] is unreachable

The Kafka broker instance on the specified host is either not running, not responsive, or blocked from network traffic from the host where the status script ran. Restart the down Kafka broker instance or unblock the network connection.

##### Zookeeper on \[host\] is unreachable

The Zookeeper instance on the specified host is either not running, not responsive, or blocked from network traffic from the host where the status script ran. Restart the down Zookeeper instance or unblock the network connection.

##### Engine \[engine name\] does not have a primary

Every Appian engine needs an instance in a `PRIMARY` state in order to service requests from the rest of the application. If there is no instance in a `PRIMARY` state, either start an instance if none are running or make sure that the other components of the system, like Kafka and Zookeeper, are up and running as well.

##### The \[engine name\] engine on \[host\] has been checkpointing for \[time period\]

When checkpoints take a long time to complete, the likely causes are either very slow disk I/O speeds or other resource constraints like CPU utilization.

##### The \[engine name\] engine on \[host\] has not checkpointed in over \[time period\]

Running for a long time without checkpointing leaves the system at increased risk in the case of a disaster recovery scenario. Run the [checkpoint script](#checkpoint-script) and make sure the checkpoint completes. If the checkpoint fails, confirm that the `/services/data/temporary/`, `/services/data/archived/`, and `/server/**/gw1/` directories are writable by the user Appian is running as.

##### The \[engine name\] engine on \[host\] has not checkpointed in over \[transaction count\] transactions

Running for a long time without checkpointing leaves the system at increased risk in the case of a disaster recovery scenario. Run the [checkpoint script](#checkpoint-script) and make sure the checkpoint completes. If the checkpoint fails, confirm that the `/services/data/temporary/`, `/services/data/archived/`, and `/server/**/gw1/` directories are writable by the user Appian is running as.

##### The \[engine name\] engine on \[host\] has not checkpointed even though the estimated replay time is over \[time period\]

Running for a long time without checkpointing leaves the system at increased risk in the case of a disaster recovery scenario. Run the [checkpoint script](#checkpoint-script) and make sure the checkpoint completes. If the checkpoint fails, confirm that the `/services/data/temporary/`, `/services/data/archived/`, and `/server/**/gw1/` directories are writable by the user Appian is running as.

##### Engine \[engine name\] on \[host\] has a load metric of \[load metric\] and the configured limit is \[MAX\_EXEC\_ENGINE\_LOAD\_METRIC\]

The load metric is measure of how much process data each execution engine contains. When the amount of process data reaches the configured load metric, new processes will not start on that execution engine anymore. When the [MAX\_EXEC\_ENGINE\_LOAD\_METRIC](Configuring_the_Process_Engine_Servers.html#max_exec_engine_load_metric) is reached, the options are either to delete processes that are running on that execution engine or to increase the configured load metric limit.

##### Engine \[engine name\] on \[host\] is CRASHLOOPBACKOFF

To troubleshoot a crashing engine, first check the engine log files `db_*.log` to identify which engine is crashing and review any suspicious errors or warnings leading up to the crash. Next, examine the `service-manager*.log` files for additional error or warning messages that might provide further context. If no relevant issues are found in either set of logs, try fully stopping the engine and restarting it to see if the problem resolves.

##### Kafka topic \[topic name\] in sync replica count \[replica count\] is below minimum threshold of \[replica count\], refer to documentation for further guidance. Brokers not in sync: \[hosts\]

Transaction data is not fully replicating throughout the Kafka cluster, leading to an increased risk of data loss in the event of a server failure. Restart all Kafka brokers, one at a time, to force a re-sync.

This alert is only applicable to high-availability configurations.

##### \[topic name\] replication is lagging by \[time period\]

Transaction data replication between the primary and backup sites has drifted outside of the Recovery Point Objective (RPO). Check **logs/service-manager/kafka/mirror-maker.log** for more details.

This alert is only applicable to high-availability configurations that are running the [Live Backup Procedure](Live_Backup_Procedure.html#internal-messaging-service-replication).

## Stop Script

The stop script shuts down the Appian engines and associated other services, like Service Manager and the Internal Messaging Service.

### Location

`<APPIAN_HOME>/services/bin/stop.sh (.bat)`

### Options

| Short Name | Long Name | Required | Meaning |
| --- | --- | --- | --- |
| \-h | \--help | No | Show usage information |
| \-p | \--password | Yes | Password for Admin REST API |
| \-s | \--services | No | A comma-separated list of services to stop. See below for values. Excluding this flag will result in stopping the cluster. |
| \-nk | \--no-kafka | No | Skip stopping Internal Messaging Service |
| \-par | \--parallel | No | Stop all engines at once (deprecated; this will have no effect) |
| \-q | \--quick | No | Skip checkpointing when stopping an engine or engines |
| \-nw | \--no-wait | No | Skip the warning when shutting down the cluster without the "-s" flag |

**Available values for the `--services` parameter:** `all`, `analytics00`…`analytics31`, `channels`, `content`, `download-stats`, `execution00`…`execution31`, `forums`, `groups`, `notifications`, `notifications-email`, `portal`, `process-design`, `manager`, `kafka`, `zookeeper`, `mirror-maker`.

**Tip:**  If you are shutting down a single server you should use `-s all`. Otherwise, you do not need to use the `-s` flag and by default the cluster will be shut down.

When using the default shutdown behavior, you must run the stop script on all servers that are configured to run engines at the same time as the script will pause and wait for other servers to indicate that they have shut down their services before exiting.

By default, and unless you use the `--quick` option, the stop script will checkpoint the engines as they shut down. This results in .kdb files that contain up-to-date data (i.e. no data is persisted solely in the Internal Messaging Service - Kafka) which are suitable for performing an upgrade. Using the `--quick` option will result in .kdb files that do not contain all of the engine's data and the remaining transactions will need to be replayed as part of the subsequent startup. Kdb files like this are not suitable for performing an upgrade.

### Usage examples

#### Stop services on a specific node

This will stop all services:

```
1
./stop.sh -p <password> -s all
```

This will stop the Internal Messaging Service as well, but only for Windows and Linux customers. This is not applicable for Appian on Kubernetes.

**Tip:**  This script can be used for a single server environment or against one server for a High Availability or distributed deployment. Only the services on the machine where the script is being run will be affected.

#### Stop a cluster

**Caution:**  This **must** be run on all nodes.

```
1
./stop.sh -p <password>
```

#### Rolling restarts for maintenance

To be the least disruptive for end users when you need to restart nodes in a Highly Available environment for maintenance. This is not recommended for distributed environments.

1.  Manually checkpoint all engines

    ```
    1
    ./checkpoint.sh -p <password> -s all
    ```

2.  Stop all engines and skip checkpointing

    ```
    1
    ./stop.sh -p <password> -s all -q
    ```

3.  Restart the node

## TransactionLogUtil Script

The Appian engines synchronously store write transactions in the Kafka component of the Internal Messaging Service as they are applied. For troubleshooting purposes it is sometimes useful to be able to look at the contents of the transaction log for an engine to see how many transactions were applied in a given time period, what types of transactions are flowing through the system, or what parameters were used in a particularly slow transaction. The transactionLogUtil script outputs the contents of the transaction log, including the timestamp, id, method name, executing user, size, and duration of each transaction.

Run this script when directed to do so by Appian Support as part of troubleshooting.

### Location

`<APPIAN_HOME>/services/bin/transactionLogUtil.sh (.bat)`

### Options

| Short Name | Long Name | Required | Meaning |
| --- | --- | --- | --- |
| \-h | \--help | No | Show usage information |
| \-s | \--start | No | Starting date or transaction id |
| \-e | \--end | No | Ending date or transaction id |
| \-l | \--limit | No | Maximum number of transactions to process |
| \-p | \--print | No | Print transactions |

The `--print` option requires a format of either `detail`, `summary`, or `hex`. The default value is `summary`.

Running without the `--start`, `--limit`, and `--end` parameters will result in all transactions for the specified service being printed out.

### Usage

The transactionLogUtil script takes as a parameter the name of a service for which to export transactions. One of: `analytics00`…`analytics31`, `channels`, `content`, `download-stats`, `execution00`…`execution31`, `forums`, `groups`, `notifications`, `notifications-email`, `portal`, `process-design`.

```
1
./transactionLogUtil.sh content
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...