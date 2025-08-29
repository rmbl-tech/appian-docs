---
source_url: https://docs.appian.com/suite/help/25.3/plan-view.html
original_path: plan-view.html
version: "25.3"
title: "Appian Composer (Plan View)"
page_id: "plan-view"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

 [Give feedback on this page. We'd love to hear your thoughts!](https://docs.google.com/forms/d/e/1FAIpQLSeZUMspkXahEwhIb0LpG0gk5mWb4z-4n1KRM9ChxGC8tcBlkg/viewform?usp=header)

# Appian Composer (Plan View)

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Tip:**  **Appian Composer is available as a preview.**
Preview features are fully supported; however, they do not reflect the full functionality or performance of the feature yet. Appian will respond to support issues and will maintain backwards compatibility in future updates.

## Overview

When you're starting a new application, aligning your team's vision is critical. You have business users with clear goals, developers ready to execute, and subject matter experts ensuring everything meets expectations. Yet, even with the best intentions, communication gaps can lead to misinterpretations, which may cause project details to be lost or diluted. This is where Appian Composer steps in.

Appian Composer is designed to streamline the application planning process by enabling teams to visually [map out requirements](#manage-requirements), collaborate more effectively, and [leverage AI-driven insights](#use-ai-copilot-in-the-plan-view) to design well-aligned, efficient applications.

At the heart of Appian Composer is the [Plan view](#elements), where you can collaboratively design, refine, and visualize the application in real time. Rather than relying on lengthy documents or meetings to clarify complex ideas, the Plan view enables everyone to map out the application together. With this shared space, developers clearly see what needs to be built, and business users can confirm that the solution aligns with their objectives.

Appian Composer also simplifies application setup. Based on your [personas](#personas), [data model](#data-model), and [screens](#screens) it can [generate foundational objects](#generate-objects) such as groups, record types, basic process models, and interfaces. This reduces manual setup and gives your team a functional starting point, helping you move from planning to building faster and with greater confidence.

What sets Appian Composer apart is its integration with [AI Copilot](#use-ai-copilot-in-the-plan-view), an intelligent assistant that can help you create and refine your application plan. In the Plan view, AI Copilot can translate business needs into Appian concepts, suggest optimizations, and answer questions about your plan. This helps ensure all requirements are captured and the application evolves smoothly.

[![images/plan_view/AcmeDemo.gif](images/plan_view/AcmeDemo.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img279)

[![](images/plan_view/AcmeDemo.gif)](#_)

### Key benefits and features

The Plan view of Appian Composer enhances your application development process with these key features:

-   **Visual clarity:** The Plan view provides a structured view of your application's requirements. You can access this view by clicking the **Plan** tab. It makes it easy to see how each component of your application fits together and allows you to refine your ideas before development begins.
-   **Unified collaboration:** Developers, business users, and subject matter experts can work together using a shared, interactive plan to stay aligned on application functionality and design.
-   **Centralized resource:** The Plan view serves as a living resource, capturing your requirements and the design objects built to achieve those requirements in one place, making it easier for new team members to get up to speed and for the team to maintain a consistent understanding of the application's purpose.
-   **AI-driven assistance:** AI Copilot helps you generate and refine application requirements, define user personas, and model your data by suggesting enhancements and translating business needs into Appian concepts. This makes it easier to accelerate planning, align with business goals, and create a well-structured application.
-   **Faster development:** The Plan view gives developers a clear starting point, reducing setup time and generating useful objects, enabling a quicker transition from planning to building.

## Accessing Appian Composer

Before you begin, make sure you have [access to Appian Designer](#security) and are using Appian Composer in a [supported region](security-compliance.html). Access to Appian Composer may be limited unless cross-region configuration is enabled.

After you open your application in Appian Designer, you can access **Appian Composer** by clicking the **Plan** tab.

![plan _tab.png](images/plan_view/plan _tab.png)

## Explore templates in the Plan view

When you first open the Plan tab, you can select from a variety of ready-made plans to jumpstart your app planning process. Ready-made plans are templates designed to fit common business scenarios and serve as a foundation, helping you quickly structure your application plan if you don't want to start from scratch. They can also serve as the framework for applications built in [Case Management Studio](cms-studio-overview.html). After selecting a template, AI Copilot can assist you in refining and expanding your plan.

Available templates:

-   **HR Onboarding**: Streamline the employee onboarding process for new hires.
-   **Customer Service**: Manage banking customer service requests efficiently.
-   **Enterprise Sales**: Track the various stages of the sales lifecycle.

![templates.png](images/plan_view/templates.png)

Not the right template for your plan? You can try a different template until you make changes to the requirements. Once you make an edit, this option is not available.

[![images/plan_view/try-dif-template.png](images/plan_view/try-dif-template.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img280)

[![](images/plan_view/try-dif-template.png)](#_)

## Elements

The following image highlights the elements that make up this view:

[![images/plan_view/plan_view_numbered.png](images/plan_view/plan_view_numbered.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img281)

[![](images/plan_view/plan_view_numbered.png)](#_)

| # | **Element** | **Available Actions** |
| --- | --- | --- |
| 1 | Header bar | Learn more about the [header bar](common-view-elements.html#header-bar"). |
| 2 | Navigation pane | Learn more about the [navigation pane](common-view-elements.html#navigation-pane). |
| 3 | Tabs |
-   [Manage requirements](#manage-requirements)
-   [Manage personas](#manage-personas)
-   [Manage data model](#manage-data-model)
-   [Manage screens](#manage-screens)

 |
| 4 | Workspace | The workspace is the central area where you interact with and manage the details of your application plan. It dynamically updates based on the selected tab, such as Requirements, Personas, Data Model, or Screens, providing a focused view and actions to configure and refine specific aspects of your plan. |
| 5 | AI Copilot | [Generate and refine requirements](#use-ai-copilot-in-the-plan-view) |

## Basic concepts

To get the most out of the Plan view, it's helpful to understand a few key terms and concepts. These terms and concepts also correspond to Appian design objects.

The **application plan** is the centerpiece of the Plan view. It provides a clear, structured model that defines the application's requirements, components, and architecture. By detailing every necessary part of your application, it acts as the essential guide for building and bringing your application to life.

### Understanding the Requirements tab

In the Requirements tab, three key terms are essential: **activity**, **step**, and **action**. These terms help you plan your application's journey from big ideas to specific tasks.

-   **Activity** represents a large piece of functionality in your application.
-   **Step** breaks down the activity into major components.
-   **Action** details the specific tasks or requirements within a step. [Action types](#action-types) identify the specific requirements that drive actions.

For those familiar with agile development, these terms align closely with feature, epic, and story.

The following image provides a visual breakdown of how activities, steps, and actions are structured within the Requirements tab, illustrating the flow from a high-level activity to specific tasks. Your requirements can include an unlimited number of activities, steps, and actions.

![basic_concepts.png](images/plan_view/basic_concepts.png)

### Action types

Action types represent the specific requirements that drive the actions in your application. Each action type serves a specific purpose and is mapped to an appropriate Appian concept or design object.

The following table outlines the available action types and provides a brief description of each.

| **Icon** | **Term** | **Description** | **Appian Concept/Object** |
| --- | --- | --- | --- |
| ![aiProcess_ico.png](images/plan_view/aiProcess_ico.png) | AI Process | Starts an action that utilizes an Appian AI capability. | [Appian AI](ai-landing.html) |
| ![assignTask_ico.png](images/plan_view/assignTask_ico.png) | Assigned Task | Sends a task to an individual or group for completion. | [Tasks](Tasks.html) |
| ![autoProcess_ico.png](images/plan_view/autoProcess_ico.png) | Automated Process | An automated action that is handled within a process model. | [Process Model](process_model_overview.html) |
| ![extInt_ico.png](images/plan_view/extInt_ico.png) | External Integration | Executes an action that connects to a third-party system or service. | [Integration Types](Integration_Content_Types.html) |
| ![intDisplay_ico.png](images/plan_view/intDisplay_ico.png) | Interface Display | Displays user-facing screens such as landing pages and reports. | [Interface Object](interface_object.html) |
| ![rpaAction_ico.png](images/plan_view/rpaAction_ico.png) | RPA Process | Initiates an action that involves Appian RPA. | [Appian RPA](rpa-9.17/appian-rpa.html) |
| ![userAction_ico.png](images/plan_view/userAction_ico.png) | User Action | A direct interaction by the user with the application, involving actions like entering data or making selections. | [Related actions](record-actions.html#related-actions) |
| ![userNotification_ico.png](images/plan_view/userNotification_ico.png) | User Notification | Delivers notifications via email or custom messaging. | [Notifications](Send_Push_Notification_Smart_Service.html) |

### Personas

In Appian Composer, a persona represents a [user role](User_Roles.html) or [group of users](Group_Management.html) with similar responsibilities and permissions within an application. Personas help define who interacts with different parts of the application, ensuring the right users can access and perform the appropriate actions based on their roles.

In Appian Composer, a system persona represents Appian itself. This persona handles system-driven tasks such as requirementss, integrations, and system processes, ensuring that routine operations are executed as designed. When you're using AI Copilot, it may automatically create this and other personas for you.

### Data model

A [data model](#manage-the-data-model) in the Plan view is a visual representation of the information your application will work with and how that information is connected. It helps you plan and organize your application's data, such as what tables (like users or tasks) are needed and how they relate to each other.

The data model itself doesn't create record types or store data in Appian—it's a design tool that guides you in structuring your data to align with your app's requirements. Once the data model is finalized, you can use it as a blueprint to create the actual record types and set up the data in Appian.

### Screens

[Screens](#manage-screens) are the user-facing pages that make up your application. They define how users interact with your app, from landing pages and forms to record views.

When you create an application plan, Appian Composer automatically generates a set of starter screens based on your requirements, personas, and data model. These initial screens give you a foundation to build on as you design your user experience. The generated screens display mock data to help you visualize the layout, with some components mapping to data tables in your data model.

When you generate an interface, Appian Composer connects screen elements to existing record types and record actions. Any component backed by a field from your data model appears in the generated interface. If a mapping is missing, the interface may not fully match your original design. You can then open the interface in Appian designer to make refinements and complete the configuration.

You can see which sites and interfaces were generated from the application plan by reviewing the Screens tab. Each screen includes a link that opens the corresponding object in Appian Designer, so you can quickly view and modify it.

## Create a plan

To start a new application plan, click the **Plan** tab. This opens the Plan view, where you can begin shaping your application.

![plan_tab_pointer.png](images/plan_view/plan_tab_pointer.png)

From here, you can

-   [manage requirements](#manage-requirements),
-   [manage personas](#manage-personas),
-   [manage screens](#manage-screens),
-   [manage the data model](#manage-the-data-model), or
-   [consult with AI Copilot for suggestions and guidance](#use-ai-copilot-in-the-plan-view).

**Caution:**  The Plan view doesn't prevent multiple people from editing at the same time, so it's important to coordinate with your team to avoid overwriting each other's changes. All updates are automatically saved.

## Manage requirements

The Requirements tab helps you define and organize the core activities, steps, and actions that shape your application. By breaking down functionality into manageable components, you can ensure your application aligns with user needs and business goals. Use the Requirements tab to visually map and refine your application's key processes.

In the Requirements tab, you can

-   [add an activity](#add-an-activity),
-   [add a step](#add-a-step),
-   [add an action](#add-an-action),
-   [connect design objects to actions](#connect-design-objects-to-actions), and
-   [fine-tune your requirements](#fine-tune-your-requirements-with-drag-and-drop)

**Tip:**  After you make changes to your requirements, be sure to review AI Copilot's suggested updates to your data model.

### Add an activity

To manually add a new activity:

1.  On the **Requirements** tab, click **ADD ACTIVITY**.
    **Result:** The **Add Activity** card displays.
2.  Enter a clear and concise title for your activity in the **Name** field.
    **Tip**: The name should be specific enough to convey the activity's purpose at a glance. Avoid overly general names and ensure it reflects the main function of the activity within your application. For example, instead of "Process," use something like "Customer Onboarding" or "Claim Submission."

3.  (Optional) Enter a description of the activity's purpose or objective in the **Goal** field.
4.  Click the checkmark to save.

### Add a step

To manually add a step to an activity:

1.  On the activity card, click the **ADD** dropdown menu.
2.  Select **Step**.
    **Result:** The **Add Step** card displays.
3.  Enter a clear and concise title for the step in the **Name** field.
    **Tip**: The name should be specific enough to convey the step's purpose at a glance. Avoid overly general names and make sure it reflects the key function of the step. For example, instead of "Process Step," use something like "Verify Customer Details" or "Approve Payment."

4.  Click the checkmark to save.

### Add an action

To manually add an action:

1.  You can add an action in two ways:
    -   **From the Activity card**: Click the **ADD** dropdown and select **Action**.
    -   **From the Step card**: Click the **ADD ACTION** button on the Step card.
        **Result:** The **Add Action** card displays.
2.  Enter a clear and concise title for the action in the **Name** field.
3.  (Optional) Select the [action type](#action-types) in the **Type** dropdown list.
4.  (Optional) Select the [persona](#personas) responsible for the action.
5.  Click the checkmark to save.

### Connect design objects to actions

You can associate design objects, such as record types, process models, reports, and interfaces with any action. This ensures that all relevant objects are linked to the correct actions, making it easier for developers to understand how the application is structured. It also simplifies ongoing maintenance by clearly mapping the relationships between design objects and actions for future reference.

To connect a design object to an action:

1.  Click the action you want to modify.
    **Result**: The **All Objects** screen displays.
2.  Select and complete one of the following options.
    -   **NEW**: This option allows you to add a new object to your application. After creating the object, you can return to the Plan view, where the object will automatically be connected to your action.
    -   **ADD EXISTING OBJECTS**: This option lets you connect an existing object from your application to the action. You can add multiple objects at the same time.

Once you're done, the design objects will appear in the object list under the action. You can view details such as their name, description, and last modified date. Use this view to manage the objects associated with the action.

![objectsOnAction_scr.png](images/plan_view/objectsOnAction_scr.png)

### Fine-tune your requirements with drag and drop

A well-organized layout makes it easier for your team to understand the overall structure and flow of the application. Here are some tips for customizing your requirements for clarity:

-   **Arrange related steps and actions together**: Arrange related activities together in a way that reflects your application's workflow. This makes it easier to navigate through the plan and ensures that the flow of processes is intuitive.
-   **Use clear and descriptive names**: Ensure that each activity, step, and action has a clear, descriptive name that reflects its function. Avoid generic names—specific labels help users understand the purpose of each element at a glance.
-   **Rearrange for better flow**: You can drag and drop activities, steps, and actions to reorder them in a way that reflects the natural progression of your application's workflow. Arrange steps in the order that users or Appian will follow for better clarity.
-   **Break down complex processes**: If an activity becomes too complex, break it down into smaller, more manageable activities or steps. This avoids overwhelming the plan and makes each part of the process clearer.

![drag-drop.gif](images/plan_view/drag-drop.gif)

**Tip:**  Activities, steps, and actions can be edited or deleted at any time by selecting the menu (three dots) on the card and clicking **Edit** or **Delete**.

## Manage personas

In the Plan view, managing personas allows you to define and customize profiles that interact with your application. Personas represent groups of users, such as customers, administrators, or system roles, and help identify who has access to specific actions within your application.

Appian allows you to map existing design objects, such as groups, to personas, making it easier to reuse objects from other applications. This streamlines development, ensures consistent roles and permissions across applications, and accelerates the process as you build more applications and leverage reusable components.

### Add, edit, and delete personas

Open the **Peronas** tab to display the **Personas** workspace. In the **Personas** workspace, you can:

-   **Add a persona**: Click **\+ ADD PERSONA** to create a new persona.
-   **Edit a persona**: Click the pencil icon to modify an existing persona by adjusting the name to better align with the persona's role, modify the description, or associate existing groups with the persona.
-   **Delete a persona**: Remove a persona by clicking the trash can icon next to the persona. Verify removing the persona does not impact your requirements before deleting.

[![images/plan_view/mange_personas_scr.png](images/plan_view/mange_personas_scr.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img282)

[![](images/plan_view/mange_personas_scr.png)](#_)

## Manage the data model

The Data Model tab in the Plan view is where you define the core structure of your application's data. Think of it as the foundation for organizing and managing your data effectively. Here, you can visually map out the relationships between different tables and ensure your application is built on a strong and logical structure.

You can [add new tables](#add-a-new-table), [edit existing tables](#edit-a-table), and configure each table's fields to suit your application's needs. For example, you can define field types and create meaningful connections between tables. The interactive diagram gives you a clear picture of how everything fits together, making it easy to spot and refine relationships.

In the data model, you can map existing record types to your application's design. This ensures your data structures remain consistent across applications and reduces duplication, making development faster and more reliable.

AI Copilot enhances data modeling by recommending best-practice data models, identifying reusable record types, and suggesting updates based on changes in your application plan. These recommendations help you set up and refine your application's data structure with confidence—even if you're new to data modeling.

[![images/plan_view/data-model.png](images/plan_view/data-model.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img283)

[![](images/plan_view/data-model.png)](#_)

### Add a new table

To add a new table:

1.  Open the **Data Model** tab.
2.  Click **Add Table**.
    **Result**: The Add Table window displays.

    [![images/plan_view/add-data-model-table.png](images/plan_view/add-data-model-table.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img284)

    [![](images/plan_view/add-data-model-table.png)](#_)

3.  Enter a name for the table in the **Name** field that reflects the purpose of the data.
4.  Select the **Mapped Object(s)** if this table will correspond to existing record types.
5.  Add fields to your table:
    1.  Click **ADD NEW FIELD**.
    2.  Mark the **Unique** checkbox when you need to ensure no two records in your record type have the same value in that field. Use it for identifiers like order numbers, usernames, or IDs to maintain data integrity. Avoid marking it for fields where duplicate values are expected, like status or categories.
    3.  Enter a name for the field in the **Field** column.
    4.  Choose a data type from the **Type** dropdown (e.g., text, number, or date).
    5.  For fields with relationships to other tables in your data model, use the **Linked Field** to establish the connection. This option is only enabled if there is at least one other field in the data model that is both unique and of the same type.
        **Result**: The **Relationship Type** is automatically populated.
6.  Continue adding fields until all the necessary data points are represented.
7.  Click **Add** to save your table.
    **Result**: Your new table will display in the data model diagram.

### Edit a table

To edit a table:

1.  Open the **Data Model** tab.
2.  Click the pencil icon on the table you want to edit.
    **Result**: The Edit Table window displays.
3.  Edit your table: This includes specifying the table's name, mapping it to record types, and configuring its fields. You can set field properties, choose data types, establish relationships with other tables, and add or remove fields as needed to align with your application's requirements.
4.  Click **SAVE**.

[![images/plan_view/edit-datamodel-table.png](images/plan_view/edit-datamodel-table.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img285)

[![](images/plan_view/edit-datamodel-table.png)](#_)

### Review AI Copilot's suggested updates

When changes are made to your application requirements, AI Copilot automatically suggests updates to your data model to align with the latest requirements. A banner at the top of the page alerts you to pending updates that need your review.

[![images/plan_view/suggested-updates.png](images/plan_view/suggested-updates.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img286)

[![](images/plan_view/suggested-updates.png)](#_)

To review and apply these changes:

1.  Click **REVIEW CHANGES** to see a side-by-side comparison of the current data model and the proposed updates.
2.  Examine the suggested additions (green highlight) and deletions (red highlight) to ensure they meet your needs.
3.  Click **APPLY CHANGES** to update your data model with the suggested changes. This ensures your data model reflects the latest application requirements. If the suggested changes are unnecessary or require further discussion, click **CANCEL**.

## Manage screens

The Screens tab helps you manage the key user screens in your application. It gives you a clear view of the pages your users will interact with, and provides tools to quickly add or update those pages.

Appian automatically generates a starting set of screens based on your requirements, personas, and data model you've defined. You can customize these screens or add new ones as your application evolves.

[![images/plan_view/screens_tab.png](images/plan_view/screens_tab.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img287)

[![](images/plan_view/screens_tab.png)](#_)

### What to expect

After you create a new application plan, Appian uses AI to generate key screens with mock data. This includes the following set of foundational screens common to most applications.

The **Home Page** is always included in every application. Your home page is the first screen users see when they enter your app. It's designed as a launch point for key information and actions.

Appian Composer may also create these optional screens if your requirements call for them:

-   **Form**: An interactive interface where users can view, enter, or modify data as part of a process or task.
-   **Record View**: A comprehensive view that displays all available data for a specific record. This screen type helps users understand the full context of a record, including key data, related records, historical activity, and available actions.

Each screen is made up of components you can customize to fit your use case. You'll select and configure these components when you [customize the screen](#customize-a-screen).

### Add a screen

To add a screen:

1.  Click **ADD SCREEN**.
    **Result**: The Add Screen dialog displays.
2.  Enter a unique **Name**.
3.  Select one of these screen types from the **Types** dropdown list: Home Page, Form, or Record View.
4.  Enter a **Description**.
5.  Click **ADD**.
    **Result**: The new AI-generated screen displays at the bottom of the Screens tab. From here, you can customize the screen to match your needs by selecting components, editing content, and previewing the layout in real time.

### Customize a screen

Whether you're customizing a home page, record view, or record detail, Appian Composer lets you tailor the layout and content to match your app's purpose and your users' needs. Remember, the generated screens display mock data to help you visualize the layout, but the data is not connected to any record types.

Follow these steps to customize your screen:

1.  Locate the screen you want to update:
    -   Internal home pages are often labeled as dashboards, or their description refers to a main landing page.
    -   Record view pages are typically described as detailed views of a record.
2.  Click the screen to open it in the configuration view.
3.  In the Components panel on the left, check or uncheck the boxes to control which elements appear on the screen. Changes update immediately in the preview area on the right.

    **Tip:**  The available components vary depending on the screen type.

    | Component | Description |
    | --- | --- |
    | Contacts | Lists people or teams related to the record |
    | Event history List | Displays recent updates or activity logs |
    | Fields | Represent data from a specific column in your record type. |
    | Header | Adds a unique page title |
    | Links | Adds shortcuts to other screens or external resources |
    | Notifications | Highlights key alerts like pending approvals |
    | Record action | Allows users to launch actions like create, edit, or approve |
    | Record list | Shows related or frequently used records |
    | Record view | Displays detailed record data |
    | Related actions | Lets users quickly start a process directly from a record using information from that record, such as updating a case |
    | Tasks | Displays the current user's assigned tasks |

4.  Configure each component's content or settings:
    1.  Click the arrow next to the component name in the Components panel.
    2.  Update text, add or delete fields, or link to related tables or screens.
    3.  Use mock data as a placeholder.
5.  Click **Home** to return to the full list of screens.

## Generate objects

When you generate objects, Appian Composer helps you quickly create the design objects for your app by analyzing your application plan and generating initial groups and record types that are sent to [Appian Designer](welcome-app-designer.html). You can review and refine these suggestions to save time in the early stages of development. While this feature accelerates your application setup, you may still need to build and customize your app further.

**Tip:**   Be sure you have your requirements, data model, personas, and screens defined in the application plan before generating objects. Before you generate objects, make sure to align with your team. Confirm that your plan accurately reflects your shared goals so the generated application starts from the right foundation.

To generate objects:

1.  Click **Generate OBJECTS**.
    **Result**: The Generate Objects screen displays with the Personas tab selected.

    [![images/plan_view/generate-personas.png](images/plan_view/generate-personas.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img288)

    [![](images/plan_view/generate-personas.png)](#_)

2.  Select the checkboxes next to the [group objects](Creating_Groups.html) you want to generate. Based on your personas, these groups are automatically suggested.

    **Tip:**  You can rename any object by clicking the pencil icon next to it.

3.  Click **Next**.
    **Result**: The Screens tab displays.

    [![images/plan_view/gen-screens.png](images/plan_view/gen-screens.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img289)

    [![](images/plan_view/gen-screens.png)](#_)

4.  Select the [interfaces](interface_object.html) you want to generate.
5.  Click **NEXT**.
    **Result**: The Data tab displays.

    [![images/plan_view/generate-data-tab.png](images/plan_view/generate-data-tab.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img290)

    [![](images/plan_view/generate-data-tab.png)](#_)

6.  Choose a [data source](configure-record-data-source.html) for your record types.
7.  Select the database-backed [record type objects](Record_Type_Object.html) you want to generate. Based on your tables, these record types are automatically suggested. Each one includes the same fields, data types, and relationships defined in its table.
8.  Click **Add actions and views** on any record type where you want to add [Create, Update, Delete actions](record-actions.html) or include the [Summary view](record-view.html). Then select the checkbox next to each option you want to add.

    **Tip:**  Some record types and actions may already be selected and disabled. These actions or views are required to generate the screen and cannot be changed.

    [![images/plan_view/actions-view.png](images/plan_view/actions-view.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img291)

    [![](images/plan_view/actions-view.png)](#_)

9.  Click **NEXT**.
    **Result**: The Review tab displays.

    [![images/plan_view/review-tab.png](images/plan_view/review-tab.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img292)

    [![](images/plan_view/review-tab.png)](#_)

10.  Expand each object section to review the objects that will be created.
11.  In the Review Security and Organization Review section, review how your objects will be secured and organized.
12.  Click **GENERATE**.
     **Result**: When it's done, a confirmation screen will appear and your objects will be ready to use in Appian Designer. This may take a few minutes.

[![images/plan_view/confirmation-scr.png](images/plan_view/confirmation-scr.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img293)

[![](images/plan_view/confirmation-scr.png)](#_)

**Tip:**  You can start this process again any time to generate skipped or new objects. Existing objects will still be available and won't be duplicated.

## Use AI Copilot in the Plan view

### Introduction to AI Copilot

[AI Copilot](appian-ai-copilot.html) is seamlessly integrated into the Plan view of Appian Composer, acting as a smart assistant that helps simplify and enhance the planning process. As you work within the Plan view, AI Copilot understands your questions and provides real-time assistance. It translates business needs into Appian terms, making it easier for you to understand what's required. It also suggests potential optimizations, ensuring the best solution is implemented from the start.

Whether you're brainstorming features or refining workflows, AI Copilot can help you map ideas quickly, detect potential gaps, and offer recommendations that improve the overall design. This ensures that every part of the application is aligned with business goals from the earliest stages of development.

### Key benefits of using AI Copilot in the planning process

-   **Faster requirement gathering**: AI Copilot quickly turns high-level business needs into actionable Appian elements, reducing the time spent interpreting ideas and ensuring clarity.
-   **Improved collaboration**: With AI Copilot's real-time suggestions, all team members can actively contribute to refining the application. Business users get confirmation that their goals are captured correctly, while developers receive clear guidance on implementation.
-   **Enhanced accuracy**: AI Copilot helps avoid misunderstandings by ensuring every requirement is clearly labeled and actionable, reducing the chance of errors later in development.
-   **Faster changes**: AI Copilot helps you quickly make updates like adding requirements, updating sample data, and editing personas directly in the relevant screens, personas, and tabs so you can keep work moving without slowing down.

### Understanding AI-generated suggestions and recommendations

As you work within the Plan view, AI Copilot can analyze the requirements provided by your team and generates intelligent suggestions and recommendations if you ask for them. These suggestions can help refine the overall structure of your application by translating business requirements into Appian elements and identifying opportunities for optimization.

AI Copilot's suggestions are designed to:

-   **Clarify ambiguous requirements**: If a business requirement is too vague or open-ended, AI Copilot may suggest ways to refine it for better clarity, ensuring you have actionable details to work with.
-   **Propose alternative solutions**: AI Copilot may recommend alternative approaches based on best practices or industry standards, giving you options to consider that you might not have thought of.
-   **Highlight potential gaps**: If asked, AI Copilot can detect missing pieces in your design, such as incomplete requirements or unaccounted-for personas, helping to ensure that nothing is overlooked during the planning phase.
-   **Provide technical recommendations**: For more complex scenarios, AI Copilot can offer suggestions on the best Appian features or components to use, helping you choose the most efficient and scalable solutions.

You always have the final say, so you can choose to accept, modify, or dismiss AI Copilot's suggestions based on your application's unique needs.

### Generate and refine the application plan using AI Copilot

Follow these steps to generate an application plan or refine the existing plan using AI Copilot:

**Note:**  The Plan view doesn't prevent multiple people from editing at the same time, so it's important to coordinate with your team to avoid overwriting each other's changes. All updates are automatically saved.

1.  Click **AI Copilot** in the Plan view to open the AI Copilot panel.

2.  Enter your requirements: You can manually type your business needs into the chat field or copy and paste them from another source.

3.  Once your business needs are entered, click the paper plane button .
    **Result**: AI Copilot will analyze what you entered and automatically generate a set of activities, steps, and actions based on your business needs.

4.  Review the requirements suggested by AI Copilot. You can accept, modify, or further refine these requirements to ensure they align with your application's goals.

### How to fine-tune AI Copilot's recommendations

AI Copilot in the Plan view provides powerful, intelligent suggestions, but it's important to remember that these are starting points—not final solutions. To ensure that AI-generated content aligns with your vision and goals, you'll need to refine and adjust it. Here are some tips to help you iterate on AI-generated content effectively:

-   **Review suggestions with your end goal in mind**: Compare AI Copilot's suggestions against your overall objectives. Ensure that each suggestion aligns with the vision you and your team have defined. If a recommendation doesn't quite fit, consider how you can adjust it to better meet your needs, or remove it completely.

-   **Incorporate feedback from stakeholders**: Share AI-generated application plans with key stakeholders, including business users and developers, to gather their input. This collaborative feedback ensures that your application is not only technically feasible but also aligned with business requirements and user expectations.

-   **Use AI Copilot suggestions as a brainstorming tool**: If AI Copilot's suggestions aren't perfect for your current needs, it can still serve as a creative spark. Use the suggestions as a springboard to explore new ideas or solutions that you might not have considered otherwise.

-   **Test and iterate**: Once you've refined your application plan, apply it in small stages, test how it works in practice, and gather feedback. Use this iterative approach to fine-tune the application plan as you progress, ensuring the end result is aligned with both technical feasibility and business vision.

By treating AI Copilot's suggestions as a flexible starting point, and applying these strategies, you can ensure that your final application plan perfectly reflects your team's goals.

### Common use cases

Below are examples of how AI Copilot can be used effectively, along with best practices for getting the most out of this assistant.

-   **Automating repetitive tasks**: AI Copilot can identify repetitive tasks within your application that you can automate improving efficiency. For example, you can ask, _"What steps in this app can I automate?"_. AI Copilot will analyze your application and suggest areas for automation, saving you time and streamlining processes.

-   **Suggesting new features**: AI Copilot can help generate ideas for new steps or actions based on your current application plan. Ask, _"Can you suggest more actions users might take before the review step?"_ to quickly brainstorm additional functionality.

-   **Editing your application plan**: Use AI Copilot to refine your application plan. For instance, you can say, _"Can you add a review step to the end of the process?"_, and AI Copilot will update your application plan's requirements and personas accordingly.

-   **Answering application questions**: AI Copilot can quickly respond to questions about your application. For example, you might ask, _"What is this application's purpose?"_ to get instant insights about your plan.

### Common pitfalls and how to avoid them

-   **Over-reliance on AI suggestions**: Relying too heavily on AI Copilot's recommendations without critically reviewing them can result in application plans that don't fully meet your project's specific needs or goals. Always review AI-generated suggestions and refine them to align with your unique business and technical requirements. Think of AI Copilot as a tool to assist, not replace, your expertise.

-   **Lack of team communication**: Not communicating with your team about AI Copilot's changes or suggestions can lead to confusion or conflicting updates to the application plan. Regularly discuss AI Copilot's suggestions with your team and ensure everyone is aligned on the proposed changes before finalizing them.

-   **Unclear instructions**: Providing vague or unclear instructions to AI Copilot can lead to irrelevant or incorrect suggestions. Be very specific and detailed when asking AI Copilot for help. Clear input leads to more accurate and useful recommendations.

## Add an application plan to a package

You can add an application plan to any package when deploying to a new environment. The application plan is automatically included in the application's configuration settings. This means that when you add application configurations to your package, the application plan is added for you too. Learn more about [adding application configurations to a package](prepare-deployment-packages.html#prodlink-application-configurations).

## Support and resources

If you're new to Appian, it might be helpful to explore some introductory resources before jumping into Appian Composer. The [Appian Designer documentation](welcome-app-designer.html) is a good place to start.

## Security

The Plan tab in Appian Designer is available to anyone with access to the application, similar to other tabs. However, since only system admins and developers typically have access to Appian Designer, business users can only use the Plan view if they're added to the [Designers System Group](User_Roles.html#designer-role).

The following table outlines the actions that can be completed for each [permission level](object-security.html#permission-levels-in-role-maps).

| Actions | Administrator | Editor | Viewer | Deny |
| --- | --- | --- | --- | --- |
| View tabs in Plan view | Yes | Yes | Yes | No |
| Manage tabs in Plan view | Yes | Yes | No | No |
| View/click **Generate Objects** button in Plan view | Yes | Yes | No | No |
| Create design objects\* | Yes | Yes | No | No |

\* The user must also be in the Process Model Creator group to generate Create, Update, or Delete actions for the record type.

## Feedback

[Give feedback on this page. We'd love to hear your thoughts!](https://docs.google.com/forms/d/e/1FAIpQLSeZUMspkXahEwhIb0LpG0gk5mWb4z-4n1KRM9ChxGC8tcBlkg/viewform?usp=header)