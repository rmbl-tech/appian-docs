---
source_url: https://docs.appian.com/suite/help/25.3/Installing_Appian_as_a_Windows_Service.html
original_path: Installing_Appian_as_a_Windows_Service.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Installing Appian as a Windows Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

## Installing Tomcat as a Windows service

To install the Tomcat Windows Service, complete the following:

1.  Open a command prompt.
    -   Run `C:\Windows\System32\cmd.exe` as **Administrator**.
2.  Change directories to the `<APPIAN_HOME>\tomcat\apache-tomcat\bin` directory.
3.  Type the following command: `service.bat install`.
    -   A message is displayed stating "Service AppianWeb installed" and a service named "Appian Web Application" is added to the Services Console with a Startup Type setting of `Manual`.

You can now start and stop Tomcat from the Windows Services manager.

Startup and shutdown logs are written to `<APPIAN_HOME>\tomcat\apache-tomcat\bin\startup.log` and `<APPIAN_HOME>\tomcat\apache-tomcat\bin\shutdown.log` when the service starts and stops Tomcat. These logs are written in addition to the logs produced by the application server when Tomcat is not run as a windows service.

## Uninstalling Tomcat as a Windows service

To uninstall the Tomcat Windows Service, complete the following:

1.  Open a command prompt.
    -   You must run `C:\Windows\System32\cmd.exe` as **Administrator**.
2.  Change directories to the `<APPIAN_HOME>\tomcat\apache-tomcat\bin` directory.
3.  Type the following command: `service.bat uninstall`
    -   A message is displayed stating "Service AppianWeb removed" and the service named "Appian Web Application" is removed.

## Installing Engines as a Windows service

The following details how to install the Appian Engines and Search Server as a Windows Service. These steps assume that you have a fully configured installation following the [Windows Installation Guide](Windows_Installation_Guide.html)

### Service installation

1.  Uninstall any existing service installation if a legacy Appian installation exists on the same server.
2.  Setup the service manager password as an environment variable.
    1.  Open Window's **Advanced System Settings**.
        -   Accessing this window varies between Windows OS
    2.  In the System Properties window, click the **Advanced** tab
    3.  Click on the **Environment Variables** button
    4.  Create a new system variable.
        1.  Variable Name: **APPIAN\_SM\_PASSWORD**
        2.  Variable Password: `<SERVICE_MANAGER_PASSWORD>`
    5.  Click **OK** and close the system setting window.
3.  Open a command prompt.
    -   You must have administrator rights on the server to install Appian as a Windows service.
    -   Run the command prompt (`cmd.exe`) as Administrator.
4.  Change directories to `<APPIAN_HOME>\services\bin\win-service\`.
5.  Type **service install** to create the Windows service. The install command creates a Windows service called `Appian Service Manager` with the description `Appian Service Manager and Engines`.
6.  Use the Windows Services management console to start and stop the service.
    -   We recommend [checkpointing the engines](Service_Manager_Scripts.html#checkpoint-script), and confirming checkpoint completion prior to stopping the service.

**Note:**  When the stop command is sent from the management console, the engines stop quickly in order to allow a server shutdown or reboot to occur immediately afterward. This quick-stop shutdown mode is not suitable for subsequently upgrading your Appian installation to a newer version, which requires a shutdown that executes a checkpoint. When shutting down the Appian engines as part of an upgrade, you must run the [stop script](Service_Manager_Scripts.html#stop-script) before stopping the service.

### Service uninstallation

1.  Run the command prompt (`cmd.exe`) as Administrator.
2.  From the `services\bin\win-service\` directory, run **service uninstall** to remove the Windows service.

## Installing search server as a Windows service

To allow the search server to continue to run after the OS user who started it logs out and control starting and stopping from the Windows Service management console, install it as a Windows Service.

Unlike the Appian engines, there are no special considerations regarding checkpointing that need to be considered. The search server will stop immediately when Windows issues the stop command.

See also: [Search Server](Search_Server.html)

### Installation

1.  Open a command prompt
    -   You must have administrator rights on the server to install Appian as a Windows service.
    -   Run the command prompt (`cmd.exe`) as Administrator.
2.  Change directories to `<APPIAN_HOME>\search-server\bin\`.
3.  Type **service install** to create the Windows service. The install command creates a Windows service called `Appian Search` with the description `Appian Search`.
    -   Use the Windows Services management console to start and stop the service.

### Uninstallation

1.  Open a command prompt
    -   You must have administrator rights on the server to install Appian as a Windows service.
    -   Run the command prompt (`cmd.exe`) as Administrator.
2.  From the `<APPIAN_HOME>\search-server\bin\` directory, run **service uninstall** to remove the Windows service.

## Installing data service as a Windows service

To control starting and stopping the data service from the Windows Service management console, install it as a Windows Service. This will allow the data service to continue to run after the OS user who started it logs out. Before installing the data service as a Windows Service, first ensure that Appian engines are set up to [run as a service](Installing_Appian_as_a_Windows_Service.html#installing-engines-as-a-windows-service).

Unlike the Appian engines, there are no special considerations regarding checkpointing that need to be considered. The data service will stop immediately when Windows issues the stop command.

### Install the service

1.  Open a command prompt
    -   You must have administrator rights on the server to install Appian as a Windows service.
    -   Run the command prompt (`cmd.exe`) as Administrator.
2.  Change directories to `<APPIAN_HOME>\data-server\bin\`.
3.  Enter `service install` to create the Windows service. The install command creates a Windows service called **Appian Data Service** with the description **Appian Data Service**.
    -   Use the Windows Services management console to start and stop the service.

### Uninstall the service

1.  Open a command prompt
    -   You must have administrator rights on the server to install Appian as a Windows service.
    -   Run the command prompt (`cmd.exe`) as Administrator.
2.  From the `<APPIAN_HOME>\data-server\bin\` directory, run **service uninstall** to remove the Windows service.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...