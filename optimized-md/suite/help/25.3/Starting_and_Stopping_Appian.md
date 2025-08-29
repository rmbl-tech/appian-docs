---
source_url: https://docs.appian.com/suite/help/25.3/Starting_and_Stopping_Appian.html
original_path: Starting_and_Stopping_Appian.html
version: "25.3"
title: "Starting and Stopping Appian"
page_id: "Starting_and_Stopping_Appian"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Starting and Stopping Appian

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

Starting and stopping the system properly is very important for maintaining the highest levels of system availability.

**Note:**  **Improper Shutdown**

-   Always verify that Appian is properly shut down before attempting a restart.
-   Improper shutdown may result in services not resuming properly, which may lead to a delay in restoring your services.

**Bootstrap Language**: If you want to change the [startup language](Bootstrap_Locale_and_Timezone.html) and timezone used by the system, this must be changed prior to the first time you log into the system. The default language for all users remains accessible through the user interface, at all times.

## Starting the Application Suite on Windows

If you are running the Appian components as Windows services, use the Microsoft Management Console to start them in the order listed below instead of using the `.bat` script that is listed. When running Windows services, a process named `jbosssvc.exe` appears in the task manager for each of these. Use the display name of the service instead of the process name to determine which services are running.

**Note:**  Before starting and stopping the Appian services the first time, you must set a password. See [Password Script](Service_Manager_Scripts.html#password-script)

1.  If restarting, verify that the suite is completely shut down.
2.  Execute `<APPIAN_HOME>\services\bin\start.bat -p <password> -s all` to start the Appian services.
3.  Execute `<APPIAN_HOME>\data-server\bin\start.bat` to start the data service.
4.  Once all Appian services and the data service have been started, start your search server. Execute `<APPIAN_HOME>\search-server\bin\start.bat`
5.  Once your search server has been started, start the application server. Execute `<APPIAN_HOME>\tomcat\apache-tomcat\bin\start-appserver.bat`.

## Stopping the Application Suite on Windows

1.  Stop the application server(s). Execute `<APPIAN_HOME>/tomcat/apache-tomcat/bin/stop-appserver.bat`.

**Caution:**  The appserver will be stopped immediately. Ensure that all system work has completed prior to execution.

1.  Stop the search server. Execute `<APPIAN_HOME>\search-server\bin\stop.bat`.
2.  Stop the data service. Execute `<APPIAN_HOME>\data-server\bin\stop.bat`.
3.  Stop the Appian services. Execute `<APPIAN_HOME>\services\bin\stop.bat -p <password> -s all`. It may take several minutes for all engine services to stop as they conduct a checkpoint procedure as part of the standard shutdown.
4.  Execute the [status script](Service_Manager_Scripts.html#status-script) to verify that all Appian services have stopped: `<APPIAN_HOME>\services\bin\status.bat -p <password>`

To verify that all Appian processes have stopped running, complete the following:

1.  Open the **Windows Task Manager**.
2.  Click the **Processes** tab.
3.  Make sure that there are no active `q.exe`, `k.exe`, or `java.exe` processes (and `jbosssvc.exe` processes if you're running Windows services).

### Stopping Windows Services

1.  (Optional) Prior to stopping Windows Services that are installed with the quick stop option, we recommend performing an engine checkpoint to ensure that your engines take the minimum amount of time when restarting. Engines that are not checkpointed before shutdown take longer to start.
    1.  Open the **Windows Task Manager**.
    2.  Note the CPU usage of your Appian processes.
    3.  Run `<APPIAN_HOME>\services\bin\checkpoint.bat`. Use the `--wait` option so that the script exits only after the checkpoints have completed.
2.  Open the **Windows Services** management console.
3.  Select the Appian service.
4.  Click **Stop**.
5.  Execute the [status script](Service_Manager_Scripts.html#status-script) to verify that all Appian services have stopped: `<APPIAN_HOME>\services\bin\status.bat -p <password>`
6.  Stop the data service, search server, and application server services by clicking **Stop** for each.

## Starting the Application Suite on Linux

**Note:**  Before starting and stopping the Appian services the first time, you must set a password. See [Password Script](Service_Manager_Scripts.html#password-script)

For Linux, use Bash 3.0 or later.

1.  If restarting, type the following commands to ensure that no Appian processes are active:

    ```
    1
    2
    3
     ps -ef | grep /k
     ps -ef | grep /q
     ps -ef | grep /java
    ```

2.  Follow the [stopping procedures](#stopping-the-application-suite-on-linux) to shut down any processes that are still active before proceeding.
3.  Change directories to `<APPIAN_HOME>/services/bin/`.
4.  Execute the [start script](Service_Manager_Scripts.html#start-script): `./start.sh -p <password> -s all`.
5.  Execute the [status script](Service_Manager_Scripts.html#status-script) to verify that all Appian services have started correctly: `./status.sh -p <password>`
6.  Ensure all Appian engines display an **Running** status.
7.  Start the data service. Execute `<APPIAN_HOME>/data-server/bin/start.sh`.
8.  Once all Appian services and the data service have been started, start your search server. Execute `<APPIAN_HOME>/search-server/bin/start.sh`.
9.  Once your search server has been started, start the application server. Execute `<APPIAN_HOME>/tomcat/apache-tomcat/bin/start-appserver.sh`.

## Stopping the Application Suite on Linux

1.  Stop the application server(s). Execute `<APPIAN_HOME>/tomcat/apache-tomcat/bin/stop-appserver.sh`.

**Caution:**  The appserver default background wait time to stop is 65 minutes, depending on the system work currently in progress. If you have a stop sequence, and do not want a graceful shutdown, you will need to forcebly stop the app server. You can do so by executing `kill -9 $(jps | grep Bootstrap | awk '{print $1}')`.

1.  Stop the search server. Execute `<APPIAN_HOME>/search-server/bin/stop.sh`.
2.  Stop the data service. Execute `<APPIAN_HOME>/data-server/bin/stop.sh`.
3.  Stop the Appian engines. Execute `<APPIAN_HOME>/services/bin/stop.sh -p <password> -s all`. It may take several minutes for all engine services to stop as they conduct a checkpoint procedure as part of the standard shutdown.
4.  Execute the [status script](Service_Manager_Scripts.html#status-script) to verify that all Appian services have stopped. It may take several minutes for all engines to stop as they conduct a checkpoint procedure as part of the standard shutdown.
5.  Type the following commands to verify that no Appian processes are running:

    ```
    1
    2
    3
     ps -ef | grep /k
     ps -ef | grep /q
     ps -ef | grep /java
    ```

6.  If processes continue to run, repeat the shutdown procedures for the remaining running processes. If you are not able to shut down following the documented procedures, kill the remaining processes only after verifying that the CPU usage of those processes is consistently at 0% for several minutes and verifying that the corresponding `.kdb` file is not being written.

## Starting and stopping on distributed environments

For installations distributed across many servers, the order of operation for starting and stopping Appian remains the same:

### Starting

1.  Start Appian services.
2.  Start data service.
3.  Start search server.
    -   If running multiple instances of the search server, start all of them in any order before proceeding to the next step. You do not need to wait for one instance of the search server to complete startup before starting another instance.
4.  Start application server.
    -   If you have multiple application servers, the first time you start Appian (either after a fresh installation or update), start only one server and wait for it to complete startup before starting the rest. The remaining application servers may be started simultaneously. For subsequent restarts of Appian on the same version you may start all application servers at the same time.

### Stopping

1.  Stop application server.
2.  Stop search server.
3.  Stop data service.
4.  Stop Appian services.

If Appian services are on different servers, for example Kafka & Zookeeper on one server and engines on another, all services should be running before starting the data service and search server. The order of operation does not matter. If the Appian engines are started before Kafka & Zookeeper, the engines will wait for the other services before they become available.

When stopping Appian services on different servers, run the [stop script](Service_Manager_Scripts.html#stop-script) across all nodes that host engines/services when performing a cluster-wide shutdown.

If a distributed installation of Appian is being stopped with the intention of removing a server, follow the directions on [How to remove servers from a distributed installation for self-managed installations](https://community.appian.com/support/w/kb/1426/kb-1926-how-to-remove-servers-from-a-distributed-installation-for-on-premise).

## Logging in

Using one of the supported web browsers, use the following URL to access the Appian Designer interface:

-   `http://SERVER_NAME:8080/suite/design`

### Initial login

When logging in for the first time, use the **Administrator** account with the password **admin**.

After logging in, you are automatically prompted to change the Administrator password.

## Troubleshooting

### What if my Appian services start, but my application server does not?

If your application server starts and stops abruptly, you may have a port conflict that is preventing the application server from running. You can diagnose and resolve such issues in the following manner:

1.  Check for port conflicts using a network utility such as TCPView.
2.  If you discover a conflict, identify the application that is preventing the application server from starting (check the local address).
3.  Stop the offending application, and configure it to use a different port number — OR — If the application is an Appian service, start and stop Appian.
4.  If you encounter a recurring Appian conflict, designate the port numbers that Appian uses in a custom `appian-topology.xml` file.

See also: [Port Usage](Port_Usage.html) and [Server Configuration Topologies](Custom_Configurations.html)

### What if I've checked for port conflicts with my application server, but I still can't identify a problem?

Verify your Java configuration settings.

It is possible to experience issues when attempting to run the application server as a Windows service, if the JAVA\_HOME location includes a space in the file path (such as `C:/<APPIAN_HOME>/java`).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...