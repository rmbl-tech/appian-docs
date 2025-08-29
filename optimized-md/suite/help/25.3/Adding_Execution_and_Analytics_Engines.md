---
source_url: https://docs.appian.com/suite/help/25.3/Adding_Execution_and_Analytics_Engines.html
original_path: Adding_Execution_and_Analytics_Engines.html
version: "25.3"
title: "Adding Execution and Analytics Engines"
page_id: "Adding_Execution_and_Analytics_Engines"
section: "Add engines to a standalone Appian installation"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Adding Execution and Analytics Engines

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

An initial Appian installation installs three execution engines and three analytics engines.

It is possible to add up to a total of 32 execution and 32 analytics engines by defining them in `appian-topology.xml`. This spreads the process execution load over a larger number of CPUs and allows for [increased process throughput and system scale](Scaling_Appian.html#add-execution-and-analytics-shards).

Appian does NOT support the removal of execution engines.

When an execution engine is added, it is added to the list of engines that are used to start new processes. Processes are distributed across all available execution engines (so long as they have not reached the `MAX_EXEC_ENGINE_LOAD` threshold). Subprocesses start on the same engine as their parent.

The number of process analytics engines and process execution engines in your instance must be the same. Whenever you add a process execution engine, you must also add a process analytics engine. The process for adding engines varies depending on your site's configuration.

## Add engines to a standalone Appian installation

A standalone installation has one server that must be configured by completing the following steps.

1.  [Update the topology](#update-the-topology).
2.  [Update the maximum number of report rows](#increase-the-maximum-number-of-report-rows).

### Update the topology

To add engines to standalone topology (where one web server and one machine run all Appian components), complete the following steps:

1.  [Stop Appian](Starting_and_Stopping_Appian.html).
2.  Open the topology example file found at `<APPIAN_HOME>/conf/appian-topology.xml.example`.

3.  Locate the `NEW DEFAULT TOPOLOGY` section, which lists the following engine topology:

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
     <topology port="5000">
       <server host="localhost">
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
         <broker host="localhost" port="9092"/>
       </kafkaCluster>
       <zookeeperCluster>
         <zookeeper host="localhost" port="2181"/>
       </zookeeperCluster>
       <data-server-cluster>
         <data-server host="server.domain.tld" port="5400" rts-count="2"/>
       </data-server-cluster>
     </topology>
    ```

4.  Add an execution engine by listing the following definition after the `<engine name="process-execution2"/>` attribute of the `<server>` element.

    ```
    1
     <engine name="process-execution3"/>
    ```

5.  Add an analytics engine for each execution engine using the same number that you assign to the execution engine. For example, when adding an engine named `process-execution3`, you must also add the following analytics engine.

    ```
    1
     <engine name="process-analytics3"/>
    ```

6.  If needed, add any subsequent engines using the following numbered engine definitions, replacing `#` with the next incrementally numbered engine.

    ```
    1
    2
     <engine name="process-execution#"/>
     <engine name="process-analytics#"/>
    ```

    **Note:**  A node can have a maximum of 32 execution and analytics engines (`process-execution31` and `process-analytics31`).

7.  Save the file as `appian-topology.xml`.
8.  Copy the changes to the `appian-topology.xml` file in the following locations:
    -   `<APPIAN_HOME>/data-server/conf`
    -   `<APPIAN_HOME>/search-server/conf`

### Increase the maximum number of report rows

After adding more engines, the [`maxreportrows` value](Post-Install_Configurations.html#maximum-report-rows) needs to be updated to accommodate the additional process report data generated by the new engines. If this is not updated, Appian may not be able to display or export process data correctly.

To update the `maxreportrows` property, do the following:

1.  Calculate the new `maxreportrows` value with the following formula: (new engine pairs \* 10,000) + current value of maxreportrows
    1.  Count the number of new analytics/execution engine pairs added to the topology file in the previous section.
    2.  Multiply this number by 10,000 and add the result to the current value of `maxreportrows` (the default is `30,000`). For example, if you added three engine pairs, you would add 30,000 to the current 30,000 for a total of 60,000.
2.  In `custom.properties`, set `maxreportrows` to the value calculated in the previous step.
3.  Save and close the file.

### Update the folder structure

The engines store process data in specifically named folders. The name of each folder corresponds to the name of an engine. For example, `<APPIAN_HOME>/server/process/exec/02` and `<APPIAN_HOME>/server/process/analytics/0002` match `<engine name="process-execution2"/>` and `<engine name="process-analytics2"/>`, respectively.

After you add more engines to an Appian instance, you need to create the corresponding folders in the `exec` and `analytics` directories. Say you added three new engine pairs with the numbers `03`, `04`, and `05`. The directory structure on each node needs to be updated with new folders for those engines:

-   `<APPIAN_HOME>/server/process/exec/03` and `<APPIAN_HOME>/server/process/analytics/0003`
-   `<APPIAN_HOME>/server/process/exec/04` and `<APPIAN_HOME>/server/process/analytics/0004`
-   `<APPIAN_HOME>/server/process/exec/05` and `<APPIAN_HOME>/server/process/analytics/0005`

Once you've created the folders, [restart the Appian services and servers](Starting_and_Stopping_Appian.html).

## Add engines to a high availability installation

A high availability (HA) Appian installation has additional nodes where you need to replicate the configuration changes made to add engines. When adding engines, there are three steps to complete:

1.  [Update the topology](#update-the-topology).
2.  [Update the maximum number of report rows](#increase-the-maximum-number-of-report-rows).
3.  [Update the folder structure](#update-the-folder-structure).

### Update the topology

For [high availability](High_Availability_and_Distributed_Installations.html#high-availability) installations, the number of process analytics engines and process execution engines on each node must be the same. Once you have finished adding engines to one node, you need you need to make identical changes on all others.

To add engines to a high availability installation:

1.  Stop Appian. See [Starting and Stopping Appian on distributed environments](Starting_and_Stopping_Appian.html#starting-and-stopping-on-distributed-environments) for complete instructions.
2.  On the first instance, open the topology file found at `<APPIAN_HOME>/conf/appian-topology.xml`.
3.  In each `<server>` element, after `<engine name="process-execution2"/>`, add an execution engine by entering `<engine name="process-execution3"/>` .

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
     <topology port="5000">
       <server host="ha-node-1.example.com">
         <engine name="forums"/>
         ...
         <engine name="process-analytics0"/>
         <engine name="process-analytics1"/>
         <engine name="process-analytics2"/>
         <engine name="process-execution0"/>
         <engine name="process-execution1"/>
         <engine name="process-execution2"/>
         <engine name="process-execution3"/>
       </server>
       <server host="ha-node-2.example.com">
         <engine name="forums"/>
         ...
         <engine name="process-analytics0"/>
         <engine name="process-analytics1"/>
         <engine name="process-analytics2"/>
         <engine name="process-execution0"/>
         <engine name="process-execution1"/>
         <engine name="process-execution2"/>
         <engine name="process-execution3"/>
       </server>
       <server host="ha-node-3.example.com">
         <engine name="forums"/>
         ...
         <engine name="process-analytics0"/>
         <engine name="process-analytics1"/>
         <engine name="process-analytics2"/>
         <engine name="process-execution0"/>
         <engine name="process-execution1"/>
         <engine name="process-execution2"/>
         <engine name="process-execution3"/>
       </server>
       ...
     </topology>
    ```

4.  Add the corresponding analytics engine using the same number assigned to the execution engine. For example, after adding an execution engine named `process-execution3`, you must also add an analytics engine named `process-analytics3`.
5.  If needed, add any subsequent engines using the following numbered engine definitions, replacing `#` with the next incrementally numbered engine.

    ```
    1
    2
     <engine name="process-execution#"/>
     <engine name="process-analytics#"/>
    ```

    **Note:**  A node can have a maximum of 32 execution and analytics engines (`process-execution31` and `process-analytics31`).

6.  Save the file.
7.  Copy the changes to the `appian-topology.xml` file in the following locations:
    -   `<APPIAN_HOME>/data-server/conf`
    -   `<APPIAN_HOME>/search-server/conf`
8.  On the other nodes, update each of the three `appian-topology.xml` files with the same changes.

### Increase the maximum number of report rows

After adding more engines to a node, the [`maxreportrows` value](Post-Install_Configurations.html#maximum-report-rows) needs to be updated to accommodate the additional process report data generated by the new engines. If this is not updated, Appian may not be able to display or export process data correctly.

To update the `maxreportrows` property, do the following:

1.  Calculate the new `maxreportrows` value with the following formula: (new engine pairs \* 10,000) + current value of maxreportrows
    1.  Count the number of new analytics/execution engine pairs added to the topology file in the previous section.
    2.  Multiply this number by 10,000 and add the result to the current value of `maxreportrows` (the default is `30,000`). For example, if you added three engine pairs, you would add 30,000 to the current 30,000 for a total of 60,000.
2.  In `custom.properties`, set `maxreportrows` to the value calculated in the previous step.
3.  Save and close the file.
4.  Update the `custom.properties` file on the other nodes.

### Update the folder structure

The engines store process data in specifically named folders. The name of each folder corresponds to the name of an engine. For example, `<APPIAN_HOME>/server/process/exec/02` and `<APPIAN_HOME>/server/process/analytics/0002` match `<engine name="process-execution2"/>` and `<engine name="process-analytics2"/>`, respectively.

After you add more engines to an Appian instance, you need to create the corresponding folders in the `exec` and `analytics` directories. Say you added three new engine pairs with the numbers `03`, `04`, and `05`. The directory structure on each node needs to be updated with new folders for those engines:

-   `<APPIAN_HOME>/server/process/exec/03` and `<APPIAN_HOME>/server/process/analytics/0003`
-   `<APPIAN_HOME>/server/process/exec/04` and `<APPIAN_HOME>/server/process/analytics/0004`
-   `<APPIAN_HOME>/server/process/exec/05` and `<APPIAN_HOME>/server/process/analytics/0005`

There are three new folders that also need to be [shared across all nodes](How_to_Set_Up_High_Availability_Installations.html#4-set-up-shared-files-and-folders):

-   `<APPIAN_HOME>/server/process/exec/03/gw1` and `<APPIAN_HOME>/server/process/analytics/0003/gw1`
-   `<APPIAN_HOME>/server/process/exec/04/gw1` and `<APPIAN_HOME>/server/process/analytics/0004/gw1`
-   `<APPIAN_HOME>/server/process/exec/05/gw1` and `<APPIAN_HOME>/server/process/analytics/0005/gw1`

You can verify that the folders are shared with the following command:

`find <APPIAN_HOME> -type l -exec ls -lad {} \;`

Once you've verified that the folders are shared, [restart the Appian services and servers](Starting_and_Stopping_Appian.html#starting-and-stopping-on-distributed-environments).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...