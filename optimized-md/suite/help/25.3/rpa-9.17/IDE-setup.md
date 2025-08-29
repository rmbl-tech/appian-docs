---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/IDE-setup.html
original_path: rpa-9.17/IDE-setup.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# IDE Setup

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page covers some options for setting up an integrated development environment (IDE) to develop and debug robotic tasks.

## Eclipse

Visit the [Eclipse website](https://www.eclipse.org/downloads/) to download Eclipse. It is advisable to use the last stable version.

After the Eclipse installer executable has finished downloading, start the installer and follow the instructions. Once the installation is completed, you can now launch Eclipse and make some configurations.

As an example, we will create the workspace directory C:\\software\\eclipse.projects to store your source in a project directory.

In the following steps, we will choose a workspace directory folder where we have decompressed our robotic task code.

Configure the following settings:

1.  In Eclipse, click **Window** then _Preferences_.
2.  Expand the Java item and verify that in **Compiler**, **1.8** is selected in the **Compiler compliance level** menu.

    ![2235080.png](images/2235080.png)

3.  Then, select **Installed JREs** in the menu on the left of the window.
4.  Make sure a JDK is associated. You can add a new definition pointing to the Java directory you just installed and select it here.

    ![2235081.png](images/2235081.png)

5.  Finally, we verify the integration of Maven in Eclipse. Within the **Preferences** window, click and expand **Maven** > **Installations**.
6.  In this menu we will add a new entry pointing to the Maven installation we just made.

![2235176.png](images/2235176.png) ![2235090.png](images/2235090.png)

![2235079.png](images/2235079.png)

## Import a project to Eclipse

After you've [created your Maven project](maven-setup.html#create-the-maven-project), you're ready to import it to Eclipse.

1.  In Eclipse, open the _File_ menu.
2.  Click _Import_ to open the Eclipse import wizard.
3.  In the wizard, choose _Maven>Existing Maven Project_ and click _Next_.
4.  Click _Browse_ to select the Maven project to be imported. In this example, we'll use _robot-developmentguide-first-robot_.
5.  Select the folder where the pom.xml file is located. This folder depends on the path in which the Maven project was previously created.
6.  Click _Finish_ and you will have your project imported to Eclipse.

![951597.png](images/951597.png)

You can see the loaded project in the window _Package Explorer_, with all the necessary dependencies.

![951599.png](images/951599.png)

Among the files of our new project, there is a basic file pom.xml with everything we need to start developing our robotic task.

This file contains the necessary information to include any of the Appian RPA modules available in the platform into the robotic task.

The dependencies with these modules will appear commented and the versions will point to the latest available version of such modules.

The different modules are in continuous improvement and enhancement process, hence the Appian RPA team may release new versions of them over time. The software will be backward compatible in the vast majority of times. Nevertheless, when necessary, the Appian RPA team will also provide the guidelines to adapt the source code, if such compatibility did not exist.

If we observe in the project some errors related to Maven with a text like _Project build error: Non-resolvable parent POM for…_, it is likely to be solved by updating the Maven project.

![951600.png](images/951600.png)

To perform this update, we must go to the project root in Eclipse and press _ALT + F5_, which will request an _Update Maven Project_. When the pop-up window shows up, we can also mark the option _Force Update of Snapshots/Releases_ to be even more sure.

![951601.png](images/951601.png)

## IntelliJ

You can [download IntelliJ IDEA](https://www.jetbrains.com/idea/download) from the JetBrains website. Once the file has finished downloading, launch the installer.

Configure these settings after IntelliJ is installed:

1.  In IntelliJ, click **Settings/Preferences**.
2.  Click **Languages and Framework > JavaScript**.
3.  In the list, select **JavaScript 1.8.5**.

Next, associate a JDK:

1.  Click **File > Project Structure**.
2.  Under **Project Settings**, click **Project**.
3.  In the **Project SDK** area, click **New** and choose **JDK**.
4.  Select the location of your JDK and click **OK**.

### Import a project to IntelliJ

1.  In IntelliJ, open the **File** menu.
2.  Click **Open**.
3.  In the window, select the pom.xml file of the Maven project.
4.  Click **OK**.
5.  In the next window, click **Open as Project**.

IntelliJ will automatically sync the Maven project. Additional information about [Maven import settings](https://www.jetbrains.com/help/idea/maven-importing.html) can be found at the JetBrains website.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...