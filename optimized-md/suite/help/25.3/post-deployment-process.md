---
source_url: https://docs.appian.com/suite/help/25.3/post-deployment-process.html
original_path: post-deployment-process.html
version: "25.3"
title: "Configure a Post-Deployment Process"
page_id: "post-deployment-process"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure a Post-Deployment Process

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page is about post-deployment processes in Appian and how to configure them for two common use cases.

A post-deployment process can be specified to automatically run after one of the following supported types of deployments has finished on an environment. From this process, you'll be able to access key information about the relevant deployment.

| Type of Deployment | Runs Post-Deployment Process |
| --- | --- |
| [Compare and Deploy (Direct)](Deploy_to_Target_Environments.html#compare-and-deploy) | Yes |
| [Programmatic via native APIs (External)](Deployment_Rest_API.html) | Yes |
| [Export and import (Manual)](Deploy_to_Target_Environments.html#manual-export-and-import) | No |

**Note:**  The [Automated Deployment Manager](https://community.appian.com/w/the-appian-playbook/198/deployment-automation) plug-in, available on the AppMarket, does **not** run the post-deployment process.

Post-deployment processes provide flexibility, which allows you to automate tasks, leverage third-party tools, and customize your workflow. Automating your post-deployment steps helps you reduce manual tasks and errors.

### How it works

Within each application, Appian allows you to add a process model in the [**Deploy** view](deployments-view.html) that will run after an incoming deployment is completed. You can configure your workflow to trigger actions based on deployment properties. Appian will pass the deployment UUID to the process model which can then be used with [a!deployment()](fnc_system_a_deployment.html) to retrieve deployment properties. Once you add a process model as a post-deployment process for an application, that specific application will become a dependent of the process model. When you import the specific application to a new environment, the process setting is imported as well.

![Post-Deployment Process Deploy view](images/pdp-how-it-works.png)

Below are two examples of common use cases for adding post-deployment processes:

1.  Run expression rule test cases after a successful deployment
2.  Trigger a Jenkins job after a successful deployment

These use cases will demonstrate how to access your deployment information from the process model and build your workflow.

## Run expression rule test cases

Appian recommends running expression rule test cases before and after you deploy changes to your application. A post-deployment process will automate this task every time so that you don’t need to manually run them.

### Create a process model

To run test cases after an incoming deployment is finished, we will create a simple process model that kicks off test cases for all expression rules in the corresponding application. The process will use `a!deployment()` to retrieve deployment information and the [Start Rule Tests (Applications) smart service](Start_Rule_Tests_Applications_Smart_Service.html) to run test cases for expression rules.

![run-test-cases-post-deployment](images/run-test-cases-post-deployment.png)

1.  [Create a new process model](process-model-object.html#creating-a-process-model).
2.  Add 3 process variables: `pv!deploymentUUID`, `pv!status`, `pv!applications`. These variables will store deployment and application information. In the process model toolbar, click the **Properties** button and select the **Variables** tab. ![run-test-cases-process-variables](images/run-test-cases-process-variables.png)
3.  Click **Add Variable** and in the Name field, enter `deploymentUUID` and set it as type Deployment. This variable will represent the UUID of a deployment.
4.  In the **Parameter** field, select the **Allow the value for the variable to be provided when starting a process** checkbox.
5.  Click **OK**.
6.  Add another variable named `status` with the type as **Text**. This variable will represent the [status of a deployment](deployments-view.html#deployment-status). We will use this variable in our script task later on.
7.  Add another variable named `applications` with the type as **Application** and click **OK**. We will use this variable in the Start Rule Tests smart service later on.
8.  Drag and drop a **Script Task** node between the start node and end node, and name it `Check Deployment Status`. In this process, we need to check that the deployment has been completed before running the expression rule test cases.
9.  Double-click the script task node and select the **Data** tab.
10.  Select the **Output** tab and click **New Custom Output**.
11.  Name the custom output `status` and in the expression editor, enter `a!deployment(pv!deploymentUUID, “status”)`. We are using `a!deployment()` to retrieve the deployment status. `pv!deploymentUUID` represents the deployment UUID, which will be populated after the deployment is finished.
12.  In the **Target** field, select `pv!status`. This process variable will store the status of the deployment so we can use it to determine whether the process should continue or end.
13.  Click **Save and Close**.
14.  Drag and drop **Start Rule Tests (Application) smart service** node after the script task.
15.  Double-click the **Start Rule Tests (Application) smart service** and select the **Data** tab.
16.  In the **Inputs** tab, click the **Applications** input.
17.  In the **Value** field, enter `=a!deployment(pv!deploymentUUID, “applications”)` in the expression editor. This expression retrieves the applications associated with the deployment.
18.  Save the value in `pv!applications` and click **OK**. Using a process variable instead of using the specific application name allows this process to be dynamic. You can reuse the process for any application and deployment.
19.  Drag and drop an **XOR node** between the script task and smart service and name it `Deployment Completed?`.
20.  Add a connector from the **XOR node** to the **End node**. This XOR node will route the process to the smart service or the end node depending on what the deployment status is.
21.  Double-click the **XOR node** and select the **Decision** tab.
22.  Click **NEW CONDITION** and in the condition field enter `pv!status= “Completed”`. “Completed” is the deployment status and indicates that all objects in the package have been successfully imported. Partial deployments are represented by the status Completed with Errors.
23.  In the **Result** field, select the **Start Rule Tests (Application) smart service**.
24.  In the **Result** field of the **Else if none are true** condition, select **End Node**.
25.  Click **OK**.
26.  In the **File** menu, select **Save & Publish**.

### Set the post-deployment process

After creating our process model, we are ready to add it as a post deployment process:

1.  In **Applications** view, select the appropriate application.
2.  In the **Deploy** view > **INCOMING** tab, click the **Modify Selection** icon. ![post-deployment-process-gear-menu](images/post-deployment-process-gear-menu.png)
3.  In the **Post-Deployment Process Model** field, select the appropriate process model.
4.  In the **Process Parameter** field, select the process variable to pass the deployment identifier to. For this example we will select `pv!deploymentUUID`.
5.  Click **SAVE**.

Once your process model has been added to the **Deploy** view, you can kick off the post deployment process by deploying a package to the target environment. After the process is complete, you can view your test case results in the Manage Test Cases dialog. You can also monitor your process in the **Monitor** View > **Process Activity**.

## Trigger a Jenkins job

The post-deployment process also provides a connection point to the rest of your infrastructure and can be used to integrate with your existing third-party tools. For instance, you can use Jenkins to trigger a job that will automate activities, such as running FitNesse or other functional test scripts after a deployment.

In our example below, we will create a simple process model, along with a connected system and integration object to connect to Jenkins. The process will use `a!deployment()` to retrieve deployment information and the [Call Integration smart service](Call_Integration_Smart_Service.html) to utilize the Jenkins integration. Keep in mind this example can also be easily tailored to work with any other third-party tool by modifying the configurations of the connected system and integration objects.

### Configure Jenkins

In this section, we’ll go through the steps to create a new Jenkins job, enable it to be triggered remotely, and set up a user account to do so with an API key. If you already have this configured, you can skip to [Create a connected system and integration for Jenkins](#create-a-connected-system-and-integration-for-jenkins).

If you don’t already have Jenkins set up, [install and configure Jenkins](Running_Automated_Tests_on_Expression_Rules_with_Jenkins.html#install-jenkins) before following the instructions below.

#### Create a new Jenkins job

1.  Go to your Jenkins Home Page.
2.  From the left-hand panel, click **New Item**.
3.  Enter a job name in the **Item Name** field. For example: “Run Application Tests”.
4.  Select **Freestyle project**.
5.  Click **OK**, then click **Save**.
6.  Under **Build Triggers**, check the box next to **Trigger Builds Remotely**.
    -   Optional: you can provide a job authentication token, which is separate from the user account and credentials to build the job. We recommend generating a key by using a random key generator tool.
7.  Under **Pipeline**, you can enter your own script or use a sample one that Jenkins provides. Below, we modified their sample “Hello World” script in order to output “Testing done!” instead.

    [![images/build-triggers-jenkins.png](images/build-triggers-jenkins.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img238)

    [![](images/build-triggers-jenkins.png)](#_)

8.  Click **Save**.

#### Set up a Jenkins user

If you do not have a Jenkins user account configured which can build jobs remotely, follow the instructions below. We will create and use an account that isn’t linked to an actual human user.

1.  As an administrator, create a user account which will be used to remotely trigger the Jenkins job.
    -   Click on **Manage Jenkins** > **Manage Users** > **Create User**. Enter the user information.
    -   Click **Create User**.
    -   Click **Manage Jenkins** > **Configure Global Security** > **Authorization**. Assuming you are using [matrix-based security](https://www.jenkins.io/doc/book/managing/security/#authorization), add the user you just created and give them the following permissions: Overall: Read, Job: Build, Read, and Workspace.
    -   Click **Save**.
2.  Log out of the administrator account and log back in as the user you just created, in order to create an API key for this user.
    -   Click on the user dropdown in the top right and click **Configure**.
    -   Under **API Token**, click **Add new Token**. This will prompt you to name your token.
    -   Click **Generate** to create the token, and make sure to copy it to use later on.

You now have a Jenkins job that’s ready to be triggered remotely and a user account that can do so!

### Create a connected system and integration for Jenkins

In this section, we’ll go through the steps to create an HTTP connected system and integration object to trigger the Jenkins job with the user account and API key you configured above. Then we’ll create a post-deployment process model that uses this integration.

1.  In Appian Designer, select your application.
2.  Create and configure a new connected system:

    -   Click on the **New** menu and select **Connected System**.
    -   Select **HTTP** and add a name, description, and logo for your new connected system.
    -   Enter the **Base URL** of your Jenkins server.
    -   Under **Authentication**, select **Basic**.
    -   In the **Username** field, enter the Jenkins user that you configured above.
    -   In the **Password** field, enter the API token that you configured for that user.
    -   Click **Use in New Integration**. This will save your connected system, and prompt you to set the appropriate security rolemap for it. Once you have done so, click **Save**.

    [![images/jenkins-connected-system.png](images/jenkins-connected-system.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img239)

    [![](images/jenkins-connected-system.png)](#_)

3.  Appian will then automatically prompt you to create an integration object, which is already configured to use the connected system that you just created. Add a name and description for the integration, and a folder to save it in.
4.  Click **Create**.
5.  Configure the integration to build the Jenkins job that you created above:
    -   In the **Relative Path** field, enter `“job/[the name of your job]/build”`.
    -   In the **Method** dropdown, select **POST**. This automatically updates the **Usage** radio button to **Modifies data**.

        [![images/jenkins-integration-example.png](images/jenkins-integration-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img240)

        [![](images/jenkins-integration-example.png)](#_)

6.  Click **Test Request** to test your integration.
    -   If the configurations are all correct, you will see a successful response in the right pane.
    -   On your Jenkins dashboard, you will also see that a new build for this job has been triggered. Clicking into that build and clicking **Console Output** will display the results of the pipeline script that you entered.

        ![jenkins-console-output-example](images/jenkins-console-output-example.png)

7.  In the integration object, click **Save Changes**.

Appian is now able to trigger your Jenkins job remotely.

### Create a process model

Now that we have created a connected system and integration, we will create a process model that will trigger a Jenkins job after a deployment has completed.

![trigger-jenkins-post-deployment](images/trigger-jenkins-post-deployment.png)

1.  [Create a new process model](process-model-object.html#creating-a-process-model).
2.  Add 2 process variables: `pv!deploymentUUID` and `pv!status`. Appian will automatically populate `pv!deploymentUUID` with the deployment identifier, and you can use this to query for its status. In the process model toolbar, click the **Properties** button and select the **Variables** tab.
3.  Click **Add Variable** and in the **Name** field, enter `deploymentUUID` and set it as type **Deployment**. This variable will represent the UUID of a deployment.
4.  In the **Parameter** field, select the **Allow the value for the variable to be provided when starting a process** checkbox.
5.  Click **OK**.
6.  Add another variable named `status` with the type as **Text**. This variable will represent the status of a deployment. We will use this variable in our script task later on.
7.  Drag and drop a **Script Task** node between the start node and end node, and name it `Check Deployment Status`. In this process, we need to check that the deployment has been completed before triggering the Jenkins job.
8.  Double-click the **Script Task** node and select the **Data** tab.
9.  Select the **Output** tab and click **New Custom Output**.
10.  Name the custom output status and in the expression editor, enter `a!deployment(pv!deploymentUUID, “status”)`. We are using `a!deployment()` to retrieve the deployment status. `pv!deploymentUUID` represents the deployment UUID, which will be populated after the deployment is finished.
11.  In the **Target** field, select `pv!status`. This process variable will store the status of the deployment so we can use it to determine whether the process should continue or end.
12.  Click **Save and Close**.
13.  Drag and drop an **XOR** node after the script task, and name it `Deployment Completed?` Add a connector from the XOR node to the End Node. This XOR node will route the process to the next node or the end node depending on if the deployment has been completed successfully.
14.  Drag and drop **Call Integration smart service** between the XOR node and the end node. Name it `Build Jenkins Job`.
15.  Double-click the **Call Integration smart service** node and select the **Setup** tab.
16.  In the integration picker, select the integration you created above. If you want to create a new integration or edit the existing one, you can do that from here. If you want to map process variables to the integration’s rule inputs, you can do that in the Data tab.
17.  Click **OK**.
18.  Double-click the **XOR** node and select the **Decision** tab.
19.  Click **NEW CONDITION** and in the condition field enter `pv!status= “Completed”`. “Completed” is the deployment status that indicates a deployment was successful; [other statuses](deployments-view.html#deployment-status) may be used depending on the workflow you want to achieve.
20.  In the **Result** field, select the **Call Integration smart service**.
21.  In the **Result** field of the **Else if none are true** condition, select **End Node**.
22.  Click **OK**.
23.  In the **File** menu, select **Save & Publish**.

### Set the post-deployment process

Now that we have a process model that will call the Jenkins integration and build a job, we are ready to add it as the post-deployment process for our application.

1.  In **Applications** view, select the appropriate application.
2.  In the **Deploy** view > **INCOMING** tab, click the **Modify Selection** icon. ![post-deployment-process-gear-menu](images/post-deployment-process-gear-menu.png)
3.  In the **Post-Deployment Process Model** field, select the process model you created above.
4.  In the **Process Parameter** field, select the appropriate process variable. For this example we will select `pv!deploymentUUID`.
5.  Click **SAVE**.

Once your process model has been configured from the **Deploy** view, you can kick off the post-deployment process by using compare and deploy to push changes to the target environment. After the process is complete, you can view the corresponding process instance in the **Monitor** view > **PROCESS ACTIVITY** in Appian Designer to check the status of the job itself in Jenkins.

![monitor-jenkins-process](images/monitor-jenkins-process.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...