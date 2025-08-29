---
source_url: https://docs.appian.com/suite/help/25.3/Post-Install_Configurations.html
original_path: Post-Install_Configurations.html
version: "25.3"
title: "Post-Install Configurations"
page_id: "Post-Install_Configurations"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Post-Install Configurations

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

Certain configuration steps are required for configuring your maintenance scripts after you install the application. You can also optionally modify a number of different parameters and settings used to better suit your applications. This page details both. Consult the table on the [Custom Configurations](Custom_Configurations.html#custom-properties) page to determine whether restarting the application server is required in order for the configuration change to take effect.

## Required configurations

The following post-installation configuration steps are required on every system.

### Configure the disk cleanup

Use a job-scheduler, like cron or a Windows Scheduled Task, to clean up your old engine files, logs, and process archive files.

#### Clean up Appian log files

Appian logs important system events and sends alerts for errors. These settings are configurable.

If left unmanaged, log files can consume too much disk space. These files must be cleaned up at regular intervals.

Appian log files are rolled over as needed. The cleanup script is used to move aging log files to a backup location and delete them. Be sure to create the directory at `/<BACKUP_SERVER>/logs` before running the script.

For example:

```
1
<APPIAN_HOME>/server/_scripts/cleanup.sh logs -target /BACKUP_SERVER>/logs –keep 3
```

See also: [Data Maintenance](Data_Maintenance.html)

#### Clean up process archives

Appian processes are used for reporting. The process archives must be configured according to your historical reporting needs. Balance your reporting needs against the need to limit the size of your Execution Engines.

-   Archive processes to conserve RAM.
-   Move archives to a backup location to conserve disk space.
-   Delete process archives after the data they contain is no longer of use to your organization.

For example:

```
1
<APPIAN_HOME>/server/_scripts/cleanup.sh processes -target /<BACKUP_SERVER>/ap –keep 100
```

By default, completed and canceled processes are automatically archived after 7 days. This setting is configurable depending on your policy on process archiving and available system resources. Use the cleanup script to move process archives to a backup location if you need to conserve disk space. Be sure to create the directory at `/<BACKUP_SERVER>/ap` before running the script.

See also: [Managing Process Archives](Managing_Process_Archives.html).

### Configure your site URL

Whether you have a single server or a load-balanced configuration with multiple server hosts, your end-users should use a single URL to access your Appian installation. Appian needs to know the site's URL in order to construct links. Appian breaks down the site URL into the following properties, which can be set in your `custom.properties` file.

```
1
<SCHEME>://<SERVER_AND_PORT>/<APPLICATION_CONTEXT>
```

**SCHEME**

By default your site will use HTTPS for the `SCHEME`. HTTPS is required for production systems. If you wish to run a non-production site over HTTP instead of HTTPS, set the following property in custom.properties. This property also controls whether or not the `secure` flag will be set on cookies.

```
1
conf.suite.SCHEME=http
```

**SERVER\_AND\_PORT**

Use the `SERVER_AND_PORT` property to specify the fully qualified domain name of the site's URL.

-   Set `conf.suite.SERVER_AND_PORT`\=`<FULLY_QUALIFIED_DOMAIN_NAME>:<PORT>` in custom.properties.

For example:

```
1
conf.suite.SERVER_AND_PORT=www.example.com:8080
```

The default port numbers are `:80` when `SCHEME` is set to `HTTP` and `:443` when `SCHEME` is set to `HTTPS`. Do not specify a port number if you wish to use these default ports.

### Configure your static and dynamic content URLs

The `SERVER_AND_PORT` property controls the site URL accessed by end-users, but for security purposes certain types of content are served from two different URLs:

-   The **static content URL** is used for hosting user-provided content like documents
-   The **dynamic content URL** is used for hosting third-party extensions

Use the following properties to specify the fully qualified domain name of each of these URLs in custom.properties:

-   `conf.suite.STATIC_SERVER_AND_PORT`
-   `conf.suite.DYNAMIC_SERVER_AND_PORT`

Notes:

-   These values are not required to start Appian, but some features (like the [Document Viewer](Document_Viewer_Component.html)) will not work without them properly configured
-   Both values must reference the same Appian instance as the site URL
-   For security reasons, the values for `SERVER_AND_PORT`, `STATIC_SERVER_AND_PORT`, and `DYNAMIC_SERVER_AND_PORT` must each use a different domain. These must be different domains, not just separate subdomains.
-   The default domain validation assumes your site uses a standard top-level domain (like `.com` or `.co.uk`). For sites using an internal domain structure that is not based on a standard top-level domain, set the property `conf.suite.DISABLE_STRICT_DOMAIN_SECURITY=true`. This configuration only applies when using a non-standard top-level domains.
-   A warning will be logged on startup if these values are not configured properly

Example when using a standard top-level domain like `.com` or `.co.uk`:

```
1
2
3
conf.suite.SERVER_AND_PORT=www.example.com:8080
conf.suite.STATIC_SERVER_AND_PORT=www.example-static.com:8080
conf.suite.DYNAMIC_SERVER_AND_PORT=www.example-dynamic.com:8080
```

Example when using a non-standard top-level domain like `.corp`:

```
1
2
3
4
conf.suite.SERVER_AND_PORT=www.example.corp:8080
conf.suite.STATIC_SERVER_AND_PORT=www.example-static.corp:8080
conf.suite.DYNAMIC_SERVER_AND_PORT=www.example-dynamic.corp:8080
conf.suite.DISABLE_STRICT_DOMAIN_SECURITY=true
```

As with `SERVER_AND_PORT`, the default port numbers are `:80` when `SCHEME` is set to `HTTP` and `:443` when `SCHEME` is set to `HTTPS`. No port number setting is needed for these ports.

**Tip:**  **Why do I need to register separate domains for these URLs?**

User-uploaded files and third-party extensions may contain JavaScript code and/or set cookies that pose a potential security risk to your users. Web browsers have built-in security measures that prevent different sources of web content from interacting in dangerous ways. These protections are only applied when content is served from separate domains (not separate subdomains). Appian's URL validation mirrors this browser domain comparison behavior to ensure that your users are safe.

Separate domain hosting is a recognized practice for securing user-uploaded files and third-party web content. Google [rolled out](https://security.googleblog.com/2012/08/content-hosting-for-modern-web.html) the `googleusercontent.com` domain in 2012, while GitHub [announced](https://developer.github.com/changes/2014-04-25-user-content-security/) their `githubusercontent.com` domain in 2014 for the same purpose.

For more information about top-level domains and how they are used to restrict certain browser behaviors, see the [Public Suffix List](https://publicsuffix.org/) maintained by Mozilla.

### Exclude files from antivirus scanning

Exclude the following from your server’s antivirus software:

-   Appian engine files `(*.kdb)`
-   Files in `<APPIAN_HOME>/services/data/kafka-logs/` and `<APPIAN_HOME>/services/data/zookeeper/`
-   Files and directories in `<APPIAN_HOME>/data-server/data`

Locking these files or otherwise interfering with them while the system is running, as is common with antivirus software, is known to lead to system instability.

### Generate a unique security token for Appian engines

Restrict port access to the Appian engines using a custom security token.

See also: [Appian Engine Connection Restrictions](Appian_Engine_Connection_Restrictions.html#generating-a-custom-security-token).

### Generate a unique security token for data service

Restrict port access to the data service using a custom [security token](Data_Server_Connection_Restrictions.html).

### Generate a password for search server

The [configure script](Configure_Script.html) helps the initial configuration setup required for running search server. It generates a password to restrict access to the search server.

However, if you are not using the configure script to manage and deploy your custom configurations, you must ensure that a password is generated and configured in the following two custom properties:

| Property | File Location |
| --- | --- |
| `conf.password.SearchServer` | `<APPIAN_HOME>/conf/passwords.properties` |
| `conf.search-server.user.appian.password` | `<APPIAN_HOME>/search-server/conf/custom.properties` |

These two properties should share the same password. The password must contain at least 6 characters.

### Generate a password for the service manager

Run the password script, located in the `services/bin/` directory to set a password for the service manager. This password protects against unintended administrative actions, like requesting that an engine checkpoint or shut down. In a distributed installation, this script should be run on every server that is configured to host an Appian engine, Kafka, or Zookeeper.

See also: [Password Script](Service_Manager_Scripts.html#password-script)

### Raise the cap on maximum engine size on 64-bit operating systems

On 64-bit systems, modify the `server.conf.processcommon.MAX_EXEC_ENGINE_LOAD_METRIC` property value in the `custom.properties` file to a minimum value of **120** or higher.

See also: [Configuring the Process Engine Servers](Configuring_the_Process_Engine_Servers.html#max_exec_engine_load_metric).

## Optional configurations

The following optional changes can be made to your installation. Example settings are described in the Appian `custom.properties.example` file found in the `<APPIAN_HOME>/conf/` directory.

### Appian topology

The `appian-topology.xml.example` file in `<APPIAN_HOME>/conf/` and in the [configure script](Configure_Script.html) repository has the default topology, which configures all engines, the search server, the Internal Messaging Service, and the data service on the same machine, using the default ports. Configuring the Appian topology to something other than the default is required for any installation that does not have all components of the architecture deployed to the same machine. In order to do so:

1.  Edit the `appian-topology.xml.<your_environment>` file in your configure script repository and comment out the default topology XML block in the example.
2.  Create a new topology configuration specific to your layout.
3.  Deploy the new topology configuration using the configure script.

See also:

-   [How to Set Up High Availability](How_to_Set_Up_High_Availability_Installations.html)
-   [Configure Script](Configure_Script.html)
-   [Adding Analytics and Execution Engines](Adding_Execution_and_Analytics_Engines.html)
-   [Configuring the Search Server](Search_Server.html#configuring-the-search-server)
-   [Configuring the Data Service](Configuring_the_Data_Server.html)

### Application context

**Tip:**  Appian does not recommend modifying the Application Context. It requires making changes to shipped files that could slow down a future upgrade process.

The default application context is `suite`. You can change this to a different name by setting the following property in `custom.properties`:

```
1
conf.suite.APPLICATION_CONTEXT=index
```

You cannot set the application context to use more than one level of directories.

After modifying the application context value in `custom.properties`, you also need to rename the following file to have the same name you just set in the `conf.suite.APPLICATION_CONTEXT` property:

-   `deployment/tomcat/apache-tomcat/conf/Catalina/localhost/suite.xml`

### Application server heap

The amount of Java heap space available to the application can be tuned by modifying the following property in `custom.properties`

```
1
#conf.appserver.maxHeapSize=2048m
```

By default the value is set to 2048 MB.

### Application logo

The logo is configured in the [Admin Console](Appian_Administration_Console.html#branding).

### Application name

The name is configured in the [Admin Console](Appian_Administration_Console.html#branding).

### Automatic retry interval

The ability to modify the final retry interval has been [deprecated](Automatic_Retry_Interval.html).

### Copyright holder

The copyright holder listed in the footer is controlled by the following property:

```
1
resources.appian.ap.application.appian.ap.appianName=Appian Corporation
```

### Copyright year span

The years listed for the copyright in the footer are controlled by the following property:

```
1
resources.appian.ap.application.appian.ap.copyrightYear=2003-2014
```

### Email alert address

You can specify the `From` email address listed when the system sends an alert or a password reset email, using the following properties:

```
1
2
conf.mailhandler.ntf_sndr_addr=
conf.mailhandler.ntf_sndr_name=
```

The default value for the sender address is `appian-alerts@<domain>` and the default email display name is set to the value of the Site Name field in the Branding page in the Admin Console.

The `<domain>` portion of the email address is determined in the following manner:

-   `appian-alerts@<conf.mailhandler.email.domain>` where `conf.mailhandler.email.domain` is the value of that property in custom.properties.
-   `appian-alerts@<domain.tld>` where `domain.tld` is the domain name and top-level domain of the server if the server has a fully qualified domain name.
-   `appian-alerts@<hostname>` where `hostname` is the server running the application server (if there are multiple applications servers, this results in a different name for each).
-   `appian-alerts@REPLACEME.com` if all of the above fail.

See also: [Admin Console](Appian_Administration_Console.html#branding)

### Inline document display

Whether documents can be downloaded with the Content-Disposition header set to "inline" by using `inline=true` as a request parameter is controlled by the following setting:

```
1
conf.content.download.inline=false
```

This property must be set to true in order to do the following:

-   Use PDF forms as task forms.
-   Display the contents of a file stored in Documents inline on a page in the web page channel.
-   Display a document inline in a separate window.

When set to false (the default) the user is prompted to download the document instead of viewing it inline, even if `inline=true` is passed in the request.

### Integrations

All Integration objects that are created from Connected System plug-ins are executed in a threadpool. You can adjust the number of threads in the threadpool using the following setting:

```
1
 conf.integrations.threadPoolSize=30
```

-   The default value is `30` (thirty threads).

### Maximum activity instances

The system does not limit the overall number of activities that can be started in a process, with or without activity-chaining.

The following restrictions are, however, placed on activities that are executed in your processes:

-   A limit for the number of times a single activity can be started.
-   A limit for how many activities without forms can be placed between two activity-chained tasks, which display navigation buttons that link each task in the chain.

#### Single activity limits

You can execute any activity multiple times in the same process flow by using the Multiple Node Instances (MNI) functionality.

This behavior is governed by the `MAX_NODE_INSTANCES` property. The `server.conf.processcommon.MAX_NODE_INSTANCES` property in `custom.properties` limits the total number of times that the same activity can be launched within a process. The default limit is 1000. The maximum is 150000.

#### Activity-chain limits

The `CHAINED_EXECUTION_NODE_LIMIT` property lists the maximum number of unattended node instances (that do not have forms to be completed) that can be executed between two activity-chained forms. This value is controlled by updating the following in `custom.properties`:

```
1
server.conf.exec.CHAINED_EXECUTION_NODE_LIMIT=
```

The default limit is `50`. The maximum value is 100. No more than 100 unattended node instances can be present in between two attended nodes that form a chain. This property cannot be disabled.

**CAUTION**: Long activity chains - greater than 50 node instances OR 5 seconds between attended activities - are strongly discouraged because they have both an adverse effect on the performance of the system at scale and the experience of the user.

If there are more unattended node instances in a chain than the `CHAINED_EXECUTION_NODE_LIMIT`, the chain is broken. Once a chain is broken, the next attended task appears in the assigned user's task inbox.

To resume a broken chain, users can complete the task from their inbox. Clicking Next in the task resumes the activity-chain. Keep in mind that after a chain is broken, you cannot step back into attended tasks that were part of the chain before it was broken.

We recommend testing changes to these settings with the largest expected cases in a test environment. Then run the sizing scripts to understand the implications for your production systems.

See also: [Using the Sizing Script](Using_the_Sizing_Script.html)

### Maximum notification recipients

To prevent accidental mass notifications, if a notification is generated for more than a certain number of recipients, the system sends a WARN message to the application server log and does not send the email, mobile push notification, or portal alert notification to the recipients.

This recipient limit is controlled by the following property in `custom.properties`:

```
1
conf.notifications.MAX_RECIPIENTS=
```

The default value is `100`. The maximum is considered unlimited with a value of `2147483647`. Values less than `1` or negative numbers are considered `0` and restrict any notifications from being sent.

This setting does not, however, affect the Send E-Mail Smart Service. If a user configures the smart service to send an email to a recipient list that exceeds the `MAX_RECIPIENTS` value, the smart service still sends the email.

See also: [Notifications](Notifications.html) and [Application Server Log File](Logging.html#application-server)

### Maximum report rows

The maximum report row property shown below controls the upper limit of items in a report that can be loaded into application server memory and the last page that can be retrieved for a report. This impacts how a report is displayed, printed, or exported to Microsoft Excel.

```
1
resources.appian.analytics.application.maxreportrows=
```

The default value is `30000`.

-   In certain cases, this value can be raised to return more rows for a report. Before making such a change, we recommend testing the increased value in an environment that includes the same (or comparable) data sets to determine whether your available JVM memory allocation is sufficient.

The last page that can be displayed in a report is also calculated based on this property. The calculation multiplies the number of analytics engines (of which there are three in a standard configuration) by the number of rows per page specified for the report. The property value is then divided by this result to determine which report page is the last one that can be displayed.

-   Report rows that fall outside the last page of the report cannot be displayed.
-   A setting of 30000 represents a calculated maximum of 10000 rows that can be exported or printed in a standard configuration. The value specified for this property is divided by the number of analytics engines in your instance (of which there are 3 in a standard topology).

This property also affects report Java APIs called with a batch size of `-1` (to return all rows). A setting of 30000 represents a calculated maximum of 10000 rows that can be returned by report Java APIs.

### Offline mobile

Users on the iOS or Android Appian mobile apps have the ability to complete actions even when they are not connected to the internet.

In order to make actions available offline, the offline mobile feature must be enabled on the environment and the designer must designate actions to be available offline.

When offline mobile is enabled, data may be stored on mobile devices to support offline use. Encryption of data stored on devices relies on the mobile operating system's native encryption capabilities.

The offline mobile feature is enabled by default. If you would like to disable it, you may do so on the Mobile page of the [Admin Console](Appian_Administration_Console.html#mobile) page.

### Opaque URLs

In 20.3 and later, task and documents only use [opaque URLs](Opaque_URL_Guidance.html) by default to provide consistency and an enhanced level of security. Some Appian applications developed in 20.2 or earlier may have been developed to use non-opaque URLs. Adding the following properties will ensure backwards compatibility with older apps by allowing both opaque and non-opaque task and document URLs:

```
1
2
conf.tasks.accessibleById=true
conf.content.download.byId=true
```

**Note:**  These properties should only be added when using applications developed in 20.2 or earlier that construct custom links with numeric IDs. Developers can update their applications to use opaque URLs upon upgrade to 20.3 by following the guidance for [updating task and document URLs](Opaque_URL_Guidance.html#updates-to-task-and-document-urls). Once applications are updated to only use opaque URLs, the configurations above can be removed from `custom.properties`.

### Password policies

You can configure the password policies for your site in the [Admin Console](Appian_Administration_Console.html#appian-authentication)

### Plug-in polling

The plug-in polling interval is the maximum number of seconds that elapse before loading a new plug-in after it is placed in the `<APPIAN_HOME>/_admin/plugins` directory. Setting the interval to 0 causes hot-deployment to be disabled. With hot-deployment disabled, loading a new plug-in requires a restart of the application server.

```
1
conf.plugins.poll-interval=60
```

### Printing or exporting reports to Microsoft Excel

The following maximum export rows property is no longer used.

See the section below for a replacement configuration option.

### Query limits to external databases

By default, a query will wait up to 10 seconds for a response from an external database before timing out.

You can configure the maximum amount of time that the query should wait for a response using the following property:

```
1
conf.data.query.timeout=10
```

**Note:**  The query timeout limit only specifies the maximum amount of time the application waits for a response from the database. It does not signify that the query will definitely be killed by the database in 10 seconds. Once the kill command is issued to the database by the application, Appian cannot control how long it takes for the database to kill the query.

Also, there are certain conditions in which the total query time for a query made by Appian will exceed 10 seconds. This is because multiple database queries could constitute a single Appian query, and the database could respond within 10 seconds for each of those database queries. The total Appian query time will exceed 10 seconds in such a scenario. Additionally, this timeout configuration is not applicable to the [Query Database Smart Service](Query_Database_Smart_Service.html).

By default, `5242880` bytes (5 MB) of memory will be consumed in the application server for a single query before the query is halted.

You can configure the amount of memory that will be consumed in the application server for a single query before the query is halted using the following property:

```
1
conf.data.query.memory.limit=5242880
```

**Note:**  Before changing this value, consider using the query paging parameter to return less data (or return data in batches) and therefore avoid the limit. Also, consider whether the entire set of data that is being returned is actually needed. If not, use the query expression functions to select which fields to return.

If these solutions still do not meet the requirements of the use case, consider the number of concurrent queries that are expected in the system and the amount of free memory available on the application server.

The maximum number of expected concurrent query executions multiplied by the query memory limit size must not exceed and should be considerably lower than the low-water mark of available free memory on the application server. Use the performance and usage logs to provide a context to your estimates. When increasing this value, apply a corresponding increase to the maximum memory heap size of JVM for the application server.

See also: [Monitoring Performance and Usage](Logging.html#monitoring-performance-and-usage)

### Remember Me authentication

By default, a user must provide their username and password once every two weeks for each browser on which they access Appian. The user can opt out by clearing the Remember Me checkbox on the Appian login screen. System administrators can modify the authentication validity period and disable the capability site-wide through configuration.

This feature is configured in the [Admin Console](Appian_Administration_Console.html#remember-me)

See also: [Remember Me Authentication](Authentication.html#remember-me-authentication)

### Repeat limits

The [repeat()](fnc_scripting_repeat.html) function takes an input and returns a list with the input repeated a specified number of times. To prevent excessive utilization of system resources, you can limit the number of times this function repeats the input.

For self-managed installations, this value is controlled by the following property in `custom.properties`:

```
1
server.conf.processcommon.MAX_REPEATS=
```

By default, the function is limited to 50,000 repeats.

### Report timeout settings

Each analytics engine generates process reports using the process data that it receives from its associated execution engine and distributing the calculations across available analytics engines for maximum throughput.

In general, process reports should take no longer than 500 milliseconds to display.

It is important that you build your reports so that they execute within the allotted time frame, so that incremental updates from the execution engines are not delayed.

See also: [Report Performance](Report_Performance_Details.html) for information regarding how you can optimize your report design.

Avoid raising the timeout threshold, except as a temporary measure. Appian, in general, recommends against raising it at all. If necessary, consider raising it in a testing environment first to verify support for the increased timeout with the expected peak load.

#### Process analytics engine timeout setting for self-managed installations

Within each analytics engine, a report times out completely after 2 seconds (2000 milliseconds), which is the default value.

For self-managed installations, this value is controlled by the following property in `custom.properties`:

```
1
server.conf.processcommon.MAXIMUM_REPORT_MS=
```

-   The maximum report milliseconds property (`MAXIMUM_REPORT_MS`) is configured for all analytics engines. It is not possible to raise or lower the value for an individual process analytics engine.
-   The timeout value cannot be raised above 15 seconds (15000 milliseconds).
-   Restart all Appian Process Analytics servers for the change to take effect.

### Session timeout settings

By default, users who have been idle for 65 minutes are logged out by the system. You can change this timeout period in the [Admin Console](Appian_Administration_Console.html#session-timeout).

### Transport layer security

If you are in the process of upgrading your connected systems, you can override the Transport Layer Security (TLS) default to enable TLS 1.0 and above by adding the following value to the custom.properties file:

```
1
ssl.legacy_tls_enabled=true
```

If the property is not found in the file, the default value will be false and you do not need to manually add it.

**Caution:**  Appian does not support any custom configurations of the Tomcat instance included with Appian. If you do modify the Tomcat instance of a self-managed installation, we cannot guarantee that hotfixes or upgrades will not impact or overwrite the modifications. For example, we do not support enabling HTTP Strict Transport Security (HSTS) in the Tomcat instance included with Appian. Instead, we recommend adding HSTS headers at the web server layer or via an upstream network device.

See [System Requirements](System_Requirements.html#transport-layer-security) for more information.

### Time zone options

Through the Internationalization Settings, you can select a Primary Time Zone for the site. The only options that appear in the list on the Internationalization Settings page of the System Administrator console are those based on the selected language.

To override this default list of recommended time zones, you can add a list for a new locale to the custom.properties file in the following format:

```
1
conf.timezones.locales.[locale_code]=[List of time zones]
```

The locale code is in **\[language\]\_\[COUNTRY CODE\]** format. The list of available timezones can be found here: [Java's java.util.TimeZone](https://docs.oracle.com/javase/8/docs/api/java/util/TimeZone.html).

For example, if you want to configure the list to contain only Pacific, Mountain, and Central times in America (en\_US), add this line to the custom.properties file:

```
1
conf.timezones.locales.en_US=America/Los_Angeles,America/Denver,America/Chicago
```

See also: [Internationalization Settings](Internationalization_Settings.html)

### User account limit

Administrators concerned about license compliance can configure a soft limit on user accounts by entering a value for the following property. There is no default value.

```
1
conf.suite.USER_ACCOUNT_LIMIT=
```

When the user account limit is configured, a message displays on the People tab of the Designer interface if more users are registered than the limit allows. Beyond the message there is no other effect, nor is there any effect if the value is not set.

![Example of user account soft limit warning](images/user-account-limit-warning.png)

### Web service connections

You can adjust the number of seconds to wait to establish a connection with a web service host using the following setting:

```
1
conf.node.webservice.connection.timeout=
```

-   The default value is `60` seconds.

You can adjust the number of seconds to wait for a response to a request, once a connection is established, using the following setting:

```
1
conf.node.webservice.socket.timeout=
```

-   The default value is `60` seconds.

You can specify the number of redirect responses (HTTP 304) the web service activity accepts.

```
1
conf.node.webservice.max.redirects=`
```

-   The default number of redirects allowed is `4`.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...