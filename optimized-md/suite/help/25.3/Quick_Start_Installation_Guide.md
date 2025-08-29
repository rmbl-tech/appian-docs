---
source_url: https://docs.appian.com/suite/help/25.3/Quick_Start_Installation_Guide.html
original_path: Quick_Start_Installation_Guide.html
version: "25.3"
title: "Local Installation Guide"
page_id: "Quick_Start_Installation_Guide"
section: "Requirements"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Local Installation Guide

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

This guide walks you through installing Appian on a single machine with MySQL database for use in a local, non-production environment. While this guide uses the Windows operating system and MySQL database as examples, similar steps apply for Linux installations and other databases.

This guide does not cover the steps necessary to complete an enterprise installation. See the [Windows Installation Guide](Windows_Installation_Guide.html) or [Linux Installation Guide](Linux_Installation_Guide.html) for enterprise installation instructions.

## Requirements

Download and install the following using the linked instructions:

| Software | Download | Instructions |
| --- | --- | --- |
| JDK | Download not required. The Appian installation includes OpenJDK 17. |   |
| MySQL | [Download MySQL MSI Installer](https://dev.mysql.com/) (Supported [version](System_Requirements.html#databases)) | [Install and Setup MySQL Server](#install-and-setup-mysql-workbench) |
| MySQL Workbench | [Download MySQL WorkBench](https://dev.mysql.com/downloads/workbench/) | [Install and Setup MySQL Workbench](#install-and-setup-mysql-workbench) |

Download the following before you begin your Appian installation:

| Software | Download |
| --- | --- |
| Appian Installer | [Download the Appian Installer](https://forum.appian.com/suite/sites/myappian/page/support) |
| Appian Configuration script | [Download the Appian Configuration script](https://forum.appian.com/suite/sites/myappian/page/support) |
| MySQL Connector/J Driver | [Download MySQL Connector/J Driver](https://dev.mysql.com/) (Supported [version](System_Requirements.html#databases)) |
| Appian License Files | Follow [Requesting and Installing a License](Requesting_and_Installing_a_license.html) |

Refer to the [Prerequisites page](Prerequisites.html) and the [System Requirements page](System_Requirements.html) for information on which version to download.

**Note:**  Download the MySQL Connector/J Driver files as ZIP files.

### Install and setup MySQL workbench

1.  Download MySQL (Windows x86, 64-bit MSI Installer). Download the **Community** version, not the **Web Community** version. The version number refers to the MySQL version, **not** the MySQL Workbench version.
2.  Run the installer and continue until the **Choosing A Setup Type** page.
3.  On the page **Choosing A Setup Type**, select **Custom**.
4.  Click **Next >**.
5.  Expand the folder of options and select **MySQL Server** and **Connector/J**.
6.  Continue through with default settings and complete installation.
7.  Download MySQL WorkBench (Windows x86, 64-bit MSI Installer). The version number refers to the MySQL Workbench version, **not** the MySQL version.
8.  Run the installer and complete installation.
9.  To set up MySQL Workbench for Appian:
    -   Open MySQL Workbench, create a new connection with any name, setting hostname: `localhost` and port: `3306`.
    -   Set a username of `root` and password of `password`. Any values can be used, and they do not need to be unique to the local installation.
    -   Right-click the newly created connection and select **Open Connection** to open the connection.
    -   Create a database schema by clicking the cylindrical schema symbol on the top left of the **MySQL Workbench** window as shown in the screenshot below.

        ![](images/local_installation/mysql_create_schema.png)

    -   Name this schema which will serve as the primary datasource based on the version. This will be referred to as _APPIAN\_SCHEMA_.
    -   Apply the database schema and click **Finish**.
    -   Repeat the previous three steps to create another database schema to serve as the business datasource. This will be referred to as _BUSINESS\_SCHEMA_.
        -   **Note:** The two schemas need to be unique to this Appian installation since each serves as datasources for the installation.

Refer to the [System Requirements page](System_Requirements.html) for more information.

## Installation

During the installation and configuration process, you will install Appian and the configure script, and then use the script to configure Appian.

The following placeholders are used throughout this document to keep the installation directories easy to read. Replace XXX in the example location with the version number, such as 161 or 171 for Appian 16.1 and 17.1 respectively.

| Directory | Description | Example Location |
| --- | --- | --- |
| APPIAN\_HOME | Directory where Appian is installed | `C:\appianXXX\appian` |
| REPO\_HOME | Directory of the configuration repository | `C:\appianXXX\repo\appian` |

**Tip:**  Note: Many variables throughout this guide, including these directories, will be encapsulated with angle brackets `<>` such as in `<VARIABLE>`. Any text or variables entered during installation should not include these angle brackets.

### Part One: run the Appian installer

Appian is installed using a graphical installer. The installer automatically installs Appian in `C:\appian` unless you specify another directory. Do not install Appian in a directory where another version of Appian is already installed. Do not use the following characters in the name of your installation directory: `& ^ = ( ) <space>`

To install Appian:

1.  Temporarily disable any antivirus software or search indexing utilities running on the server.
2.  Run the installer.
    -   **Tip:** If you are using Windows 7, right-click the installer and select **Run as administrator**.
3.  Click **Next** in the window and again on the following window to proceed to the window which allows the user to set the **Destination Folder**.
4.  Under the section **Destination Folder**, click **Browse**, and then specify the desired location for the _APPIAN\_HOME_ directory. To create this target directory:
    -   click **Make New Folder**.
    -   Place the folder in `C:\` and name the folder `appianXXX`, where XXX is the current version number of Appian to install. If you are installing a second instance of Appian, name it `appianXXX_2`. These directories allow you to have multiple local installations of Appian.
    -   Create another folder named `appian` and place it within `C:\appianXXX`. This would result in a final target directory such as `C:\appianXXX\appian\`.
5.  Click **OK** to select the folder `C:\appianXXX\appian\`.
6.  Click **Next** on the window and again on the following window to proceed with the installation.
7.  Wait for the installation to complete. This may take several minutes.
8.  Click **Finish** to close the installer.
9.  [Set JAVA\_HOME and PATH Environment Variables](Prerequisites.html#set-the-java_home-and-path-environment-variables)

A **Program Compatibility Assistant** dialog may appear after the installer closes. This issue does not affect the Appian installation. If this happens, click **This program installed correctly** to dismiss the warning.

### Part two: Run the configure script

The [configure script](Configure_Script.html), `configure.bat`, is a command line utility that provides a menu-driven interface for executing configuration and deployment tasks. After downloading the configure script, unpack the contents to `<APPIAN_HOME>/_admin/_scripts/configure`. You will use the first three menu options during this part. Later, you will return to the configure script to complete the configuration and deployment.

| Menu Item | Comments |
| --- | --- |
| 1 - Create or select repository |
Creates the repository where your custom configurations will be stored.

**Important:** This path must be different from the installation path. |
| 2 - Create initial backup of Appian installation | Creates a backup directory that does not include customizations. This backup can be used to restore the installation if you wish to undo custom configurations later. See [Backing Up Appian](Configure_Script.html#backing-up-appian) for additional details. |
| 3 - Register an environment |

Allows you to create different environments with different configurations. You will only need to register one environment during this installation process.

**Note:** Some names, such as _xml_ and _bat_, are reserved and cannot be used as an environment name—see [Registering an Environment](Configure_Script.html#registering-an-environment) for a complete list. |

To create a local configuration repository (_REPO\_HOME_)

1.  Open the command prompt, and then run the following command:

    ```
    1
    <APPIAN_HOME>\_admin\_scripts\configure\configure.bat
    ```

2.  Choose **1 - Create or select repository**.
    -   **Tip:** You just need to type the number and press **Enter** to specify which menu option you wish to run.
3.  Specify the path for the configuration repository.
    -   **Tip:** You do not need to create the directory prior to entering it in the configure script. This also applies for the initial backup below.

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
======================================================================
Configure Appian

This script assists with configuring Appian on various environments.
======================================================================

1 - Create or select repository
2 - Create initial backup of Appian installation
B - Back
Q - Quit
> 1

Enter path of repository directory
B - Back
Q - Quit
> C:\appianXXX\repo\appian
```

When you have finished, you will see something similar to the screenshot below (notice that more menu options are now available). The example in the screenshots uses _C:\\appianXXX\\repo\\appian_ as the path.

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
======================================================================
Configure Appian

This script assists with configuring Appian on various environments.
======================================================================

1 - Create or select repository
2 - Create initial backup of Appian installation
B - Back
Q - Quit
> 1

Enter path of repository directory
B - Back
Q - Quit
> C:\appianXXX\repo\appian
Repository updated to C:\appianXXX\repo\appian

======================================================================
Configure Appian

This script assists with configuring Appian on various environments.
======================================================================

Repository location: C:\appianXXX\repo\appian

1 - Change repository
2 - Create initial backup of Appian installation
3 - Register an environment
4 - Validate configurations
5 - Deploy configurations
6 - Tools
B - Back
Q - Quit
>
```

To create the initial backup

1.  With the command prompt still open, run **2 - Create initial backup of Appian installation**.
2.  Specify the path for the local backup (for example _C:\\appianXXX\\backup\\appian_.)

**Note:**  Note: Creating the initial backup takes several minutes. Wait for this to complete before proceeding.

To register an environment

1.  With the command prompt still open, run **3 - Register an environment**.
2.  Specify a name for the environment (for example, you may choose to use _dev_ if you are creating a development environment). Leave the configure script command window open.

You will need to use the name of the registered environment when configuring MySQL in the next part. The environment is referred using the placeholder _ENVIRONMENT_ throughout the remainder of this guide.

**Tip:**  If any paths were incorrectly entered during this section, these values can be modified in the file: `<APPIAN_HOME>\_admin\_scripts\configure\.configure`.

### Part three: Configure the Appian properties and MySQL files

#### Custom properties

Make the following changes to the **custom.properties.<ENVIRONMENT>** file:

1.  Go to `<REPO_HOME>\conf`.
2.  Open **custom.properties.<ENVIRONMENT>** in a text editor.
    -   **Tip:** If your **custom.properties** file does not have the `.<ENVIRONMENT>` extension, it may be due to your computer’s known extensions setting.
3.  Set `conf.suite.SCHEME` to http by removing the letter `s` at the end and uncommenting the line by deleting the `#` sign:

    ```
    1
    #conf.suite.SCHEME=https
    ```

    which should now appear as

    ```
    1
    conf.suite.SCHEME=http
    ```

    -   This configuration bypasses the need for a certificate to be installed. It is only supported for local installations and is not supported for production environments or any environment that is accessible over the internet. For production or internet-accessible installations, you must use https instead of http. For more information on configuring a web server to run over https, see [Creating a Certificate.](Configuring_Apache_Web_Server_with_Appian.html#generating-a-certificate)
4.  Uncomment the following line, replacing _<YOUR\_VALUE>_ with your machine's fully qualified domain name (FQDN), which uses the pattern _myhost.domain.com_:

    ```
    1
    #conf.suite.SERVER_AND_PORT=<YOUR_VALUE>:8080
    ```

    which should now appear as:

    ```
    1
    conf.suite.SERVER_AND_PORT=<YOUR_VALUE>:8080
    ```

    -   **Tip:** You can find your computer's FQDN by clicking **Start**, right-clicking **Computer**, and then clicking **Properties**. The FQDN is listed in the **Computer name, domain, and workgroup Settings** section. Include any suffix such as `.company.com` tag, and do not include the angle brackets `<>` around _YOUR\_VALUE_. A hypothetical FQDN is `MY355COMP86NAME.acme.com`.
5.  Uncomment the following lines, and set the values equal to the JNDI name, `jdbc/AppianDS`, used in `<REPO_HOME>\conf\tomcatResources.xml.<ENVIRONMENT>` (do not use quotes around the JNDI names in this file):

    ```
    1
    #conf.data.APPIAN_DATA_SOURCE=
    ```

    which should now appear as

    ```
    1
    conf.data.APPIAN_DATA_SOURCE=jdbc/AppianDS
    ```

    -   **Note:** JNDI names do not have to be unique across Appian local installations.
6.  Save the file.

#### Service manager password

1.  Go to `<APPIAN_HOME>\services\bin\`.
2.  Run [password script](Service_Manager_Scripts.html#password-script) (`password.bat`), using the `-p` option to specify a password.
3.  Copy the resulting file from `<APPIAN_HOME>\services\conf\service_manager.conf` to `<REPO_HOME>\services\conf\service_manager.conf.<ENVIRONMENT>`. You will need to create the `<REPO_HOME>\services\conf\` directory if you have not previously completed this step.

#### MySQL files

Next, you will need to change the data source for your MySQL files from the default data source of MariaDB to a MySQL database.

To do this:

1.  Open `<REPO_HOME>\conf\tomcatResources.xml.<ENVIRONMENT>`.
2.  In the line below, replace the JDBC URL subprotocol `mariadb` with `mysql` and `appian_primary` with your primary data source name, such as `appianXXX_primary`:

    ```
    1
    url="jdbc:mariadb://localhost:3306/appian_primary?useOldAliasMetadataBehavior=true&amp;useUnicode=true&amp;characterEncoding=utf8"
    ```

    If your datasource name is `appianXXX_primary`, this line should now appear as:

    ```
    1
    url="jdbc:mysql://localhost:3306/appianXXX_primary?useOldAliasMetadataBehavior=true&amp;useUnicode=true&amp;characterEncoding=utf8"
    ```

3.  Update the `driverClassName` configuration value to `com.mysql.jdbc.Driver`.
4.  Save the file.

The final configuration should look something like this:

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
 <Resource name="jdbc/AppianDS"
    factory="com.appiancorp.tomcat.datasource.EncodedPasswordDataSourceFactory"
    type="javax.sql.DataSource"
    driverClassName="com.mysql.jdbc.Driver"
    url="jdbc:mysql://localhost:3306/appianXXX_primary?useOldAliasMetadataBehavior=true&amp;useUnicode=true&amp;characterEncoding=utf8"
    username=""
    password=""
    initialSize="5"
    maxActive="100"
    defaultTransactionIsolation="READ_COMMITTED"
    maxWait="30000"
    minIdle="5"
    minEvictableIdleTimeMillis="90000"
    timeBetweenEvictionRunsMillis="450000"
    validationQuery="SELECT 1"
    testOnBorrow="true"
  />
```

### Part four: MySQL data source password setup

We are now ready to return to the configure script to encode the MySQL data source password for use by Appian. This capability is available from the **6 - Tools** menu option.

1.  If you have closed out of the configure script, use the following command to reopen it:

    ```
    1
    <APPIAN_HOME>\_admin\_scripts\configure\configure.bat
    ```

2.  Type **6**, and then press **Enter**.
3.  Type **1**, and then press **Enter**.
4.  Provide the password, _MYSQL\_PASSWORD_, for the user that will connect to the MySQL database.
5.  Copy the encoded password hash, referenced as _MYSQL\_PW\_HASH_, for use in the next procedure.
6.  Type **Q** to quit.
7.  Open `<REPO_HOME>\conf\tomcatResources.xml.<ENVIRONMENT>`.
8.  Locate the `<Resource>` tag with a name of `jdbc/AppianDS`
9.  Update the `username=""` line to include the username you previously configured for MySQL above, `root`
10.  Update the `password=""` line to include _MYSQL\_PW\_HASH_ that you generated above

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
======================================================================
Configure Appian

This script assists with configuring Appian on various environments.
======================================================================

Repository location: C:\appianXXX\repo\appian

1 - Change repository
2 - Create initial backup of Appian installation
3 - Register an environment
4 - Validate configurations
5 - Deploy configurations
6 - Tools
B - Back
Q - Quit
> 6

======================================================================
Configure Appian

This script assists with configuring Appian on various environments.
======================================================================

Repository location: C:\appianXXX\repo\appian

Select a tool to execute
1 - Encode passwords for use in data source configuration
2 - Configure Tomcat clustering by specifying a node name
B - Back
Q - Quit
> 1

Enter the password to encode for use in datasource configuration
B - Back
Q - Quit
> mypassword
Encoded password: p5Ccm85AkVo1JGo3PBU7eg==

======================================================================
Configure Appian

This script assists with configuring Appian on various environments.
======================================================================

Repository location: C:\appianXXX\repo\appian

Select a tool to execute
1 - Encode passwords for use in data source configuration
2 - Configure Tomcat clustering by specifying a node name
B - Back
Q - Quit
>
```

### Part five: Adding the MySQL driver

Appian requires the **MySQL Connector/J driver**, downloaded in the [Requirements section](#requirements).

1.  In folder: `<REPO_HOME>\`, create directory `\tomcat\apache-tomcat\lib\`.
2.  Add the **MySQL Connector/J** driver, **mysql-connector-java-X.X.XX-bin.jar**, contained in the downloaded file **mysql-connector-java.X.X.XX.zip** to the `lib\` folder.

### Part six: Install the temporary product license

Copy the temporary license files from the [Requirements section](#requirements).

1.  Place `k3.lic` inside the `<REPO_HOME>\server\_bin\k\win64` directory.
2.  Place `k4.lic` inside the `<REPO_HOME>\data-server\engine\bin\q\w64` directory.

**Caution:**  Warning: The license file names must exactly match "k3.lic" and "k4.lic" respectively. Any change to the file names will cause the Appian engines to not start properly.

### Part seven: Deploy the configurations

Use the configure script to validate your environment's configuration and deploy Appian.

1.  Open the command prompt, and then run the following command:

    ```
    1
    <APPIAN_HOME>\_admin\_scripts\configure\configure.bat
    ```

2.  Choose **4 - Validate configurations**.
3.  Choose **5 - Deploy configurations**, select **1 - <ENVIRONMENT>**, and then select **1 - Deploy configurations to Appian**.
4.  Type **Q** to quit.

**Note:**  If you need to modify configurations when troubleshooting a local installation that fails to start properly, you must rerun these 4 deployment steps.

### Part eight: Start Appian and log In

After you have completed the process above, you are ready to start Appian for the first time. Starting and stopping the system properly is very important for maintaining the highest levels of system availability. Improper shutdowns can cause system issues.

For your convenience, the instructions to start Appian are included below. See [Starting and Stopping Appian](Starting_and_Stopping_Appian.html) for more information about stopping the system correctly.

Open the command prompt, and then run the following commands (wait for each to finish before starting the next):

-   `<APPIAN_HOME>\services\bin\start.bat -p <password> -s all`
-   `<APPIAN_HOME>\data-server\bin\start.bat`
-   `<APPIAN_HOME>\search-server\bin\start.bat`
-   `<APPIAN_HOME>\tomcat\apache-tomcat\bin\start-appserver.bat`

Appian has started successfully when the command line displays a message similar to:

```
1
INFO [main] org.apache.catalina.startup.Catalina.start Server startup in 377928 ms
```

If any configurations are changed while troubleshooting, rerun [Part Seven: Deploy the Configurations](#part-seven-deploy-the-configurations) before starting Appian again.

Once started, you will be able to

1.  In a browser, navigate to _http://<FQDN>:8080/suite/design/users_.
    -   **Tip:** Include any suffix such as `.company.com` tag in the _FQDN_ name.
2.  Log in with the username `Administrator` and temporary password `admin`.
3.  Change the system administrator's password when prompted.
4.  Click on the **Create User** button and create a new user of type **System Administrator**.

The default `Administrator` account cannot access the [Admin Console](Appian_Administration_Console.html), so a separate account is required to complete the following steps.

### Part nine: Configure the business data source

The first thing that you should do after logging into Appian for the first time is configure it to connect to a [business data source](Configuring_Relational_Databases.html#business-data-sources).

To set up the **Business Data Source:**

1.  Log in as the newly created user.
2.  Navigate to _http://<FQDN>:8080/suite/admin_.
3.  Using the left side options, Go to the [Data Sources](Appian_Administration_Console.html#data-sources) page of the Admin Console.
4.  click on the **New Data Source** link.
5.  In the **Name** field, enter any name for the business data source JNDI name, starting with `"jdbc/"`.
    -   **Note**: the JNDI name does not need to be unique across Appian local installations.
6.  In the field **Type**, select **MySQL**.
7.  Enter in the MySQL Workbench username `root` and the password `password` (not the hash).
8.  Enter the following connection string:

    ```
    1
    jdbc:mysql://localhost:3306/<BUSINESS_SCHEMA>?useOldAliasMetadataBehavior=true
    ```

    where _BUSINESS\_SCHEMA_ is the one noted in the [Requirements section](#install-and-setup-mysql-workbench), such `appianXXX_business` where XXX is the Appian version number. Do not include quotations around the connection string and do not include the angle brackets `<>` around BUSINESS\_SCHEMA.

9.  Click **Test Connection**. If the connection fails, verify the settings above and whether they match the information entered in the [Requirements section](#install-and-setup-mysql-workbench).
10.  Click **Save**.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...