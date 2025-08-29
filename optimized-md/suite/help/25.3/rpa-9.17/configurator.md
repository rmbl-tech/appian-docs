---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/configurator.html
original_path: rpa-9.17/configurator.html
version: "25.3"
title: "Guided Setup with Configurator"
page_id: "rpa-9.17/configurator"
section: "Starting Configurator"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Guided Setup with Configurator

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Configurator is a tool in Appian RPA that guides you to set up your computer as a development environment to build robotic tasks. Configurator checks that the computer has the necessary software and configuration to develop robotic tasks with Appian RPA. If any element is not present, the tool will guide you to configure it.

The tool helps you with these tasks:

-   Setting the JAVA\_HOME environment variable.
-   Installing Maven.
-   Setting up the settings.xml configuration file in Maven.
-   Installing Java Development Kit, or selecting the folder where it already exists.

This page describes each step in setup using Configurator. During setup, click **Next** any time the result of the check is successful. Each section describes the actions to perform if a check is unsuccessful (red button) to help you troubleshoot.

## Starting Configurator

Download the **Configurator** from the **Robotic tasks** tab in the Appian RPA Console.

![rpa-configurator-icon.png](images/rpa-configurator-icon.png)

If you don't have access to the Console or your repository, contact your Appian RPA administrator before you continue with this guide.

Once the application AppianRPA-configurator.exe has been downloaded, open it to begin installation.

### Java installation

Java must be installed on your computer. If it isn't, you'll see a pop-up message to alert you. Click **Accept** to be redirected to the Oracle website to install Java.

![2235006.png](images/2235006.png)

Once Java Development Kit (JDK) is installed, you can restart the Configurator.

## Java Development Kit

To compile robotic tasks, the computer where we're developing needs to have **JDK 1.8** or higher installed. If Java SE was already installed, but JDK wasn't, the Configurator suggests two options:

1.  **Download and install it**: You will be redirected to the Oracle website to proceed as in the previous step.
2.  **Select folder manually**: If a JDK is already installed, you can manually select the installation folder.

![configurator-jdk-missing.png](images/configurator-jdk-missing.png)

Once the JDK is installed, click **Retry after installation** to check again.

If a JDK is installed, the Configurator will display a message showing the installation folder.

![config-1.png](images/config-1.png)

## JAVA\_HOME Variable

In the development environment, it is important to make sure that the `JAVA_HOME` variable is set to point to the installation location.

If it is not defined, click **Define and Continue** so the Configurator defines the variable.

![config-2.png](images/config-2.png)

## Maven

Maven is a software tool you'll use to compile, package, and deploy Java artifacts. Appian RPA uses Maven as a link between the robotic task code and the execution resource to deploy artifacts and make them available to the agent on the execution resource.

If Maven is not installed, the Configurator suggests two options:

1.  Download Maven.
2.  Select folder manually: If you know that Maven is already installed on the computer, you can manually select the installation folder. In this case, the Maven version must be **3.0.0** or higher.

![configurator-maven-missing.png](images/configurator-maven-missing.png)

If you choose to download Maven, the installation will be done automatically. All you have to do is to select the installation folder. Once downloaded and installed in the selected folder, you can proceed to the next step.

## Maven Settings

Once Maven is downloaded and properly set up, you'll need to do a little configuration to develop robotic tasks.

Refer to [Maven reference](https://maven.apache.org/settings.html) for more information on configuration settings.

In order for the development environment to be successfully configured, the settings.xml file must be located in the user's folder as follows: `${user.home}/.m2/settings.xml`. This is the user settings. A global settings file also exists, located in the installation folder `${maven.home}/conf/settings.xml`, but it is not taken into account by the Configurator.

If the user settings file is not present, the Configurator will create it. If it already exists, the Configurator will make the required modifications. To do so, click **Fix and continue**.

![configurator-maven-settings-missing.png](images/configurator-maven-settings-missing.png)

Once the settings file is created, the Configurator adds a new entry for you to authenticate to the repository. During this step, the Configurator will ask for our **Repository URL** (the Console repository is listed by default), your **Appian username**, and your **Maven API key**. You can find your Maven API key in the Appian RPA Console. Click **Settings > Refresh Maven Key** and copy the value. Note that this is the only time you'll be able to view and copy this specific key.

![config-5.png](images/config-5.png)

If the URL isn't accurate, the Configurator will ask you to confirm. If the URL is correct, but the API key isn't, the message will prompt you to try again. To check the URL or the API key again, click **Check URL and credentials**.

While this step is being executed, Configurator tries to generate a robotic task from a template supplied by the RPA console. Click **View log** to see progress.

![configurator-maven-checking.png](images/configurator-maven-checking.png)

When this step is finished and no problems come up, the settings.xml file is created with the required configuration. Once all Java and Maven related configuration is complete, click **Finish**.

![configurator-maven-settings-success.png](images/configurator-maven-settings-success.png)

The _settings.xml_ file must contain:

-   A Maven profile (element `<profile>`) pointing at our repository (id `jidoka-repo`).
-   A `<server>` (id `jidoka`) entry with our API key.

The last step to ensure Maven is correctly configured is for Configurator to automatically download a robotic task template from the configured repository. Once the download is complete, access and authentication are validated and confirms you can deploy your robotic tasks successfully.

If the archetype download fails, it means that some configuration step was wrong.

In such a case, contact Appian Support, attaching the whole message displayed by the Configurator, as well as the settings.xml configuration file located in the _.m2_ directory of the user.

**Note:**  Conceal or remove any sensitive information contained in your settings.xml file (such as credentials for other systems) before sharing with any third party, including Appian Support.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...