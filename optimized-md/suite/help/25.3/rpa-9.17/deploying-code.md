---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/deploying-code.html
original_path: rpa-9.17/deploying-code.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Deploying Code

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Appian RPA robotic tasks are powered by Java code contained in a central repository. As you create or modify libraries, you'll need to deploy your changes for the updates to appear in the Appian RPA Console. Since you cannot directly access the source code stored in the central repository, it's recommended to use a version control system like [Git](https://www.git-scm.com/) to manage your Java code.

This page describes the steps you need to take to deploy code.

## Configuration in Appian RPA Console

Administrators can find repository configuration settings through the Appian RPA Console.

1.  Click **Settings > Configuration**
2.  In the Tools configuration area, you'll find these fields related to your repository:
    -   Default repository
    -   Default repository username
    -   Default repository password

These fields are automatically populated for your environment and shouldn't need to be changed. If you change these values, robotic task executions may fail because the source code won't be accessible by robots.

## Compile and deploy the project in Eclipse

For a given method or library, you'll need to deploy the code's binary file to the repository for updates to appear in the console.

When you're ready to deploy, you'll need to compile, package and deploy the Maven project as robot binaries, using the utilities provided by Maven and Eclipse.

We are going to create a "Maven Build" configuration:

1.  Open the **Run** menu.
2.  Click **Run Configurations**.
3.  Right click on **Maven Build** and select the option **New**.
4.  A window then appears in which we must complete the information:
    -   **Name**: robot-tutorial.build
    -   **Base directory**: Select _Workspace_ and select the project directory.
    -   **Goals**: clean deploy
    -   **User settings**: The default file will appear as ${user.home}/.m2/settings.xml, the one we configured previously. ![2235158.png](images/2235158.png)
5.  With this configuration, press the **Run** button to compile the project.
6.  After downloading all the dependencies and compiling the Java file, the result should appear as follows: ![2235157.png](images/2235157.png)
7.  Once finished, the binary deployed to the repository and is ready to be used in the Appian RPA Console.

## Deploy using IntelliJ

If you're using IntelliJ, click **Clean** and then click **deploy** in the Maven menu to deploy the changes. Maven will auto-push to the repository using the credentials stored in your settings.xml file.

Note: If you prefer, you can deploy using the command line. Navigate to your robotic task folder and run the command `mvn clean deploy` to push the binaries.

## Deploying your robotic task

Follow the steps as described on [Deploy Robotic Tasks and Apps](deploying-apps-rps.html). Java developers should note:

-   If the robotic task uses Java, Appian RPA packages all private Maven dependencies in the export file. However, the export package won't include dependencies from Maven Central.
-   Before you deploy the robotic task to the target environment, update your local Maven settings to enable pushing source code from your local environment to new target environment.
    -   Create a new profile in pom.xml for the new environment.
    -   Add repository credentials for the new environment to the .m2 file and reference the new profile you created.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...