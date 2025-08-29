---
source_url: https://docs.appian.com/suite/help/25.3/Windows_Installation_Guide.html
original_path: Windows_Installation_Guide.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Windows Installation Guide

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

This page covers the steps necessary to perform an enterprise installation of Appian on a supported Windows operating system and configured to run on your application server. These steps assume that your installation will be performed on a single server, however, they are also used in conjunction with the [High Availability and Distributed Installations](High_Availability_and_Distributed_Installations.html#how-to-configure-a-distributed-installation) page for multiple server installations.

Before starting the installation process, review the [System Requirements](System_Requirements.html) to ensure all minimum requirements are met.

There are three main parts to an Appian installation:

1.  Engine and service installation.
2.  Environment-specific configuration.
3.  Startup and site setup.

Engine & services installation involves deploying the Appian installation package. Next, environment-specific configurations are made to Appian's engines and services, the application server, and relational database management system (RDBMS) so they all talk to each other. Finally, administrators perform final start-up and setup procedures to get the installation up and running.

### Prerequisites

In order to successfully complete the installation steps below, several prerequisite steps must first be completed:

-   [Install Third-Party Software](Prerequisites.html#install-third-party-software): The RDBMS must be installed prior to Appian installation. Obtain the appropriate [JDBC Driver](System_Requirements.html#databases), which is used to connect to the RDBMS.
-   [Obtain the Temporary Product Licenses](Prerequisites.html#obtain-a-temporary-product-license): A product license is required to start the Appian engines as well as the data service. To obtain a temporary product license follow [Requesting and Installing a License](Requesting_and_Installing_a_license.html#temporary-license).
-   [Set the Server System Locale](Prerequisites.html#verify-the-server-system-locale-setting): The system locale must be defined in order to install Appian. In most cases, the system locale setting will already be set correctly.

See [Installation Prerequisites](Prerequisites.html) for more details.

## Part 1: Install Appian engines and services

The first part of the installation process is to run the Appian installer, which deploys the engines, services, search server, data service, Appian Java EE application, and relevant libraries & files. After running the Appian installer, the temporary product license is placed in the appropriate directory from the prerequisite steps. This allows the administrators to obtain information about the machine necessary to acquire a long-term product license.

### Run the Appian installer

The Appian installer can be downloaded from the Downloads tab on [MyAppian](https://forum.appian.com/suite/sites/myappian/page/support).

**Note:**  The latest hotfix is included as part of the Appian installer. When planning an installation or upgrade, ensure each environment is using the same version of the installer. This can be verified after installation by opening the **build.info** file located in `<APPIAN_HOME>/conf/`. The contents of this file should match across all environments.

To install Appian:

1.  Temporarily disable any antivirus software or search indexing utilities running on the server.
2.  Ensure that the `<APPIAN_HOME>` directory exists prior to executing the installer.
    -   Do not use the following characters in the name of your installation directory: `& ^ = ( ) <space>`
    -   Do not install Appian in a directory where another version of Appian is already installed. If you desire to use the same directory names, and are performing these steps as part of an [upgrade](Upgrade_Guide.html), rename the older `<APPIAN_HOME>` directory before installing this one.
3.  Double-click on the installer.
    -   If you are using Windows 7, right-click the installer and select Run as administrator.
4.  Click Next to step through the installer.
    -   The installer automatically puts Appian files in a default location unless you specify another directory.
    -   _Optional:_ When you reach the **Destination Folder** option, click **Browse**, and then specify the desired location for the `<APPIAN_HOME>` directory. The installer automatically installs Appian in `C:\appian` unless you specify another directory.
5.  Click Finish to close the installer.
6.  [Set JAVA\_HOME and PATH Environment Variables](Prerequisites.html#set-the-java_home-and-path-environment-variables)

**Note:**  A Program Compatibility Assistant dialog may appear after the installer closes. This issue does not affect the Appian installation. If this happens, click **This program installed correctly** to dismiss the warning.

If you deploy the application suite on a virtual PC or virtual OS image, complete the following steps:

1.  Right-click the _APPIAN\_HOME_ directory.
2.  Select **Properties**.
3.  Select the **Security** tab.
4.  Verify that the user account that is to be used to start the application has **Read & Execute** and **Write** permissions for the folder.

### Obtain your long-term product license

Once the installation is complete, your product license must be obtained and installed. Appian cannot be started without a valid license. The temporary license obtained earlier is only valid for 6 days. It is designed to obtain long-term licenses for your environments, for example, dev, test, and production.

To request a long-term license, follow [Requesting and Installing a License](Requesting_and_Installing_a_license.html). For each environment, obtain long-term product licenses for all of the servers where engines will reside as well as licenses for the data service.

Once you have obtained the long-term license, use the [configure script](Configure_Script.html) to manage the long-term product licenses in a central repository.

Installation Steps for both will be discussed in the next part of the installation guide.

## Part 2: Installation configurations

The main part of an Appian installation is setting configuration properties necessary for Appian to communicate with an RDBMS and a web server. This section is split into four parts:

-   Appian Configuration
-   RDBMS configurations
-   External configurations
-   Deployment of configurations

### Appian configuration

Before making any configurations changes, perform the following parts of the configure script:

1.  [Installing the Script](Configure_Script.html#installation).
2.  [Running the Script](Configure_Script.html#running-the-script).
3.  [Create the Configuration Repository](Configure_Script.html#creating-the-configuration-repository).
4.  [Backing Up Appian](Configure_Script.html#backing-up-appian).
5.  [Registering an Environment](Configure_Script.html#registering-an-environment).

Once you've registered an environment, the `<REPO_HOME>` directory will populate subdirectories with a copy of all the core configuration files. Make any desired changes within these repository directories.

The remaining menu options of the configure script are either optional or will be performed later in this installation guide.

Once the configure script has been initialized, the remaining Appian configurations need to be finalized. Changes will be made in the `<REPO_HOME>` directory.

-   [Configure Site URL](Post-Install_Configurations.html#configure-your-site-url): Sets up the environment's server, port, and domain. Configured in `custom.properties`.
-   [Generate a Unique Security Token for the Appian Engines](Post-Install_Configurations.html#generate-a-unique-security-token-for-appian-engines): Appian restricts communication with the engine servers using a security token. Generating a unique security token for each environment offers an extra layer of protection for your installation.
-   [Generate a Unique Security Token for the Data Service](Post-Install_Configurations.html#generate-a-unique-security-token-for-data-service): Appian restricts communication with the data service using a security token. Generating a unique security token for each environment offers an extra layer of protection for your installation.
-   [Raise the Cap on Maximum Engine Size](Post-Install_Configurations.html#raise-the-cap-on-maximum-engine-size-on-64-bit-operating-systems): This raises the amount of memory that a single execution engine will use.
-   [Place the K Licenses in their folder](Requesting_and_Installing_a_license.html#installing-the-license-files): Deploy the licenses to the appropriate directory in the repository. Append the environment suffix to the end of the `k3.lic` and `k4.lic` file. For example, use `k3.lic.dev` for a license going to a dev environment. The Appian engines use the `k3.lic` while the [data service](Data_Server.html) uses the `k4.lic`.

#### Optional configurations

Optional configurations are performed at the discretion of the System Administrator based on the needs of a particular environment. See the [Optional Configurations](Post-Install_Configurations.html#optional-configurations) section of the Post-Install Configurations page for specific guidance.

**Caution:**  Appian does not support any custom configurations of the Tomcat instance included with Appian. If you do modify the Tomcat instance of a self-managed installation, we cannot guarantee that hotfixes or upgrades will not impact or overwrite the modifications. For example, we do not support enabling HTTP Strict Transport Security (HSTS) in the Tomcat instance included with Appian. Instead, we recommend adding HSTS headers at the web server layer or via an upstream network device.

### RDBMS configurations

A [supported relational database](System_Requirements.html#databases) is required for the Appian data source, which is used exclusively for storing data relating to the Appian installation as a whole.

Whichever relational database is used, a [JDBC Driver](System_Requirements.html#databases) is required and should have been downloaded as part of the prerequisite steps above.

#### Connecting to an RDBMS

To create a data source in Appian:

1.  Ensure the database user configured in the `tomcatResources.xml.<ENVIRONMENT>` file has the following privileges on the data source schema:
    -   Create tables
    -   Drop tables
    -   Alter tables
    -   Insert into tables
    -   Update tables
    -   Select tables
2.  [Install the driver](Configuring_Relational_Databases.html#install-rdbms-driver).
3.  [Provide data source connection information](Configuring_Relational_Databases.html#provide-data-source-connection-information). In the `<REPO_HOME>/conf/tomcatResources.xml.<ENVIRONMENT>` file, define the JNDI name, server, port, and database name. The JNDI name in the `tomcatResources.xml.<ENVIRONMENT>` must match the name referenced in `custom.properties`.

### External configurations

These steps occur outside the configure script repository and Appian installation directory.

-   [Configure Disk Cleanup](Post-Install_Configurations.html#configure-the-disk-cleanup): Appian engines and logs generate a lot of data. These configurations ensure that old logs and processes do not max out disk space.
-   [Exclude Appian engines from antivirus scanning](Post-Install_Configurations.html#exclude-files-from-antivirus-scanning): Antivirus software running on the Appian engines can cause performance issues.

### Deployment

Once all of the necessary configurations are made, it's time to deploy the configure script's repository. Deployment consists of two steps: verification and deployment. The configure script has these steps built in.

To properly deploy Appian using the configure script, follow the instruction in the [validating configurations](Configure_Script.html#validating-configurations) and [deploying configurations](Configure_Script.html#deploying-configurations) sections of the configure script page.

Configurations can successfully be verified by reviewing the files in the `<APPIAN_HOME>` directory.

## Part 3: Startup and setup

Once all of the configurations are deployed, it's time to start Appian and verify the installation was successful. Before starting Appian and signing into it, a system administrator user account will need to be generated. Additionally, the service manager requires a password to run its scripts.

### Generate a password for the service manager

Use the [password script](Service_Manager_Scripts.html#password-script) to generate a service manager password. This password is used on any of the service manager scripts as a way to protect against anyone without proper access from running administrative scripts.

### Start Appian

Follow the instructions on [Starting and Stopping Appian](Starting_and_Stopping_Appian.html) to properly start Appian.

### Sign in to Appian

To sign in to Appian:

1.  In a browser, navigate to `https://<host-name>/suite/design/users`.
2.  Sign in with the username `Administrator` and temporary password `admin`.
3.  Change the system administrator's password when prompted.
4.  Click on the **Create User** button and create a new user of type **System Administrator**.

The default `Administrator` account cannot access the [Admin Console](Appian_Administration_Console.html), so a separate account is required to complete the following steps.

### Verify system settings

Review and make changes to the default settings in the [Admin Console](Appian_Administration_Console.html).

#### Setup business data sources

The business data source creates a connection between Appian application objects and your business data. Setting up your business data source is handled through the [Admin Console](Appian_Administration_Console.html#data-sources). Multiple business data sources can be configured for a single environment.

## Troubleshooting

For additional troubleshooting resources, refer to the [Appian Knowledge Base](https://community.appian.com/support/w/kb/) on Community.

## Uninstalling Appian

To uninstall Appian, delete the _APPIAN\_HOME_ directory.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...