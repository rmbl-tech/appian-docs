---
source_url: https://docs.appian.com/suite/help/25.3/Search_Server.html
original_path: Search_Server.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Search Server

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

Appian runs [Elasticsearch](https://www.elasticsearch.org/) to provide search and data retrieval capabilities. In the product and documentation, this is referred to as the "search server."

## Configuring the search server

The search server can be configured as a single instance or in a cluster for data redundancy and high availability.

| Search Server Instances | Data Redundancy | Automatic Failover | Example appian-topology.xml |
| --- | --- | --- | --- |
| 1 | No | No |
```

<topology>
    ...
    <search-cluster>
        <search-server
          host="ss.domain.tld"/>
    </search-cluster>
</topology>

```

 |
| 2 | Yes | No |

```

<topology>
    ...
    <search-cluster>
        <search-server
          host="ss1.domain.tld"
          port="9301"/>
        <search-server
          host="ss2.domain.tld"
          port="9302"/>
    </search-cluster>
</topology>

```

 |
| 3 | Yes | Yes |

```

<topology>
    ...
    <search-cluster port="9400">
        <search-server
          host="ss1.domain.tld"/>
        <search-server
          host="ss2.domain.tld"/>
        <search-server
          host="ss3.domain.tld"/>
    </search-cluster>
</topology>

```

 |

The `appian-topology.xml` file must be placed in both `<APPIAN_HOME>/conf/` and `<APPIAN_HOME>/search-server/conf/` on all application servers.

The `appian-topology.xml` examples above also demonstrate using the `port` attribute to change the port used by each search server node from the default of 9300 to a different value. The port can be set to be different for each search server instance, as in the second example, or set to be the same for each server in the cluster as shown in the third example.

The port specified in `port` element (default 9300) will be used by the search server for communication with search servers on the other nodes in your highly available Appian installation. For communication with the application server, the search server will use the port specified by an optional `httpPort` element. When not specified, it defaults to the value of 9200. **Thus, customers should have the 9200 port open for the search server**. If you want to use a different port instead of 9200, you can specify an `httpPort` element for the search server in `appian-topology.xml`. For example, if 9400 and 9500 ports are used for search server on all the nodes, the search server element in topology file will look like this:

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
<topology>
    ...
    <search-cluster port="9400" httpPort="9500">
        <search-server
          host="ss1.domain.tld"/>
        <search-server
          host="ss2.domain.tld"/>
        <search-server
          host="ss3.domain.tld"/>
    </search-cluster>
</topology>
```

If hostnames are used instead of IP addresses, it is required that the hostname on each machine resolve to a non-lookback IP address that other machines can use to contact the host. For example, `ss1.domain.tld` must not resolve to `127.0.0.1` on that machine, since the search server broadcasts both the hostname and IP address, as resolved on that machine, when establishing a cluster with other nodes.

### Index data

#### Location

The index data for the search server is located in `<APPIAN_HOME>/search-server/data/`. This directory should not be shared between application servers. Since the access to search server data is latency-sensitive, it is recommended that the search server data is hosted locally on the machine, rather than on a shared drive or an external drive such as shared network-attached storage (NAS). This is true in High Availability (HA) topologies as well, since each search server node stores its own version of the data.

#### Backup and restoration

Backing up search server data is not necessary as all indexes will be rebuilt from source data when they are empty.

### Sizing

The search server's use of disk and memory resources will scale with the amount of design objects, user activity, doc extraction mappings, and rule executions. The search server stores at most six entries per rule per minute, per application server. Although limited, rule execution metrics are the largest factor so we will use them for the sizing estimation. Additionally, the rule metrics are only stored for 30 days so we will calculate the maximum disk usage based on the number of minutes in 30 days using the following equation:

```
1
2
3
4
5
6
Max Disk Space =
Number of Unique Rules in the System
x Number of Application Servers
x 43,200 (the number of minutes in 30 days)
x 6 (the maximum number of rule metric entries per minute)
x 1 Kb (the approximate size of a rule metric entry)
```

For example, if your system has a sustained rate of ten unique rule executions every ten seconds for 30 days, you would expect to use ~2.6GB of disk for a single application server and ~7.8GB of disk for a three application server system.

To determine the number of rules in the system, review the "Rules and Constants" column in the `content.csv` file in the `<APPIAN_HOME>/logs/data-metrics` directory. To determine the number of unique rule executions that occur on your site in a given time period, review the `expressions_details.csv` file in the `<APPIAN_HOME>/logs/perflogs` directory.

## Starting and stopping

Below are instructions for starting and stopping the search server on Linux or Windows using the provided scripts. Note that when logging out of Windows, the search server process started by the user using the script will stop. Instead, the search server can be installed as a Windows service and started and stopped using the Windows service management console. For instructions on controlling the search server as a Windows service see [Installing Search Server as a Windows Service](Installing_Appian_as_a_Windows_Service.html#installing-search-server-as-a-windows-service).

### Starting

Execute `<APPIAN_HOME>/search-server/bin/start.sh`. (`start.bat` on Windows)

The search server should be started before starting the application server(s).

By default, the search server will start with the configurations for minimum and maximum memory usage (JVM heap) each set to 1024 MB (1 GB). To modify the memory usage to a custom value:

1.  Copy the `custom.options.example` file in `<APPIAN_HOME>/search-server/conf/jvm.options.d` to a file named `custom.options`.
2.  Uncomment the `Xms` and `Xmx` parameters and modify the value to specify initial and maximum size of total heap space used by the search server. Do not exceed 30 GB or half of the system memory. Do not set these values lower than 256 MB. `Xms` and `Xmx` values should be the same to prevent costly heap resizing.
3.  After updating the values, save the file and then stop and start the search server for the new settings to take effect.

Additional custom Java options can be configured through the `custom.options` file. In general, it is not recommended to configure additional custom Java options unless instructed by Appian Support.

To maintain the settings, the `custom.options` file should be copied to the new installation when upgrading to the next version of Appian.

### Stopping

Execute `<APPIAN_HOME>/search-server/bin/stop.sh`. (`stop.bat` on Windows)

The search server should be stopped after stopping the application server(s).

## Monitoring and recovery

Logs for the search server are located in the `<APPIAN_HOME>/logs/search-server/` directory. Log levels can be controlled by editing `<APPIAN_HOME>/search-server/conf/log4j.properties`.

Cluster health information is printed every five minutes to the `<APPIAN_HOME>/logs/data-metrics/search_server_cluster.csv` file. Description of the columns in this file can be found in the [search server cluster metrics Log](Logging.html#search-server-cluster-metrics-log) document.

The table below describes the meaning of the various cluster status levels and recovery procedures, if applicable.

| Status | Meaning | Recovery |
| --- | --- | --- |
| **GREEN** | All configured search server nodes are part of the cluster and operational | N/A |
| **YELLOW** | At least one search server node is down, but a majority are still available. The cluster remains operational, accepting both reads and writes. | Recover the down node(s) to the same host and port configured in `appian-topology.xml` or replace the down node with a new one on a different server by following these steps:
1.  Deploy the node to the new machine and start that application server with an updated `appian-topology.xml` that includes the existing nodes plus the new node as `<search-server>` elements in the `<search-cluster>` element.
2.  Replace the down node with the new node's host and port in the `<search-server>` element in the `appian-topology.xml` in the `<APPIAN_HOME>/search-server/conf/` directory on the remaining machines running the search server nodes, in any order.
3.  Replace the down node with the new node's host and port in the `<search-server>` element in the `appian-topology.xml` in the `<APPIAN_HOME>/conf/` directory on the machines running the main Appian EAR, in any order.

 |
| **RED** | Less than a majority of search server nodes are available. The cluster is only partially operational, accepting only reads. Writes are rejected. | Recover the down node(s) to the same host and port configured in `appian-topology.xml` or replace the down node with a new one on a different server by following the steps in the previous row. If this occurs with a two node cluster an option to return the cluster to a functional status is to remove the down node from the configuration and downgrade the cluster to a single node. Doing so means that the cluster will return to GREEN status and begin taking writes again, but will be in a state where there is no data redundancy.

1.  Remove the down node from the configuration of the remaining server running the search server by deleting the corresponding `<search-server>` element from the `appian-topology.xml` in the `<APPIAN_HOME>/search-server/conf/` directory.
2.  Remove the down node from the configuration of the remaining server running the main Appian EAR by deleting the corresponding `<search-server>` element from the `appian-topology.xml` in the `<APPIAN_HOME>/conf/` directory.

 |

### Other error scenarios

Should all of the nodes in the search server cluster fail during operation, both read and write calls will be rejected. Here are the features that will be affected:

-   [Current User Activity](Appian_Administration_Console.html#current-user-activity) - unavailable
    -   If there is a limit on the number of concurrent sessions enforced per account, no users will be able to log in
-   [Precedents and Dependents views in Appian Designer](Trace_Relationships_for_Impact_Analysis.html) - unavailable
    -   A red error box will appear on attempting to view either
    -   Dependents on Custom Data Types in /designer will still be available, but it will be slow
-   [Missing Precedents view](application-settings.html#missing-precedents) - unavailable
    -   A red error box will appear on attempting to view if there are any missing precedents
-   Historical interface [performance trends](Performance_View.html#performance-trends) - unavailable
-   [Appian document extraction auto-mapping](Appian_Doc_Extraction.html) - unavailable
    -   The [a!docExtractionResult()](fnc_docManagement_a_docExtractionResult.html) function will return an empty output
    -   [Reconcile Doc Extraction Smart Service](Reconcile_Doc_Extraction_Smart_Service.html) - the reconciliation task interface will load without any auto-mapped values. A red error box will appear on task submission.

If the application server running the Appian EAR is started before the search server is running, the application server will log the following error message on startup:

`The search server cannot be reached. Failed to connect to server at [host:port]. Check that the search server is started. If running multiple application servers, check that appian-topology.xml is properly configured with the search cluster details. The appian-topology.xml file must be distributed to each <APPIAN_HOME>/conf/ and <APPIAN_HOME>/search-server/conf/ directory. See documentation for details. (APNX-1-4274-001)`

See also [Search Server Cluster Metrics Log](Logging.html#search-server-cluster-metrics-log)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...