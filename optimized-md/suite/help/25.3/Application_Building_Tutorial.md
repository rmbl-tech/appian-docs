---
source_url: https://docs.appian.com/suite/help/25.3/Application_Building_Tutorial.html
original_path: Application_Building_Tutorial.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Application Building Tutorial

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Build an Appian App in 4 Easy Steps!

This video from [Academy Online](https://academy.appian.com/) explains how to build an app in 4 steps.

The walkthrough on this page will help you build your first application for the Appian Application Platform. We will be building a very basic application while learning basic concepts related to application and object security, but we won't be diving into details about designing interfaces, processes, or data. Those topics are covered in detail in other [tutorials](Tutorials.html).

## Overview

Applications are built using [design objects](design-objects.html) that together form the user interfaces, logic, processes, and data users interact with while doing work in Appian. Every application that you build in Appian should represent a business solution. For example, you would build separate applications for customer relationship management and human resources.

All design objects in Appian are secured separately, including the application object itself. This tutorial walks you through setting up basic security as we go along. As you start to build applications on your own, you should keep in mind that the objects that you create won't be available to users unless security is configured correctly for each object. With that said, keep the following things in mind as we work through this tutorial:

-   An application functionally groups the design objects associated with it.
-   Design objects may belong to zero, one, or many applications.
-   To make an application's tasks, records, reports, and actions available to users, you must configure security for the design objects in the application.

## Create the Appian Tutorial application

We will be creating the _Appian Tutorial_ application for this tutorial. All of Appian's tutorials use the Appian Tutorial application as the reference application. After completing this tutorial, you can reuse this application as you work through other Appian tutorials.

To create the Appian Tutorial application:

1.  Log in to [Appian Designer](welcome-app-designer.html).
2.  In the **Applications** view, click **\+ New Application**.
3.  In the **Create New Application** dialog, configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Name** | Enter `Appian Tutorial`. |
    | **Prefix** | Keep the default prefix, `AT`, which Appian constructs using the initial characters of each word you entered in the **Name** parameter. We'll be following the [recommended naming standard](Standard_Object_Names.html), and using this short, unique prefix whenever we name an object in this application. |
    | **Description** | Leave blank. It's normally a best practice to add descriptions to all design objects. However, to save a little time during this tutorial, we'll skip adding descriptions unless the description displays to the end user. |
    | **Generate groups and folders to secure and organize objects** | Keep this checkbox selected, so that Appian will automatically [generate standard groups and folders](creating-applications.html#generated-groups-and-folders) and [assign default security groups](creating-applications.html#default-security-groups) for this application. |

4.  Click **CREATE**.
5.  In the **Review Application Security** dialog, keep the default security settings. Because we selected the **Generate groups and folders** option in the previous step, Appian automatically uses the **AT Users** and **AT Administrator** groups it generated to set our application security appropriately.

    **Tip:**  The security of the application object is unrelated to the security of each of the objects contained within the application. This means that you will need to set security permissions for every object in an application in addition to the application object itself. For more information about security permissions for the application object, see [Application Security](application-settings.html#prodlink-security).

6.  Click **SAVE**.

    ![screenshot of the Explore view](images/application_tutorial/appian_tutorial_explore_view_23_2.png)

7.  Click **X** to close the **What do you want to build first?** dialog.

Right now, the application contains the folders and groups Appian generated automatically. To see these, click **Build** in the navigation pane.

Each design object that you create during the course of this tutorial will appear in this list in the **Build** view and be associated with the tutorial application.

![screenshot of the build view](images/application_tutorial/appian_tutorial_build_view.png)

## Build your application objects

Now that you've created an application, it's time to learn how to build objects in that application.

Start by completing our [database-backed record type tutorial](Records_Tutorial.html).

Or to walk through a more manual configuration method, complete our [interface tutorial](SAIL_Tutorial.html) and our [process model tutorial](Process_Modeling_Tutorial.html).

Ready to learn even more? Check out our full list of [tutorials](Tutorials.html) or our free courses on [Appian Academy](https://academy.appian.com/).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...