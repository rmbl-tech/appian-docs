---
source_url: https://docs.appian.com/suite/help/25.3/Configure_Script.html
original_path: Configure_Script.html
version: "25.3"
title: "Configure Script"
page_id: "Configure_Script"
section: "Installation"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure Script

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

The configure script allows you to manage and deploy custom configurations to Appian installations in a repeatable manner. It also aids with the initial setup of the configurations required for running Appian.

**Note:**  This script is only applicable for self-managed Windows and Linux deployments. It is not valid for use with Appian on Kubernetes.

Results of the script are logged to `configure.log` in the same directory in which the script resides.

Use of a version control system in conjunction with the script is highly recommended. The script creates a repository directory in which all configuration files are stored before being deployed. This directory should be version controlled using your preferred version control mechanism, such as [Git](https://www.git-scm.com/).

**Caution:**  Appian does not support any custom configurations of the Tomcat instance included with Appian. If you do modify the Tomcat instance of a self-managed installation, we cannot guarantee that hotfixes or upgrades will not impact or overwrite the modifications. For example, we do not support enabling HTTP Strict Transport Security (HSTS) in the Tomcat instance included with Appian. Instead, we recommend adding HSTS headers at the web server layer or via an upstream network device.

## Installation

Due to installer package size limitations, we're changing how the configure script is distributed. The configure script will now be downloaded separately rather than bundled with the installer package.

1.  The script is available alongside installers in the "Add-ons" section of the downloads page [MyAppian](https://forum.appian.com/suite/sites/myappian/page/support).
2.  Download the zip and extract to `<APPIAN_HOME>/_admin/_scripts/`.

## Life cycle

The typical life cycle of using the configure script to aid configuration management with Appian is as follows:

1.  Install Appian, the configure script, and the [prerequisites software](Prerequisites.html#install-third-party-software).
2.  Create a repository for configurations using the configure script.
3.  Back up the new Appian installation before applying any configurations.
4.  Register an environment with the configure script.
5.  Edit the configuration files in the repository to set the relevant properties for the given environment.
6.  Validate the configurations using the configure script.
7.  Use the configure script to deploy the configurations to Appian.

**Note:**  The configure script does not change configurations. It deploys the configurations that are stored in its repository. You must change configuration files like **custom.properties**, **password.properties**, and **appian-topology.xml**. Change these files in the configure script repository, version control the changes, and then use the configure script to deploy the changes.

## Running the script

To run the script:

1.  Navigate to `<APPIAN_HOME>/_admin/_scripts/configure`
2.  Run `configure.sh` (or `configure.bat` on Windows)

The script provides a menu driven interface for executing the various configuration and deployment tasks. The script can also be run in a non-interactive manner by passing parameters on the command line when executing the script—see the [Silent Mode](#silent-mode) section for details.

## Creating the configuration repository

The first step when running the configure script on a new machine is creating a repository. The configuration repository is where your custom configurations will be stored.

1.  Run `configure.sh` (or `configure.bat` on Windows).
2.  From the main menu, select **1 - Create or select a repository**.
3.  Provide the path to a directory in which the repository will be created.
4.  Once you have created the repository, use your preferred version control system to version control the repository directory.

After you create a repository, the repository location is displayed in the menu's banner and additional menu options become available. Also, the menu option to create a repository becomes an option to change the repository location, which creates a new repository at the given new location.

## Backing up Appian

Backing up the Appian directories is recommended before deploying any custom configurations.

Run this script option after installing Appian but before deploying any custom configurations in order to create a backup copy which can be restored. To undo all custom configurations, restore from this backup by deleting the directories from Appian and copying these backup directories to the `<APPIAN_HOME>` directory.

1.  Run `configure.sh` (or `configure.bat` on Windows).
2.  From the main menu, select `2 - Create initial backup of Appian installation`.
3.  Provide a directory to which the files will be copied.

The configure script does not back up Appian data. Use the scripts described in the Data Maintenance page to manage data backups.

See also: [Data Maintenance](Data_Maintenance.html)

## Registering an environment

This option is only available once you have created a repository.

An environment is an Appian instance that has different configurations than other instances. For instance, you may have one set of configurations for your development environment and a different set of configurations for your production environment.

Creating a new environment creates an initial copy of configuration files from templates that are specific to that environment. When deploying configurations, the environments you create will be available as selectable options and the corresponding files will be copied to the target instance of Appian.

1.  Run `configure.sh` (or `configure.bat` on Windows)
2.  From the main menu, select `3 - Register an environment`
3.  At the next prompt, give the environment a name (for example, _prod_, _staging_, or _dev_)

The following names are reserved and cannot be used as an environment name:

-   log
-   template
-   example
-   properties
-   txt
-   xml
-   bat
-   sh
-   jar
-   sec
-   jpg
-   gif
-   png
-   ear
-   war
-   dodeploy

## Validating an installation

This option identifies the file and configuration changes in your installation so you can validate the changes to your environment, and easily troubleshoot any potential issues.

This option is only available after installation, and should be run before you select a repository.

To validate your installation:

1.  Run `configure.sh` (or `configure.bat` on Windows).
2.  From the main menu, select `3 - Validate installation`.

    **Note:**  If you already selected a repository, select `6 - Tools` and then choose `3 - Validate installation`.

3.  Provide a directory to which the files will be copied.

Once the validatation is complete, the following results will be populated:

-   **Configuration Hashes**: A representative integer value is created for each configuration. Use these values to compare each node to identify differences. This output is also created as `config-result.csv` under `_scripts/configure/installation-validation/`.
-   **Installation Differences**: A baseline is compared against the prevailing installation to identify files that have been `MODIFIED`, `MISSING`, or `UNEXPECTED`. This output is also created as `result.csv` under `_scripts/configure/installation-validation/`.

## Editing configurations

The configure script does not modify values in the configuration files in the repository.

After registering an environment, set the desired configuration values for that environment by editing the configuration files suffixed with the environment name. Additionally, you can provide new files in the configuration repository that will be copied to the target when deploying. For instance,

-   A `k3.lic.env` file placed in `<REPO>/server/_bin/k/linux64/` and a `k4.lic.env` file placed in `<REPO>/data-server/engine/bin/q/l64/` will be copied to the corresponding directories in `<APPIAN_HOME>` when the `env` environment is deployed.

For more details on setting configuration values see:

-   [Post-Install Configurations](Post-Install_Configurations.html)
-   [Configuring Relational Databases](Configuring_Relational_Databases.html)

## Validating configurations

This option is only available once you have created a repository.

The configure script can conduct a minimal review of the configuration files to verify that `custom.properties` is present and that the essential properties are defined there.

1.  Run `configure.sh` (or `configure.bat` on Windows).
2.  From the main menu, select `4 - Validate configurations`.

The validation will inspect all registered environments and either report success or any validation errors back to the console

Validation of a specific environment is also performed automatically when you deploy configurations for the selected environment.

## Deploying configurations

This option is only available once you have registered an environment.

The `configure` script deploys configurations by copying the configuration files from the repository directory to the target Appian directory.

Before executing this option you must edit the appropriate configuration files for the environment that you wish to deploy.

1.  Run `configure.sh` (or `configure.bat` on Windows).
2.  From the main menu, select `5 - Deploy configurations`.
3.  Select the environment for which configurations should be deployed.
4.  Select to deploy configurations to Appian. The configuration files will be deployed to the selected targets.

If you have not run a backup before deploying configurations, the script will prompt you to run an optional backup before deploying configurations.

## Tools

The tools menu contains utilities to aid in the configuration and deployment of Appian.

### Encoding passwords for use in data source configurations

1.  Run `configure.sh` (or `configure.bat` on Windows)
2.  From the main menu, select `6 - Tools`
3.  Select `1 - Encode passwords for use in data source configuration`
4.  Provide a password to be encoded (the password will not be stored)
5.  The encoded password will be returned. Use this password in [datasource configuration files](Configuring_Relational_Databases.html#provide-data-source-connection-information).

### Configure Tomcat clustering by specifying a node name

1.  Run `configure.sh` (or `configure.bat` on Windows)
2.  From the main menu, select `6 - Tools`
3.  Select `2 - Configure Tomcat clustering by specifying a node name`
4.  Provide the worker node name from your [web server configuration](Configuring_Apache_Web_Server_with_Appian.html#load-balancing-multiple-application-servers) that corresponds to this server. For example, a value might be `node1` or `node2`.

## Silent mode

The above activities are available as command line options allowing you to build scripts that bypass the menu-driven interactive interface. The silent mode is accessed by passing `-silent` as a parameter to the script. The task name for the desired activity must be passed as `task=value`, plus any parameters necessary for that task. Additional parameters and their corresponding values are passed in the `parameter=value` format. For example, to run the `deployAppianConfigurations` task:

```
1
configure.sh -silent task=deployAppianConfigurations environmentName=dev
```

| Activity | Task Name | Parameters | Prerequisites |
| --- | --- | --- | --- |
| Create Repository | `createRepository` |
-   `repositoryDir` - The directory in which the repository should be created.

 | None |
| Back up Appian | `backupAppian` |

-   `backupDir` - The directory to which the files will be copied.

 | None |
| Register Environment | `registerEnvironment` |

-   `environmentName` - The name of the environment to register.

 | A repository must have been created, either through silent mode or using the menu-driven interface. |
| Validate Configurations | `validateConfigurations` | None |

-   A repository must have been created, either through silent mode or using the menu-driven interface.
-   At least one environment must have been created, either through silent mode or using the menu-driven interface.

 |
| Deploy Configurations to Appian | `deployAppianConfigurations` |

-   `environmentName` - The name of the environment to deploy.

 |

-   A repository must have been created, either through silent mode or using the menu-driven interface.
-   At least one environment must have been created, either through silent mode or using the menu-driven interface.

 |
| Encode Data Source Password | `encodeDataSourcePassword` |

-   `password` - The password to encode.

 | None |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...