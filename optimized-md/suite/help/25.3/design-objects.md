---
source_url: https://docs.appian.com/suite/help/25.3/design-objects.html
original_path: design-objects.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Design Objects

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Applications contain a set of objects that function together to meet one or several business use cases. Applications allow these objects to be deployed from one environment to another.

When an object is created, it is assigned a universally unique identifier (UUID). This internal (hidden) property is not editable or configurable.

Each design object provides a specific piece of functionality, and each application contains many objects grouped by common purpose. Technically, applications do not contain these objects, but simply have a list of objects that are associated with them. The [**Objects** view](objects-view.html) shows a list of objects ignoring the application association. The following sections describe each Appian object.

## Data objects

Record types, data stores and custom data types (CDTs) are all data-centric objects. Their icons will appear orange in grids and other displays in Appian Designer.

### ![Data Store](images/object_type_icons/obj_data-store30px.png)Data Store

A [data store](Data_Stores.html) is a reference to an external relational database that is used to store application data. Each data store contains one or more data entities that correspond to a table in the database. When saving data from Appian to an external database, the data store defines the connection to the database, while [data types](#data-type) define the structure of the data entity being stored.

### ![Data Type](images/object_type_icons/obj_data-type30px.png)Data Type

As opposed to a [primitive](Appian_Data_Types.html#primitive-system-data-types) or [system](Appian_Data_Types.html#complex-system-data-types) data type, a [custom data type](Custom_Data_Types.html) (CDT) is a developer-defined data structure. Data Types allow designers to create a logical grouping of related data that can then be used by other objects to share data. Data can be shared internally, for instance between an interface and process model, or a web service that uses a CDT.

Because a data type will always be used in context of another object, it does not have individual security settings.

### ![Record Type](images/object_type_icons/obj_record30px.png)Record Type

A [record type](Record_Type_Object.html) brings together all the data on a single topic and displays it in a series of record views. Records provide a centralized view of a given business function, along with all of its connections to related records.

Attaching process models to record views as [related actions](record-actions.html#related-actions) allows users to immediately take action on the information shown in the record view.

## Process objects

Process models and process reports can be considered process-centric. Process models define how a process will function while process reports allow users access to data from the process. Process object icons will appear dark blue in grids and other displays in Appian Designer.

### ![Process Model](images/object_type_icons/obj_process-model30px.png)Process Model

A [process model](process-model-object.html) is the primary tool in Appian for describing a workflow. Developers graphically lay out the workflow, which may assign user tasks, manipulate data, post system events, or update other design objects. Process models are frequently used with record types to provide users with tools to act on the information shown by the record.

### ![Process Report](images/object_type_icons/obj_process-report30px.png)Process Report

A [process report](Process_Reports.html) displays data from active and recently completed processes and tasks. Developers can choose to create process reports from scratch or pick from one of several dozen of out-of-the-box report [templates](Process_Reports.html#prebuilt-system-reports).

### ![Robotic Task](images/object_type_icons/obj_rpa30px.png)Robotic Task

A robotic task interacts with other applications through their front-end interfaces. Use them to automate manual, repetitive tasks on systems that don't have the right APIs. Developers can integrate robotic tasks into their Appian applications to achieve complete automation.

Learn more about [Appian RPA](rpa-9.17/appian-rpa.html).

### ![Robot Pool](images/object_type_icons/obj_rpdo30px.png) Robot Pool

A [robot pool](rpa-9.17/robot-pool-object.html) enables you to group robots based on their unique roles and capabilities and ensure that there is always a robot available and ready to handle any robotic task execution. With several robots in each pool, each robot pool can even handle multiple executions simultaneously. When you're creating or updating a robotic task, you get to choose the appropriate robot pool responsible for executing the task.

## User objects

The primary purpose of objects in this category is to provide interactive user displays. Use these objects to enable your users to interact with your application.

**Tip:**  A [record type](#record-type) provides some user interaction out of the box, like record views and actions, but the object is primarily a [data-centric object](#data-objects).

User object icons will appear Appian blue in grids and other displays in Appian Designer.

### ![Interface](images/object_type_icons/obj_interface30px.png)Interface

An [interface](interface_object.html) is an object that returns one or more components to display on a record view, Tempo report, or process form. This is the primary object that designers use to show user interfaces to application users.

### ![Report](images/object_type_icons/obj_report30px.png)Report

A [report](Tempo_Report_Design.html) displays data from tasks, records, and other data sources in a single interface for end users to view. Through the use of charts, grids, pictures, and the dynamic behavior that [SAIL](SAIL_Design.html) offers, a report offers a high-level overview of aggregated data.

### ![Site](images/object_type_icons/obj_sites30px.png)Site

A [site](Sites.html) is a customizable user interface where a developer can create focused work environments for signed-in users. When working in a site, users can view and submit tasks, view reports and records, and start actions.

### ![Portal](images/object_type_icons/obj_portal30px.png)Portal

A [portal](portals-home.html) is a public web app that allows users access to Appian workflows and information without having to sign in to Appian. Portal users can submit or view information in a portal, and their actions can start processes in Appian.

A [portal object](portal-object.html) allows you to configure the settings and content for your portal.

### ![Control panel object](images/object_type_icons/obj_control-panel30px.png) Control Panel

A [control panel object](control-panel-object.html) is a set of configurations that make up the underlying structure of the Control Panel workspace. The control panel object allows low-code developers to set guardrails for the configurations to data and interfaces made by business users in the [Control Panel](control-panel.html) workspace.

## Rule objects

Rule-based objects are used in [expressions](Expressions.html) to reference specific values and perform complex operations or queries. Expression rules, decisions, translation sets, and constants are all considered rule-based objects. Rule object icons will appear purple in grids and other displays in Appian Designer.

### ![Constant](images/object_type_icons/obj_constant30px.png)Constant

A [constant](Constants.html) holds a single literal value or list of values. A constant allows you to define a value once and then use it in many places in an application. If the value needs to be updated in the future, it only needs to be updated in one location. Constants are also used to reference other design objects in expressions. The most common uses for constants include:

-   single primitive value
-   a list of text values
-   a reference to an Appian object

### ![Decision](images/object_type_icons/obj_decision30px.png)Decision

A [decision](Decisions.html) is a grouping of business rules that answers a specific question based on inputs. Unlike expression rules, which primarily calculate or manipulate data. Decisions are best used to encapsulate complex, business-specific logic.

Decisions can be called from any expression, so they can be reused across multiple objects throughout the system.

### ![Expression Rule](images/object_type_icons/obj_expression-rule30px.png)Expression Rule

An [expression rule](Expression_Rules.html) is a statement that evaluates to return a value, much like a spreadsheet function.

They are a stored expression that works like an Appian function, except that users can create their own rule inputs (to use as parameters) and definition.

### ![AI Skill](images/object_type_icons/obj_ai-skill30px.png)AI Skill

Use the [AI Skill](ai-skill-object.html) to create, train, and use machine learning models in your applications. The AI Skill interface offers a low-code way to customize a model to your use case and specifications.

For example, train an AI Skill to classify documents that are passed to your process. Use the smart service output to route the process properly.

### ![Translation set icon](images/object_type_icons/obj_translation_set30px.png)Translation set

The [translation set object](translation-set-object.html) is a collection of translation strings that allow you to easily translate new and existing applications in multiple languages. Each translation string is a collection of values translated into multiple languages, and includes the necessary contextual information for developers or translators.

Translation strings can be used in any expression editor throughout an application using the `translation!` domain prefix and a [reference to a specific translation string](reference-translation-strings.html).

## Integration objects

Whenever an application needs to interact with a third-party system or vice versa, developers can use as many as three different type of objects: an integration, a connected system, and/or a web API. Integration object icons will appear bright green in grids and other displays in Appian Designer.

### ![Connected System](images/object_type_icons/obj_connected-system30px.png)Connected System

A [connected system](Connected_System_Object.html) makes it easy to connect to databases and external web services. They provide a central location to store authentication details and connection information. In fact, a number of authentication types can only be leveraged by using a connected system.

You can deploy connected systems across environments alongside an import customization file, allowing you to use different authentication information for each environment.

### ![Integration](images/object_type_icons/obj_integration30px.png)Integration

An [integration](Integration_Object.html) can be used to call external systems and web services from Appian. Integrations can be called in expressions, interfaces, web APIs, and process models to query or modify data in external systems. They can inherit connection details from a [connected system](#connected-system).

### ![Web API](images/object_type_icons/obj_web-api30px.png)Web API

A [web API](Web_APIs.html) provides a way to expose an Appian endpoint to an external system. When a client makes an HTTP request to the given URL, the associated expression is executed and the result is returned to the client. Web APIs can be used to push data to Appian, to pull data from Appian, and even to initiate Appian processes.

## Group objects

Appian manages object permissions through group membership and system roles. Groups and group types are the objects that support security and permissions throughout the application. Group object icons will appear red in grids and other displays in Appian Designer.

### ![Group](images/object_type_icons/obj_group30px.png)Group

A [group](Creating_Groups.html) allows developers to organize users, usually for the purpose of determining what permissions they have to design or use application objects and data. In addition, tasks and News entries can be targeted to one or more groups, as well as to individual users. A group can either be a custom group or use an existing group type (defined below), as well as a list of users and member groups that belong to it.

### ![Group Type](images/object_type_icons/obj_group-type30px.png)Group Type

A [group type](Group_Types.html) is used to organize groups, and can only be created by users of type System Administrator. For example, the Region group type allows a developer to organize their sales teams by creating a different Region group for each sales team, for instance, Commercial West, Commercial East, Midwest.

Group types also define attributes that are shared across groups. For example, the group type Region might have a "regional VP" attribute. Then, each group of that group type would have a different value for the attribute, based on who that region's vice president is.

## Content-management objects

Appian has a robust content management framework that allows developers to store and organize application content. For document management, there are three specific objects involved: knowledge centers, document folders, and documents. Icons for content-management objects will appear dark green in grids and other displays in Appian Designer.

Additionally, process model and rule folders exist to assist in the organization of those objects. Icons for these types of folders will appear the same color as the objects they organize.

### ![Document](images/object_type_icons/obj_document30px.png)Document

A [document](about-doc-management.html) is a file stored in Appian. Appian provides a management system for documents.

While process reports are stored as documents, they have a unique icon and are sorted and filtered as reports.

### ![Folder](images/object_type_icons/obj_document-folder30px.png)Folder

[Folders](folder-object.html) allow you to organize your application content and centralize security settings. Design objects and documents can only belong to one folder at a time.

You can create folders within folders for multiple levels of organization. Items in a folder (including subfolders) are listed in both the folder view and the objects grid in either the **Objects** view or **Build** view.

Security settings for the folder apply to all items within it (with the exception of [Process Model Folders](#process-model-folder)). Folders created within other folders by default [inherit security](object-security.html#security-inheritance) from their parent folder. Edit the security of the child folder to change this option: Inherit security from parent.

There are four types of folders to choose from (**Rule**, **Process Model**, **Document**, and **Knowledge Center**).

#### ![Document Folder](images/object_type_icons/obj_document-folder30px.png)Document Folder

[Document folders](folder-object.html#document-folders) can contain documents or other document folders.

Document folders can only be created within a knowledge center or within another document folder.

#### ![Knowledge Center](images/object_type_icons/obj_knowledge-center30px.png)Knowledge Center

A [knowledge center](folder-object.html#knowledge-centers) stores documents and document folders.

#### ![Rule Folder](images/object_type_icons/obj_rule-folder30px.png)Rule Folder

[Rule folders](folder-object.html#rule-folders) can store the following design object types:

-   Constant
-   Expression Rule
-   Interface
-   Decision
-   Integration
-   Rule Folder

#### ![Process Model Folder](images/object_type_icons/obj_process-model-folder30px.png)Process Model Folder

[Process model folders](folder-object.html#process-model-folders) can only store process models or other process model folders.

**Note:**  Security set for a process model folder is not applied to its contents.

## Notification objects

A feed object is created to support notifications on News in sites or Tempo. The feed icon will appear dark yellow in grids and other displays in Appian Designer.

### ![Feed](images/object_type_icons/obj_feed30px.png)Feed

A [feed](Feeds.html) is a channel for delivering content to the News Feed in Tempo or Sites. Every post or event in the News Feed that isn't directly created by a user has a feed associated with it. Generally, developers use a separate feed for each topic for which their application creates events or comments.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...