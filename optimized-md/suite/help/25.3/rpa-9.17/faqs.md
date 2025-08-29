---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/faqs.html
original_path: rpa-9.17/faqs.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# FAQs

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains some frequently asked questions and solutions for Appian RPA.

Additional FAQs are available for Java modules:

-   [Falcon module FAQ](java-module-falcon.html)
-   [Browser module FAQ](java-module-browser.html)
-   [Client module FAQ](java-module-client.html)

If you can't find the solution in the Appian RPA documentation, contact the [Appian support team](https://forum.appian.com/suite/sites/support).

## Installation and configuration

### How can I get RPA connection information?

The Appian team will provide this information when setting up your Appian Cloud site. You can also open a support case to request this information.

### What are the hardware requirements for a development computer?

Our recommendation is to use a computer with 8 GB of RAM. This recommendation is especially relevant where the development machine includes a virtual machine that acts as a robot.

See [System Requirements](rpa-system-requirements.html) for more information.

### Can I have multiple robots with the same agent?

No. Every robot must have a unique agent executable file installed.

See [Agents](./agents.html) for more information.

### Can I build a robotic task with an earlier version of Appian RPA?

We recommend creating robotic tasks using the latest available version of Appian RPA.

The new versions are backward-compatible, meaning you can use robotic tasks developed with previous Appian RPA versions.

Keep in mind that using previous versions will cause you to have fewer capabilities since Appian RPA is continuously evolving to facilitate the development of robotic tasks.

### How can I take action on events in Appian RPA?

Events are triggered by the RPA console, robots, and robotic tasks. All events are aggregated in the RPA console and accessible by system administrators.

To take action for a specific event type, [create an action](how-to-navigate-console.html#actions-and-events) in the RPA console and map it to the desired event type. Additional configuration is available based on the action and event.

For example, you can create an action to send an email to the system administrators when a robot is running out of disk space.

### Is Appian RPA available in a high availability configuration?

Appian RPA is not offered in the Appian Cloud high availability (HA) configuration at this time. However, Appian RPA's availability doesn't affect other features in the HA configuration.

Learn more about [high availability in the Appian Cloud](../High_Availability_for_Appian_Cloud.html).

### Why isn't my RPA agent working when I run my browser in headless mode on Linux?

Appian RPA does not support headless browsers. Ensure you are using a browser that has a graphical user interface (GUI).

## Robotic task development

### Why isn't the host machine's memory usage decreasing when the robotic task ends?

When the RPA agent starts and when robotic tasks are executed, different Java libraries are loaded into memory in the Java Virtual Machine. Because these libraries are reused across the robotic task executions, they are not flagged for garbage collection. Therefore the memory usage does not significantly decrease upon completion of robotic tasks.

To prevent the RPA agent going over its max amount of allocated memory, it's recommended to configure a restart when reaching a certain memory usage percentage. Refer to the question [How can I take action on events in Appian RPA?](#how-can-i-take-action-on-events-in-appian-rpa)

## Run and debug environment

### Can I start the agent as a service in Windows?

No, it is not possible to start the agent as a Windows service. It is recommended to configure the agent to start when Windows starts. See how in the next question.

### Is there any way to configure robots to start automatically when Windows starts?

Yes, it is possible to add `AppianRPAagent.exe` to the start menu, so that when a session begins, the agent also starts.

Additionally, if you don't want Windows to ask for credentials, Windows can be configured with auto-logon. [Read more information about this configuration](https://docs.microsoft.com/en-us/previous-versions/technet-magazine/ee872306\(v=msdn.10\)?redirectedfrom=MSDN).

### How should Windows computers be set up to properly execute robotic tasks?

Robotic tasks require a started and unlocked Windows session to operate correctly. You can allow Appian to unlock the Windows sessions in an automated way for the execution of robotic tasks.

When configured, the agent unlocks the local session when the execution of the robotic task is about to start, and locks back the session after the execution ends.

To configure this option:

1.  Log into the host machine using Windows Remote Desktop Connection, starting a session.
2.  Start the agent with administrator privileges. When the robot is connected to the server, verify in the console's robot detail page that it was initiated with the administrator privileges.
3.  Close the Remote Desktop Connection. At this point, we have a session initiated by Remote Desktop Protocol (RDP) and locked. The robot, while executing with administrator privileges, can unlock the session and run a robotic task. After it finishes, it will lock the session again.

For more information, see the [Agent](agents.html#download-the-agent) and [Robot](manage-robots-installation-config.html#using-a-virtual-machine) pages.

### If the connection between the host machine and the console is interrupted, could the robotic task keep working?

The execution of a robotic task requires both a host machine and a console connection. It is not possible to run robotic tasks without connectivity between the two.

### Can I use JUnit or similar kind of testing framework to automate robotic task testing?

Robotic tasks must be executed inside the RPA platform and framework. As such, a JUnit test framework is not a viable option to unit test robotic tasks.

However, Appian allows robotic task invocation through REST APIs. Invoking robotic tasks with APIs alongside tools like [Postman](https://www.postman.com) can offer an automated test system.

These tests could use unusual inputs, so the robotic task could work in different modes, testing different cases.

### After launching a robotic task, the execution trace keeps waiting for a host machine. The host machine state has been checked and it shows "blocked keys." What's wrong?

This means that the host machine has the Shift Lock key activated, the numeric keyboard blocked, or a key is being pressed. Under these conditions, the console can't execute the robotic task on this host machine.

### My computer is blocked while the robotic task is executing. What's wrong?

If a robotic task does not use the keyboard to enter data or does not move the mouse, the operating system does not register any user activity - even if the robotic task is performing calculation, reading files, etc. As such, the user's session may get locked during the execution.

To prevent the session from locking, it is recommended to use the method `windows.antiScreenSaver()` when an operation can take several minutes to complete before the robotic task performs a key press or a mouse operation.

### I'm having trouble figuring out why my robotic task is failing. What can I do to investigate?

Confirm that the robot is set up properly. Two common problems are [mismatched permissions](./security-rpa.html#assign-or-edit-permissions) or the [agent](./agents.html) isn't running and properly communicating with the Console. Take a look at the [execution log](troubleshoot.html#execution-details) to see where the execution failed. Next time you manually execute a robotic task, [enable screenshots](robotic-task-execution.html#execute-a-robotic-task-manually-in-the-appian-rpa-console) so you can see what's happening with the robot before and when the execution fails.

### Why is my robotic task failing on the second execution?

Confirm that your robotic task code uses the [cleanUp() method](java-module-client.html#reset-the-host-machine-after-execution) to reset the robot's environment after an execution. If the robotic task doesn't clean up after itself, the next execution may encounter conditions it doesn't know how to handle and fail.

### My robotic task is failing because of a web driver. How can I fix it?

Many modern web browsers update automatically, which can cause a robotic task to fail if it's using an older version of the webdriver. You can manually update the web driver to solve the issue. Alternatively, add the webdriver as a support file in the robotic task configuration or as a global support file if more than one robotic task references it.

More on [browser actions](actions-browser.html#browser-module-architecture).

## Data scraping

### Can a robotic task read a PDF?

Robotic tasks do not have specific actions for PDF handling. However, external libraries such as PDFBox can be easily integrated into any robotic task.

Add the dependency in the pom.xml of the project to access the external libraries:

```
1
2
3
4
5
<dependency>
    <groupId>org.apache.pdfbox</groupId>
    <artifactId>pdfbox</artifactId>
    <version>1.8.10</artifact>
</dependency>
```

You could also use [Appian's document extraction features](../Appian_Doc_Extraction.html).

## Security

### What TLS version does Appian RPA use for HTTPS communication between the agent and the console?

Appian RPA uses TLSv1.2, which is the current standard.

### If due to company policies, passwords are required to be changed very often, must the user enter them each time they are modified?

[Credentials](./security-rpa.html#credentials) must be updated in the console each time they are changed in the target application.

## Events

### Can I change the message that is sent by mail when the execution event of a robotic task is triggered or when it ends in an uncontrolled way?

The message can't be changed.

We recommend that the execution trace has the necessary information to know what the robotic task was doing to help show why it failed. It is better that this information is kept in the trace so it can be consulted in the future as a reference and does not depend on the email notification.

### How can I upload several files, or a structure of files and directories, to the robotic task support files?

You can upload a ZIP file and check the "Unzip on server" option (it is checked by default). After uploading a ZIP, the tree of support files will appear as a single file. If we refresh the page, the tree will reflect the real structure.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...