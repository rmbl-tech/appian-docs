---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/develop-java.html
original_path: rpa-9.17/develop-java.html
version: "25.3"
title: "Developing with Java"
page_id: "rpa-9.17/develop-java"
section: "Robotic task source code"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Developing with Java

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Tip:**  You can find the complete Javadoc documentation in the Appian RPA console. Click **Help > Javadoc** in the console menu.

## Robotic task source code

**Required role:** [Developer or Administrator](learn-user-settings.html#rpa-roles)

When you create an Appian RPA robotic task, the ZIP file of the source code automatically downloads to your computer. In addition, the [Maven](maven-setup.html) project automatically deploys in the repository.

Copy the downloaded file into the folder where you will develop the robotic task.

A robotic task's source code uses this structure:

-   _Robotic task name_ (top-level folder)
    -   `pom.xml` (contains robotic task information and configuration details Maven needs to build properly)
    -   _src_
        -   _main_
            -   _java_
                -   _com_
                    -   _appian_
                        -   _robot_
                            -   _core_
                                -   _template_
                                    -   `Template.java`

The source code looks like this in your computer's file system:

![rpa-file-structure.png](images/rpa-file-structure.png)

## Java modules

Appian RPA's Java modules are collections of interfaces, classes, and methods that developers can use in their code. These modules are designed for more experienced Java developers. These modules are organized based on common use cases, notably regarding the software a robotic task interacts with.

**Note:**  [Low-code modules](rpa-modules.html) are available for faster and more robust development.

The following modules are available in Appian RPA and are included in the `jidoka` packages listed in parentheses:

-   [**Appian Services**](java-module-appian-services.html) (`jidoka-client-api-appian`): Contains methods for common actions interacting with Appian applications, such as calling web APIs, uploading documents, and downloading documents.
-   [**Client**](java-module-client.html) (`jidoka-client-api`): Available for every robot and provides the basic interfaces and classes needed to develop a robotic task. The interface `IRobot` is part of this module.
-   [**Browser**](java-module-browser.html) (`jidoka-browser-api`): Enables the robotic task to navigate and interact with web browsers.
-   [**Falcon**](java-module-falcon.html) (`jidoka-falcon-api`): Enables image processing and image recognition.
-   [**Data-provider**](java-module-data-provider.html) (`jidoka-data-provider-api`): Enables access to different data providers, such as Excel and ZIP files and folders.
-   [**MS Outlook**](java-module-ms-outlook.html) (`jidoka-msoutlook-api`): Allows for easier handling in Outlook. This module uses Jacob to communicate with COM libraries provided by Outlook.
-   [**SAP**](java-module-sap.html) (`jidoka-sap-api`): Provides access to the available objects in SAP using SAP GUI Scripting.
-   [**UI Automation**](java-module-ui-automation.html) (included in `jidoka-client-api`): Utilize the UI-Automation framework to allow Windows applications to provide and consume information about a user interface (UI).

For a list of all methods included in each module, consult the Javadocs in the Appian RPA Console. In the console, click **Help > Javadoc** in the left menu.

### Add dependencies

Appian RPA allows you to extend functionality by creating your own _Maven_ projects and referencing default modules. The projects will end as `.jar` files in the repository, also known as _Maven dependencies_. The repository is where Appian RPA code and artifacts are stored. Developers deploy code to the repository when they develop or modify custom code. During an execution, this code is deployed to the robot.

To use a module in your robotic task, you must include its dependency in the `pom.xml`.

```
1
2
3
4
5
<dependency>
    <groupId>com.novayre.jidoka.module</groupId>
    <artifactId>package.name</artifactId>
    <version>${jidoka.version}</version>
</dependency>
```

Modify the following values:

-   `package.name` is the name of the package that contains the specific module. For example, to add a dependency for the Browser module, it would be `jidoka-browser-api`. See the list above for the package name associated with each module.
-   `${jidoka.version}` specifies the module's current version, which you can find in the following area:

    ```
    1
    2
    3
    <properties>
        <jidoka.version>X.Y.Z</jidoka.version>
    </properties>
    ```

Another way to extend module functionalities is by creating **workflow libraries**. [Learn more about libraries](../libraries.html).

### Using Java methods

For instances where you can't use low-code actions, you can also use robotic task variables in Java using the _getWorkflowVariables()_ method of the _IJidokaServer_ instance. This method returns a list of robotic task variables referenced in the workflow.

After retrieving the list of variables, you can then use the _IRobotVariable_ interface to retrieve and modify the information about individual variables.

**Note:**  You cannot update a variable's CDT value from the source code. To update a field in a CDT, you must use a low-code module.

For example:

```
1
2
3
4
5
6
7
8
//Gets the map of workflow variables containing those defined on the configuration page
Map<String, IRobotVariable> variables = server.getWorkflowVariables();

// Gets the variable called "var1"
IRobotVariable rv = variables.get("var1");

// Updates the value of var1 to the current value of item
rv.setValue(item);
```

To retrieve parameterized variables in your source code, use the _getWorkflowParameters()_ method in the server instance. This method returns a list of parameterized variables defined in the console. The parameterized variables are also represented as _IRobotVariable_.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...