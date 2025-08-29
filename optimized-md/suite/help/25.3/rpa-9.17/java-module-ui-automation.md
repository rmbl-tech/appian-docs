---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/java-module-ui-automation.html
original_path: rpa-9.17/java-module-ui-automation.html
version: "25.3"
title: "UI Automation Java Module"
page_id: "rpa-9.17/java-module-ui-automation"
section: "Prerequisites"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# UI Automation Java Module

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

The Appian RPA platform allows you to use automation techniques like [Microsoft UI Automation](https://docs.microsoft.com/en-us/windows/desktop/winauto/entry-uiauto-win32).

Microsoft UI Automation is an accessibility framework for Windows applications. It is typically applied to assistive technologies, such as screen readers, but it can be used in Appian RPA to detect the attributes of elements on a screen and then act on them.

This page describes how to integrate Windows UI methods into your robotic task using the Java module. See the [low-code Windows Automation module](actions-windows-automation.html) page for guidance in an easier and more robust development experience.

The Appian RPA API includes a component called [ui-automation](https://github.com/mmarquee/ui-automation), which allows you to use the Microsoft UI Automation framework from Java.

To use this module, you need to declare dependencies in the `pom.xml`:

```
1
2
3
4
5
<dependency>
    <groupId>com.novayre.jidoka.module</groupId>
    <artifactId>jidoka-ui-automation-api</artifactId>
    <version>7.7.0</version>
</dependency>
```

## Prerequisites

### Use a Windows machine

To use this framework, you must use a Windows system. According to Microsoft, this framework should run on almost all versions of Windows, from XP onwards. Appian has verified its use in systems based on Windows 7 and Windows 10.

### Install an inspection tool

When automating an application, you need to know how to reference the components of the user interface, such as the text fields, buttons, checkboxes, and lists. To easily identify the components of the interface, Appian recommends using an accessibility development tool such as [Accessibility Insights](https://accessibilityinsights.io/).

You can use Accessibility Insights to inspect elements on your screen to view their properties. These properties allow the UI Automation framework to locate elements on a window. The properties you need for your robotic task will vary depending on the application you are trying to automate. Common properties used in robotic tasks include:

-   Automation ID
-   Name
-   ClassName
-   ControlType

![8028212.png](images/8028212.png)

## Using the UI Automation framework

The core interface of the Appian RPA UI Automation module is `com.novayre.jidoka.uiAutomation.api.IJidokaUIAutomation`. This interface provides the methods to interact with applications on Windows environments.

### Open an application

You can open an application using the _openApplication_ method and specifying the name of the application executable. If the application is already running on the host machine, this method can open another instance or attach to a previously running instance. If the method isn't able to locate the application using the executable, you can also specify the _windowTitle_ as an additional way to ensure the application opens.

Windows applications available from the paths specified in the environment variable `%PATH%` are callable by their name. Otherwise, the whole path of the application must be provided to run it.

If an application doesn't allow more than one instance at the same time, the `attach` parameter is ignored. Any number of calls to open the application will produce only one instance.

When the application opens, there is a short wait to check that a window with the specified title is found.

#### Example

```
1
2
3
4
5
6
7
String executable = "notepad.exe"; // required if not intending to attach to a running instance
String attachName = "notepad.exe"; // useful if the application is already running and you want to attach to it
boolean shouldAttach = true; // if true, will only use the attach name to find the application. if false, will use the executable name
String windowTitle = "Untitled - Notepad"; // sometimes the framework has trouble identifying if the application successfully opened. Can provide this additional information to tell the automation that application is opened if it can find a window title with this name
int timeoutMillis = 60 * 1000; // how long to wait for an application to be fully opened

uiAutomation.openApplication(executable, attachName, shouldAttach, windowTitle, timeout)
```

### Close an application

You can close an application using the _closeApplication_ method. Specify the process name or reference the currently active window to determine the application to close. Closing an application is almost instantaneous. If multiple instances of the same application are open, only the first found instance is closed. Additionally, if a `processName` is not given, then the currently active application is closed.

#### Example

```
1
2
3
4
5
6
7
String processName = "notepad.exe";
boolean throwExceptionIfError = true; // This will throw a JidokaUiAutomationCloseAppException if a problem is encountered closing the application
uiAutomation.closeApplication(processName, throwExceptionIfError);

String processName = null; // Having a null or empty process name will make the module close the active application that's in the foreground
boolean throwExceptionIfError = false; // This will catch and swallow any excepted exception thrown by the method
uiAutomation.closeApplication(processName, throwExceptionIfError);
```

### Search for elements on the screen

The [UI Automation project](https://github.com/mmarquee/ui-automation/tree/master/docs) describes multiple methods to search for elements in the user interface. In the GitHub project, refer to the _Element Discovery_ page for more information.

In the context of this module, _control_ and _element_ are used interchangeably. The search methods in the Appian UI Automation module supplement the existing methods and provide additional search capabilities.

If no matching control or element is found, the method throws an exception. However, you can choose to have this method return a null value instead.

#### Example

The following code shoes how to use _searchControl_ in Notepad to find an `Edit` control type with the name `Text Editor`. If more than one control is found, the method fails.

```
1
2
3
4
5
6
7
// Find an existing element (Notepad has to be opened)
	Builder builder = SearchCriteria.builder();
	builder.build();
	builder.withClassName("Edit").withName("Text Editor").failIfMultiple(false);
	SearchCriteria sc = builder.build();
	Element control = jidokaUIAutomation.searchControl(sc);
	server.info("Control name:" + control.getName());
```

### Wait for a control

The _waitForControl_ method is similar to other _waitFor_ methods, in this case waiting for a control or element to be present on the screen or in the search area context.

#### Example

The following code shoes how to use _waitForControl_ in Notepad to find an `Edit` control type with the name `Text Editor`. If more than one control is found, the method fails.

```
1
2
3
4
5
6
7
// Find an existing element (Notepad has to be opened)
	Builder builder = SearchCriteria.builder();
	builder.build();
	builder.withClassName("Edit").withName("Text Editor").failIfMultiple(false);
	SearchCriteria sc = builder.build();
	Element control = jidokaUIAutomation.waitForControl(sc);
	server.info("Control name:" + control.getName());
```

### Check if a control is present

The _isControlPresent_ method searches for a control or element on the screen or in the search area context without waiting.

#### Example

The following code shoes how to use _isControlPresent_ in Notepad to find an `Edit` control type with the name `Text Editor`. If more than one control is found, the method returns `false`.

```
1
2
3
4
5
6
7
	// Find an existing element (Notepad has to be opened)
	Builder builder = SearchCriteria.builder();
	builder.build();
	builder.withClassName("Edit").withName("Text Editor").failIfMultiple(false);
	SearchCriteria sc = builder.build();
	Element control = jidokaUIAutomation.isControlPresent(sc);
	server.info("Control name:" + control.getName());
```

## Related Examples

See the [UI Automation Template](template-robot-uiautomation.html) for steps to create your own robotic task that can automate the Calculator application on a Windows machine.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...