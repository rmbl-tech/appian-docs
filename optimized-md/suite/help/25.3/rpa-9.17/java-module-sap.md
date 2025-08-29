---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/java-module-sap.html
original_path: rpa-9.17/java-module-sap.html
version: "25.3"
title: "SAP Java Module"
page_id: "rpa-9.17/java-module-sap"
section: "Module components"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# SAP Java Module

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

The SAP module allows your robotic tasks to interact with SAP applications. The robotic task will utilize the components of the SAP Graphical User Interface (GUI) in order to complete actions or obtain information.

To work with your SAP applications, you will need to set up your robot to work with SAP GUI Scripting. SAP GUI Scripting is an automation interface that enhances the capabilities of SAP GUI for Windows and Java. You will utilize an element inspector tool to create methods around these SAP elements.

## Module components

The following diagram illustrates the components of SAP GUI. Each of these components has a corresponding object in the SAP module. For more information about the SAP GUI components and their hierarchy, see the [SAP GUI Scripting API help](https://help.sap.com/viewer/b47d018c3b9b45e897faf66a6c0885a8/760.00/en-US).

![2235419.png](images/2235419.png)

-   **GuiApplication**: Represents the process where all SAP GUI activities occur. There can only be one GuiApplication object instantiated. The _ISap.getInstance(IRobot robot)_ method instantiates this object in the robotic task.
-   **GuiConnection**: Represents the connection between SAP GUI and an application server. An instance of GuiApplication accepts one or more connections from a GuiConnection to the SAP systems available for scripting.
-   **GuiSession**: Each instance of GuiSession corresponds to a new session in SAP. GuiSession contains at least one instance of GuiMainWindow.
-   **GuiMainWindow**: This instance is the entry point for interaction between the Appian robotic task and the SAP GUI windows. The elements inside a GuiMainWindow are listed below.
    -   GuiMenuBar (window's menu bar)
    -   GuiToolBar (window's tool bar)
    -   GuiTitleBar (window's title bar)
    -   GuiUserArea (window's user area)
    -   GuiStatusBar (window's status bar)

![2235435.png](images/2235435.png)

You can get instances of these objects from the methods provided by the GuiMainWindow class:

```
1
2
3
4
5
6
7
8
IGuiSession guiSession = sap.getConnection().getOpenSessions().get(0);

GuiMainWindow activeWindow = (GuiMainWindow) guiSession.getActiveWindow();

GuiMenuBar menuBar = activeWindow.getMenuBar();
GuiToolBar toolBar = activeWindow.getToolBar();
GuiUserArea userArea = activeWindow.getUserArea();
GuiStatusBar statusBar = activeWindow.getStatusBar();
```

For more information on interacting with GuiApplication, GuiConnection, and GuiSession in the SAP module, see the `com.novayre.jidoka.sap.api` package in the Javadocs. For more information on interacting with GuiMainWindow, see the `com.novayre.jidoka.sap.api.window` package in the Javadocs.

## Prerequisites

To use the SAP module, ensure you complete the following prerequisites:

-   [Include the module dependency](develop-java.html#add-dependencies) in the pom.xml.
-   [Set up your robot](#set-up-your-robot)
-   [Enable SAP GUI Scripting in SAP](#enable-sap-gui-scripting-in-sap)
-   [Download the Tracker tool](#download-the-tracker-tool)

### Set up your robot

Your SAP version might affect what JRE you can use on your host machine:

-   SAP GUI 7.50 or newer should use 64-bit JRE
-   SAP GUI older than 7.50 should use 32-bit JRE. To use a 32-bit JRE, set it as the default JRE on the host machine or generate the Appian RPA agent to use a JRE located in a specific directory.

Additionally, the file `jacob-1.18-x86.dll` or `jacob-1.18-x64.dll` must be in the same directory as the Appian RPA agent executable (`jidoka.exe`). The `.dll` file is copied by the Appian RPA agent to the corresponding directory the first time the robot performs the robotic task.

### Enable SAP GUI Scripting in SAP

To interact with SAP, you need to utilize SAP GUI Scripting. After setting up your robot, enable SAP GUI Scripting on the server.

1.  Open the RZ11 transaction.
2.  In the **Profile parameters maintenance** window, enter **sapgui/user\_scripting** and click **Display**.
3.  Click **Change Value**.
4.  In the **New Value** field, enter **TRUE**.
5.  Click **Save Change**. The **Current Value** should now be **TRUE**.

If SAP GUI Scripting is not active on the server, initializing the SAP module on the platform will throw a SapFatalException.

### Download the Tracker tool

To interact with an element on an SAP window, you will need to know its type and unique identifier. To identify this information, download the [Tracker](https://tracker.stschnell.de/) tool. This tool allows you to inspect the SAP GUI elements.

## Using the SAP module

To begin using the SAP module, connect the SAP module to an open application. Due to security restrictions, SAP GUI Scripting can't control the first opened window. You have to open SAP GUI and select the target system using other methods in the Appian RPA API.

**Note:**  The first time you run the SAP module, you must run it as an administrator in order to configure the items below. After, you will need to restart the Appian RPA agent to load the `.dll` file.

-   Enable 64-bit JRE (if required)
-   Enable SAP GUI Scripting on the client
-   Uncheck the SAP GUI option so that it does not request permission to control the SAP session using a remote script.

### Initializing the SAP module

To initialize the SAP module, you must first open SAP GUI. To open SAP GUI, you need to start a Windows process and execute the `saplogon.exe`.

Use the _ProcessBuilder_ object to start a Windows process. Within the object, call the executable file defined in the _SapConstants.App.SAP\_EXECUTABLE_ constant. By default, the installation path in Windows 7 is `C:\\Program Files(x86)\\SAP\\FrontEnd\\SAPgui\\saplogon.exe`.

After opening SAP GUI, use the keyboard to enter the name of the SAP system. This will prompt the SAP login window. From this window, the robotic task can begin to take over the application.

To connect the SAP module instance to the open application, execute the following code snippet:

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
          // Instantiate the SAP module if you haven't done so before
            if (sap == null) {
                sap = ISap.getInstance(this);

            }
            // Appian RPA SAP Module initialization
            if (!sap.isInitialized()) {
                sap.init();
            }
```

Below is an example of a complete SAP initialization:

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
 /** The Appian RPA SAP module. */
    private IGuiApplication sap;

    /**
     * SAP open action.
     *
     * @throws JidokaException the jidoka exception
     */
    public void sapOpen() throws JidokaException {

        Path sapPath = Paths.get(SapConstants.App.SAP_EXECUTABLE_PATH, SapConstants.App.SAP_EXECUTABLE);

        // open SAP logon window
        ProcessBuilder pb = new ProcessBuilder(sapPath.toString());

        try {

            pb.start();
            // Wait for the initial window title (For example 'SAP Logon 750')
            waitFor.window(30, true, true, SapConstants.Titles.SAP_LOGON_WINDOW_TITLE);

            server.info("SAP application opened");

            // Type the SAP connection name and press the key "Enter". In this example we use 'SAP Demo'
            keyboard.type(SAP_CONNECTION).pause(1000).enter();
            waitFor.window(SapConstants.Timeouts.MEDIUM_WAIT, true, SapConstants.Titles.SAP_LOGON_WINDOW_TITLE_FIRST);
            server.info("Connected to: " + SAP_CONNECTION);

            // Instantiate the SAP module if it wasn't done before
            if (sap == null) {
                sap = ISap.getInstance(this);
            }

            // Appian RPA SAP Module initialization
            if (!sap.isInitialized()) {
                sap.init();
            }

            GuiMainWindow win = (GuiMainWindow) sap.getCurrentSession().getActiveWindow();

            win.iconify();
            win.maximize();

            windows.pause(2000);

            server.info("Initializing Appian RPA SAP module");

        } catch (IOException | JidokaUnsatisfiedConditionException e) {
            throw new JidokaException("SAP could not be opened: " + e.getMessage(), e);
        }
    }
```

Once the SAP module is initialized, locate the type and unique identifier of elements on the SAP window so you can reference them in your robotic task.

### Identifying SAP elements

To identify the elements on your SAP window, open the Tracker tool. The Tracker tool displays a tree, known as a component tree, with all SAP sessions and its scripting objects. When you select an element from the tree, you can view more detailed information about the element, such as its ID, type, and text.

Each component tree begins with an SAP window. For example, if you have an SAP window with an open transaction and a pop-window, you will see two component trees in the Tracker beginning with an SAP window: `/app/con[0]/ses[0]/wnd[0] and /app/con[0]/ses[0]/wnd[1]`.

![2235455.png](images/2235455.png)

When you open the SAP window component of the tree, you will see an acronym for each area of an SAP window.

![2235465.png](images/2235465.png)

They provide access to the following elements:

-   **mbar**: The menu bar, represented in the API as the _GuiMenuBar_ class.
-   **tbar\[0\] / tbar\[1\]**: The tool bar, represented in the API as the _GuiToolBar_ class. In this case we see that there are two elements "tbar", with indices \[0\] and \[1\] in the name. This means that more than one element can be present at this level, i.e., an SAP window can contain more than one tool bar.
-   **titl**: The title, represented in the API as the _GuiTitleBar_ class.
-   **usr**: The user area, represented in the API as the _GuiUserArea_ class. This contains the main elements of the window, like text fields, buttons, labels, tables, etc.
-   **sbar**: The status bar, represented in the API as the _GuiStatusBar_ class.

By default, the Tracker will inspect the elements of the active SAP session. To see all available windows, go to the menu and click **Tools** > **Scan** to scan scripting objects of all sessions.

### Referencing SAP elements

Once you've obtained an element's type and unique identifier, use the _findById()_ method to reference the element in your robotic task. This method is available in the _GuiVContainer_ class and returns an instance of _GuiComponent_ by its ID.

To use this method, first use the Tracker tool to identify the element's information. For example, a Tracker is inspecting an element on the following SAP window. In the Tracker, the second tab is selected in the component tree.

![2235457.png](images/2235457.png)

![2235458.png](images/2235458.png)

Based on the Tracker, you can see the tab is located inside the user area as well as the element's information:

-   **ID**: `/app/con[0]/ses[0]/wnd[0]/usr/tabsMENU_TABSTRIP/tabpTAB02`
-   **Type**: GuiTab

To reference the element in your robotic task, you must first call _GuiMainWindow_ since this is the entry point for interaction between the robotic task and the SAP GUI window.

You know that the element is in the user area, so you need to obtain the _GuiUserArea_ instance of the active window. After, use the _findById()_ method of the _GuiUserArea_ instance and the element's ID to locate the element.

The ID obtained from the Tracker is an absolute path, however, you only need the relative path to locate the element. Additionally, since the method returns a _GuiComponent_ instance, you can use the _GuiTab_ instance since all elements on an SAP window's user interface extend this class.

```
1
2
3
4
5
GuiFrameWindow activeWindow = sap.getCurrentSession().getActiveWindow();

GuiUserArea userArea = activeWindow.getUserArea();
GuiTab tab2 = userArea.findById("tabsMENU_TABSTRIP/tabpTAB02");
tab2.select();
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...