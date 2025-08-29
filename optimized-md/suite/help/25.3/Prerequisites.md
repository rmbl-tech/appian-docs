---
source_url: https://docs.appian.com/suite/help/25.3/Prerequisites.html
original_path: Prerequisites.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Installation Prerequisites

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

## Install third-party software

Before installing Appian, you must download and install the following third-party software:

-   A [supported relational database management system](System_Requirements.html#databases) (RDBMS)
-   A supported web server (if you are using one)

In addition, you must download the following Appian software from the Downloads tab on [MyAppian](https://forum.appian.com/suite/sites/myappian/page/support):

-   Appian 25.3 installer for your operating system
-   Latest [hotfix](Hotfixes.html) package for Appian 25.3 (if available)

## Obtain a temporary product license

Product license files are required to start Appian after it has been installed. Long term product licenses can only be requested after Appian is installed. To request and install temporary or long-term licenses, please follow the steps outlined in the [Requesting and Installing a License](Requesting_and_Installing_a_license.html) page.

**Note:**  If you are migrating from an older version and have a product license from a previous version of Appian, it is valid to use with this version.

### Linux

To set the `JAVA_HOME` and `PATH` environment variables in Linux:

1.  Using Bash, open the **profile** file located in the `/etc` directory.

    **Note:**  You must have superuser rights to modify the **profile** file.

2.  Add the following lines to the end of the file where the _value_ is the Java installation path:

    ```
    1
    2
    export JAVA_HOME=<APPIAN_HOME>/java
    export PATH=$JAVA_HOME/bin:$PATH:
    ```

3.  Save the file.

### Windows

To set the `JAVA_HOME` and `PATH` environment variables in Windows:

1.  Click **Start**, and then click **Control Panel**.

    **Note:**  Instructions for accessing the **Control Panel** may vary slightly based on the version of Windows you are using.

2.  Click **System and Security**.
3.  Click **System**.
4.  In the left-hand pane, click **Advanced system settings**.
5.  Click the **Advanced** tab.
6.  Click **Environment Variables**.
7.  Under **System variables**, look for JAVA\_HOME:
    -   If it is present, verify that the installation path is correct for OpenJDK 17.
    -   If it is not present, click **New**, and then enter the following information:

        | Setting | Value |
        | --- | --- |
        | Variable name | JAVA\_HOME |
        | Variable value | `<APPIAN_HOME>\java` |

8.  With **Environment Variables** dialog still open, select the **Path** variable, and then click **Edit**.
9.  Add the following value if it is not present (note that each value is separated by a semicolon):

    ```
    1
    ;%JAVA_HOME%\bin
    ```

**Caution:**  **Important:** If the JAVA\_HOME environment variable is set to the installation path of another JDK version or a runtime environment that is not the JDK installation path, Appian will not start correctly.

## Configure the application user account for Linux

Configure the UNIX user account and group that owns the application before running the setup program. A non-root user must have the following rights assigned when running the setup, and the _APPIAN\_HOME_ and _JAVA\_HOME_ directories must exist prior to running the installer.

| Directory or File | Read | Write | Execute |
| --- | --- | --- | --- |
| APPIAN\_HOME | Yes | Yes | Yes |
| JAVA\_HOME | Yes | No | Yes |
| Installation Package | Yes | No | Yes |

### Increase maximum open file limit for the application user account

The maximum allowable number of file descriptors available to the user running Appian may need to be increased. In order to determine if the limit needs to be increased, log in using the Appian application user account, and then run the following command:

```
1
ulimit -n
```

If the value returned by `ulimit -n` is less than 100000, then increase the limit by running the following command:

```
1
ulimit -n 100000
```

Repeat this procedure for all servers running any component of the Appian architecture in all environments. For example, if you are using development, staging, and production environments, then you would repeat this procedure on each one.

Note: If the value of 100000 exceeds the total number of open files allowable for the system, consult your operating system documentation for instructions on configuring the limit on the total number of open files (this typically located in `/proc/sys/fs/file-max`).

## Verify the server system locale setting

The system locale must be defined in order to install Appian. You will not be able to install Appian if the system locale is not defined.

In most cases, the system locale setting will already be set correctly. However, there is a rare issue that may be encountered on new or virtualized operating system installations. The instructions below describe how to verify the system locale on both supported platforms.

To verify the locale setting in Linux

-   Open Bash, and use the **locale** command to display the locale settings. If the locale is set, you will see something similar to the list below:

    ```
    1
    2
    3
    4
    5
    6
    7
     LANG=en_US
     LC_CTYPE="en_US"
     LC_NUMERIC="en_US"
     LC_TIME="en_US"
     LC_COLLATE="en_US"
     LC_MONETARY="en_US"
     LC_MESSAGES="en_US"
    ```

If the locale settings are not displayed, you must update or create the **i18n** file by doing the following steps:

1.  Open `/etc/sysconfig/i18n` in a text editor.
2.  Add the appropriate `LANG=` and `LC_ALL=` parameters. For example, if you are using English in the United States, you would define both parameters using _en\_US_:

    ```
    1
    LANG=en_US  LC_ALL=en_US
    ```

3.  Reboot the machine.

To verify the system locale setting in Windows

1.  Click the **Start** button, click **Control Panel**, click **Clock, Language, and Region**, and then click **Region and Language Options**.
2.  In the **Region and Language** dialog, click the **Administrative** tab.
3.  Verify that the desired system locale is set under **Language for non-Unicode programs**.

If the locale is not set correctly, make the necessary changes and reboot the machine.

## Open the required ports

Appian components communicate with each other over [specified network ports](Port_Usage.html). If you are preparing a [distributed installation](High_Availability_and_Distributed_Installations.html), you must first ensure that the required ports are open between the servers that host the different Appian components.

## Configure Linux for search server

Appian uses standalone deployment of Elasticsearch for the [search server](Search_Server.html). This provides increased security and reliability for the search server. The following system configurations are required for standalone deployment of search server.

### Virtual memory

Elasticsearch uses a `mmapfs` directory by default to store its indices. The default operating system limits on mmap counts could be low and result in out of memory exceptions. On Linux, increase the limits by running the following command as root:

`sysctl -w vm.max_map_count=262144`

Minimum value of 262144 is required. To set this value permanently, update the `vm.max_map_count` setting in `/etc/sysctl.conf`. To verify after rebooting, run `sysctl vm.max_map_count`.

No such setting is required for the Windows operating system.

### Number of threads

Elasticsearch uses a number of thread pools for different types of operations. It is important that it is able to create new threads whenever needed. Make sure that the number of threads that the search server can create is unlimited.

This can be done by setting `ulimit -u unlimited` as root before starting the search server, or by setting `nproc` to `unlimited` in `/etc/security/limits.conf`.

No such setting is required for the Windows operating system.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...