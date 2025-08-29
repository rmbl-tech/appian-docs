---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/development-environment-overview.html
original_path: rpa-9.17/development-environment-overview.html
version: "25.3"
title: "Custom Code Development"
page_id: "rpa-9.17/development-environment-overview"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Custom Code Development

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Note:**  Starting with RPA 9.12, agents must use Java 17. Upgrade to Java 17 immediately to keep RPA running smoothly. All low-code actions in Appian RPA are backward compatible, but check the compatibility of any custom actions. For complete information, review the [Java 17 Upgrade Guidance](java17-upgrade-guidance.html).

## Overview

Appian RPA provides everything developers need for customizing, setting up, and deploying robotic tasks tailored to your business needs. However, if you need to extend RPA, this page describes the steps for setting up your local development environment so all components are communicating properly.

Robotic tasks are comprised of Java code. The Java code works behind the scenes to power the robotic task. Appian RPA provides pre-defined Java artifacts called [low code actions](rpa-modules.html) that are stored in the RPA repository. If you need to extend RPA and you are a Java developer, you can write your own Java code locally and use Maven to deploy your code to the RPA repository. Then you can use both your custom artifacts and pre-defined low code actions in robotic tasks.

When a robotic task runs, the orchestration server retrieves the Java artifacts that the robotic task needs and assigns the robotic task to a robot for execution. The agent on the host machine is constantly polling the orchestration server and will see this new assignment. The robot collects the artifacts it needs for the robotic task from the orchestration server and executes each action.

This diagram demonstrates how custom Java artifacts developed by a remote developer are incorporated into Appian RPA:

[![rpa-custom-dev.png](images/rpa-custom-dev.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1359)

[![](images/rpa-custom-dev.png)](#_)

## Prerequisite skills

Appian RPA's robotic tasks are written in Java, so you need some knowledge of general programming and Java to develop robotic tasks. We also recommend that you're familiar with the technologies and techniques most frequently used in Java programming. To manage your Java code, we recommend using a version control system like [Git](https://www.git-scm.com/).

We also highly recommend that you have some experience working in an integrated development environment (IDE) like Eclipse or IntelliJ or, at least, a code editor. To package and deploy robotic tasks, you need some knowledge of Maven commands.

## Appian RPA Overview

Familiarize yourself with [Appian RPA's architecture](new-to-rpa.html) to understand how components integrate and communicate with each other. To get the most out of this page, we recommend you have some knowledge of [Appian RPA terms and concepts](rpa-glossary.html).

Each robotic task runs under the strictest security protocols, using encrypted communications (SSL) and protecting resources by using profiles and permissions.

Learn more about the [Appian RPA Console](how-to-navigate-console.html).

Learn more about [how to set up and use robots](robots.html).

Learn more about [how to set up and use an agent](agents.html).

## Development environment

Appian recommends the following development environment for creating custom low-code actions:

-   Java 17. Learn how to [set up JDK using Configurator](configurator.html).
-   Maven 3.0.0 or higher. Learn how to [setup Maven for Appian RPA](maven-setup.html).
-   An IDE such as IntelliJ or Eclipse Luna or higher. Learn how to [import the project to your IDE](IDE-setup.html).

To properly deploy code and test robotic tasks, you'll also need to access the repository and identify robots.

### Code repository

You will use Maven to store robotic task artifacts in your integrated development environment (IDE). As you develop robotic task code, you'll [deploy your changes](deploying-code.html) to the Appian RPA repository.

The RPA repository is an essential component because the necessary dependencies to develop and operate your robotic tasks are stored there. You will deploy your robotic task to this repository when it's finished, making it available to Appian RPA and enabling it to be managed or sent to the agent to run on the robot.

You can find your Maven API key from the Appian RPA console. Click **Settings > Refresh Maven Key** and copy the value. Note that this is the only time you'll be able to view and copy this specific key.

### RPA development machine

In Appian RPA, you deploy, configure, and execute robotic tasks on one or several robots, which is made up of a host machine and an agent. A host machine is a physical or virtual machine where robots run robotic tasks. As you set up your development environment, it can be helpful for you to also identify the environments where you'll develop, test, and ultimately deploy your robotic tasks.

Although you could use the same machine to develop and execute robotic tasks, it is recommended that the host machine where the robotic task code is written is different from the host machine that the robotic task runs on. The robotic task interacts with the keyboard, mouse, and clipboard in the same way as a human user would, making it more difficult to debug the robotic task if it runs on the development environment. Having a separate robot for testing executions allows you to observe the execution and debug from your development environment more easily.

Appian RPA is compatible with the main virtualization systems, such as Citrix, VMware or VirtualBox.

## Check your environment

Before you get started, check that your environment is set up appropriately. Below, we'll check the Java JDK version, as well as the Maven version and its integration in Eclipse.

### Java JDK

As already noted, regardless of what operating system runs in the machine in which your robots will execute, any environment with Java version 17 or higher installed will be enough for you to develop your robotic tasks.

1.  Open the terminal.
2.  Enter the command `javac -version`.
3.  If your Java JDK version meets the requirements (version 17 or higher), you're good to go. If your version isn't correct, refer to the [Configurator](configurator.html) topic to learn how to fix it.

You might find that javac is not available in the _Path_ system's environment variable. In such case, you should use the command `java --version` instead, provided you have a JDK installed. Alternatively, you can navigate to the JDK installation folder and locate the javac executable file.

### Maven

To check your Maven version, enter the command `mvn --version`.

This command shows information about the Maven version and what Java version you have installed, and their paths, as well as other information about the operating system.

### Eclipse

Verify that Eclipse is properly integrated and set up with Java and Maven:

1.  In Eclipse, click **Window > Preferences**.
2.  Find the **Java** item and check the **Compiler** subsection. You should see in **Compiler compliance level** that **17** is selected.
3.  Click **Installed JREs** and check that the Java 17 JDK is set up.

Now let's check the Maven integration in Eclipse:

1.  In the **Preferences** window, click **Maven**.
2.  Go to the **Installations** section to check that **Maven 3** is selected and configured.

It is important that the proper version (3.0 or higher) and the proper installation folder of Maven are set up. In the example above, the installation folder is /usr/share/maven.

## Get developing!

With your environment set up and configured, you're ready to get started developing robotic tasks in Appian RPA.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...