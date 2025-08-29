---
source_url: https://docs.appian.com/suite/help/25.3/Glossary.html
original_path: Glossary.html
version: "25.3"
title: "Glossary"
page_id: "Glossary"
section: "Feedback"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Glossary

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

| Term | Description | Category |
| --- | --- | --- |
| Accuracy |
The percentage of the data Appian properly extracts from a source document automatically.

 | Automation |
| Action |

A distinct, single interaction in the robotic task. It is the smallest unit of work in a robotic task. Actions are low-code and configurable by the RPA developer and grouped into modules based on the ways they interact with the screen or host machine. When using Java to create or configure an action, it's called a method.

 | Automation |
| Action Group |

A group of actions in a robotic task. Action groups help you organize actions that work together to achieve a desired outcome. For example, you may want to organize your workflow so that login actions are contained in an action group.

 | Automation |
| Activity |

Work that must be done in a process by either the system (unattended) or users (attended). In the process model, each activity is represented by a node. In the Process Modeler, activities appear as a subcategory of [Standard Nodes](Smart_Services.html#Standard_Nodes) and include the Script Task, Subprocess, and User Input Task.

 | Process Model |
| Activity Class |

Defines the unit of work for a process model activity. It is the basic building block of all execution in the process engine and represents the activity's properties and functionality. All nodes in the Process Modeler are linked to an activity class, including custom smart services.

 | Process Model |
| Activity Class Parameter (ACP) |

Commonly referred to as node inputs, they are containers used to store and input data in an activity class. ACPs are the parameters defined as part of the activity class shipped with Appian, whereas node inputs also refer to any custom node inputs defined by a user. Entering a value in an ACP determines how the activity will execute. The input values can come from a process variable, expression evaluation, constant, or literal value and can be mapped to a process variable.

 | Process Model |
| Activity Class Return Variable |

Commonly referred to as node outputs, they are the values returned by an activity as defined by its activity class shipped with Appian. Custom node outputs are not considered activity class return variables.

 | Process Model |
| Activity-Chain |

A series of tasks linked together to create a wizard through which the user can navigate. Enable activity-chaining, represented by a chain icon, on the flow connector between two tasks. Use when the same user needs to complete a series of tasks. Users move from one task to another using the Next button and, optionally, the Previous button until all activity-chained tasks are completed.

 | Process Model |
| Actor |

Users that act on or are associated with a process. They are defined as variables to be resolved at runtime. For example, the user who starts a process becomes the process initiator (pp!initiator) and inherits any user rights assigned to object role maps within the process. Actors can be referenced in expressions using Actor Functions to return the assigned user and include the following: process initiator, process designer, task assignees, task owner, and task owner's supervisor.

 | Process Model |
| Administrator |

Type of security role given to a user for a specific object. The permissions for an administrator differ for each type of object, but they typically include all possible permissions for the object. This can include the ability to view and modify the object, as well as manage its security settings. Learn more about [object security](object-security.html#permission-levels-in-role-maps).

 | Security |
| Agent |

An application running on a host machine which connects to Appian and executes robotic tasks.

 | Automation |
| Analyst |

Also known as a process analyst, it is one of two roles you can use to open the Process Modeler. Analysts are responsible for creating the high-level design of a process model. They are not responsible for configuring the process model. An analyst can simulate security models and view process reports but cannot grant permissions to others or create/edit/administer processes.

 | Process Model |
| Annotation |

Freeform text that can be added to the Process Modeler canvas and linked to a flow object as needed. This text allows process designers to provide additional information on a process model to all readers of a process model. Learn more about [canvas annotations](process-model-object.html#canvas-annotations).

 | Process Model |
| Apache Kafka |

A distributed messaging and persistence layer that is a part of the [Internal Messaging Service](Enterprise_Architecture_Overview.html#internal-messaging-service), used as transaction log for the Appian Engines.

 | Admin, Security |
| Apache Zookeeper |

A distributed consensus framework, used to coordinate leadership decisions for the [Appian Engines](Enterprise_Architecture_Overview.html#appian-engines).

 | Security, Admin |
| Appian Memory Unit (AMU) |

A unit of measurement for memory usage across various Appian components and objects. AMUs make it easier for developers to compare the memory capacity allocated for things like processes and expression evaluations.

AMUs are equivalent values across systems, so 1 AMU in your development environment is identical to 1 AMU in your production environment. 1 AMU is roughly equal to 1 KB. This comparison is a general approximation and should not be reliably depended on.

 | Admin |
| Appian Portals |

A feature that helps you build public websites connected to your apps using Appian’s low-code development platform. Learn more about [Appian Portals](portals-home.html).

 | Portals |
| Appian Records |

The feature that allows you to converge your system data into a single point of management. With your data in a central location, you can easily adjust your data model, define how users view your data, and integrate enterprise processes so users can take informed action when viewing the data. To leverage Appian Records, start by creating a [record type](Record_Type_Object.html).

 | Data Fabric |
| Appian RPA Console |

Also referred to as the console, this is the Appian RPA user interface where users can view, create, configure, manage, or execute robotic tasks (and other components) based on their assigned permissions and privileges.

 | Automation |
| Application |

Appian object that contains related process models, pages, groups, rules, records, documents, News feeds, reports, and other associated items that make up part of the user experience in Appian. The application can be published to Tempo, which lists the objects on their associated tabs based on the role maps for each object. End users can also access the application using sites.

Grouping design objects in an application container allows you to deploy the application to target environments, either using direct deployment or by exporting and importing the objects as a ZIP file.

Applications have their own security rights independent of the security rights assigned to the objects they contain. Security rights play an important part in successful deployments. See also: [Deployment Security Guidelines](Deploy_to_Target_Environments.html#security)

 | Designer |
| Application User |

Users with this role have access to Tempo, Sites, and embedded interfaces. They can complete any tasks and start processes they have access to, but they do not have access to Appian Designer or the Administration Console. Learn more about the [Application User Role](User_Roles.html#application-user-role).

 | Security |
| Applications View |

The default view in Appian Designer. Allows you to create applications, import applications, and access all applications for which you have permissions in the environment. This view also allows you to connect directly with your fellow developers in Appian Community. Learn more about the [Applications View](applications-view.html).

 | Designer |
| Assignee |

User who is designated with the responsibility of completing a task in a process. Learn more about the [assignment properties of process model activities](Process_Node_and_Smart_Service_Properties.html#assignment-tab).

 | Process Model |
| Assignee Pool |

A collection of all possible assignees who might be assigned a given task. If a node is set to spawn multiple instances, it can be configured to pull a different user from the assignee pool each time it spawns a new instance, or the pool can be configured to allow users from it to accept each task as it becomes available.

 | Process Model |
| Assignment |

The configuration settings that control which particular user or group is responsible for completing a task in a process. Learn more about the [assignment properties of process model activities](Process_Node_and_Smart_Service_Properties.html#assignment-tab).

 | Process Model |
| Async Variable |

A local variable that uses [a!asyncVariable](fnc_evaluation_a_asyncvariable.html) to load data asynchronously from the rest of the interface. Any component that uses the async variable will wait for the data to load and display a placeholder in the meantime.

 |  |
| Asynchronous Subprocess |

A subprocess activity that does not cause the parent process to wait for subprocess completion. The process flow continues immediately after the child process is launched. Learn more about [Subprocess activities](Sub-Process_Activity.html).

 | Process Model |
| Attended Node |

A process model node that requires an assigned user to perform an action before the node activity can complete. Learn more about the [assignment properties of process model activities](Process_Node_and_Smart_Service_Properties.html#assignment-tab).

 | Process Model |
| Author |

Set of user rights that can be given to a user for a Knowledge Center/Folder. Authors of a Knowledge Center/Folder can download and upload files. Learn more about [knowledge center security](folder-object.html#prodlink-knowledge-center-security). For [News feed](News.html) entries, author also refers to the user/group that entered the message or comment into a feed. The author's name appears next to the feed entry with their profile picture.

 | Designer, Security |
| Automatic Group Membership |

One of two membership policies a Group Administrator can configure for a group. Users who can view groups with this policy do not need the Group Administrator's approval to join the group. This membership policy only exists for public groups. Learn more about [group membership policies](Configuring_Security_for_Groups.html#group-membership-policy).

 | Security |
| Award Managment (AM) |

A pre-built, customizable Appian application that allows an organization to streamline the award and contract management tasks of their acquisition lifecycle management process.

 | Solutions |
| Base Record Type |

The record type where a [record type relationship](record-type-relationships.html) is defined. For example, if the Customer record type has a relationship with the Case record type, Customer is the base record type.

 | Data Fabric |
| Build View |

A view in Appian Designer that lets you create and configure design objects in an application. The majority of your work building an application will take place in the Build view. Learn more about the [Build View](build-view.html).

 | Designer |
| Built-In |

Describes document extraction capabilities within the Appian software, with no reliance or dependency on Google capabilities.

 | Automation |
| Business Process |

Set of procedures that coordinate the activities of a group of users, usually initiated by a particular event. Designers can create a process model to define this set of procedures, so it can be run multiple times, modified with version control, and reported on.

 | General |
| Business Process Management (BPM) |

A change management and system implementation methodology to aid the continuous comprehension and management of business processes that interact with people and systems, both within and across organizations.

 | General |
| CampusPass |

A pre-built, customizable Appian application that allows educational institutions to effectively manage and coordinate their return-to-campus processes and and COVID-19 management plan for an entire academic community, quickly response to on-site crisis situations, and manage the on-going health and safety of their entire academic community.

 | Solutions |
| Cascading Problem |

Problem logged in the import log for any item that could not be imported as part of the application because it references an item that failed to import previously. These types of problems do not need to be addressed individually.

 | Admin |
| Casting |

Translating one input type into an output of another type. Learn more about [casting](Casting.html).

 | Expressions |
| Checkbox |

A user interface component that allows a user to make a binary choice, often “yes” or “no.”

In document extraction, checkboxes extract as a label and the user's selection is saved as a Boolean (true for checked and false for unchecked).

 | Automation |
| Classification |

In the Intelligent Document Processing application, the act of identifying a document’s type based on certain traits, and assigning it to a type accordingly. IDP document channels are able to intelligently identify the document’s type if the classification model is configured and trained to do so. Users may also be asked to complete a manual classification task if the model isn’t confident in its ability to classify it automatically.

Classification is optional.

 | Automation |
| Closed Group Membership |

One of two membership policies a group administrator can configure for a group. Only group administrators can add members to a group with this policy. For Team and Personal groups, membership policy is always closed. Learn more about [group membership policies](Configuring_Security_for_Groups.html#group-membership-policy).

 | Security |
| Collaboration Service |

The public Java API for Appian's document management services.

 | Integrations |
| Common Fields |

The two record fields that establish a relationship between two record types. You define the common fields when configuring a [record type relationship](record-type-relationships.html).

 | Data Fabric |
| Community |

One of two top-level file containers for Document Management. Communities are generally associated with public groups in an organization.

Communities can contain knowledge centers and/or other communities. Adding a knowledge center to a community makes the knowledge center accessible to all users in the community, by default. Only community administrators have the ability to associate knowledge centers they create with a community.

 | Deprecated |
| Community Administrator |

User responsible for the content of a community portal home page. Community administrators are able to create content for their communities, are responsible for the content other users upload to the community knowledge centers, and approving or rejecting users who apply for access.

A community administrator is different from a knowledge center or folder administrator in that community administrators can create knowledge centers and can feature files in the Appian Document Management channels that are in their community portal home page. A user who is designated an administrator of a community knowledge center is not necessarily a community administrator.

 | Deprecated |
| Complex Data Type |

Data type, either system or custom, with a complex data structure. Learn more about [Appian Data Types](Appian_Data_Types.html).

 | Data Fabric |
| Complex System Data Type |

Set of system data types shipped with Appian. They include data types such as Label Value and Data Subset. System data types only include a single type of data. They have a complex structure with multiple fields. Learn more about [Appian Data Types](Appian_Data_Types.html#complex-system-data-types).

 | Data Fabric |
| Components |

The pieces of Appian RPA that must communicate with each other to successfully execute a robotic task. This includes agent, robot, and robotic task.

 | Automation |
| Confidence Threshold |

A pre-set value to determine when IDP cannot classify a document automatically. If the auto-classification confidence is below the threshold, for example 90%, IDP generates a task for a human to perform the review manually.

 | Automation |
| Configuration |

Adapting a solution for a range of scenarios by modifying the solution's out-of-the-box, front-end settings. Configurations do not involve code changes.

 | Solutions |
| Connected Claims |

A pre-built, customizable Appian application that enables insurers to streamline their claims process, mitigate claims leakage, and provide an excellent customer experience throughout the claims lifecycle.

 | Solutions |
| Connected Know-Your-Customer (KYC) |

A pre-built, customizable Appian application providing financial institutions with powerful tools in a unified experience to maintain regulatory compliance and complete proper customer due diligence through risk assessment, task management, and more.

 | Solutions |
| Connected Onboarding |

A pre-built, customizable Appian application providing financial service professionals with the tools necessary to efficiently facilitate the onboarding of new and existing institutional customers through task management, onboarding process transparency, and more.

 | Solutions |
| Connected Servicing |

A pre-built, customizable Appian application providing financial institutions with convenient tools to manage an organization's unique customer lifecycle processes through service request tracking, customer information management, and more.

 | Solutions |
| Connected System |

An Appian object that stores authentication and connection information for an external system. They allow you to easily connect to external integrations and data sources. Learn more about [connected systems](Connected_System_Object.html).

 | Integrations, Designer |
| Connected Underwriting |

A pre-built, customizable Appian application providing insurance underwriters with the tools they need to accelerate the underwriting process, extract, ingestion, and monitor submission data, and set priority rules that reduce the time to triage and quote.

 | Solutions |
| Connector |

An arrow between nodes on the Process Modeler canvas, which links nodes together into a specific sequence. A process model must have connectors that link the Start Event to at least one End Event. Connectors are configurable to enable activity chaining and data synchronization between flow objects. This canvas element is sometimes called a _flow connector_.

 | Process Model |
| Constant |

An Appian object that stores a single literal value or a list of values. A constant can be called from any expression, so it can be reused across multiple objects throughout the system. Learn more about [constants](Constants.html).

 | Designer |
| Content Service |

A Java API developed to support management of all Appian content. These interfaces are used by Appian when managing documents, rules, and constants.

 | Integrations |
| Creator |

User logged into the system when a new Appian object is created, such as a group creator, knowledge center creator, or process model creator. All creators are given administrator rights over the object by default.

 | Designer, Security |
| Credential |

A secure way to store usernames or passwords in Appian RPA. Credentials are referenced in robotic tasks, and called at the time of execution, so they can also be useful for developers to store and update this data in one place.

 | Automation |
| Custom Data Type (CDT) |

The metadata format for information you want to use in process applications. [Custom data types](Custom_Data_Types.html) can be created using the Data Type Designer, imported from an XML Schema Definition Language (.XSD) file, imported from a WSDL file using the Call Web Service Smart Service, or with Java code using a plug-in. Unlike system data types, custom types can be modified and deleted.

 | Data Fabric |
| Custom Record Field |

A new record field configured by a developer using a template or free-form expression to manipulate or transform existing data into this new field. [Custom record fields](custom-record-fields.html) can be configured on any record type with data sync enabled.

 | Data Fabric |
| Customization |

Changing a solution for a range of scenarios by modifying or extending the solution's code. Customizations are first implemented in a development environment and typically not supported by available configurations.

 | Solutions |
| Data Mapping |

When you enable data sync for your record type and configure your record fields, Appian automatically creates a mapping between the source schema and the record type schema. Learn more about this [mapping](Records_Monitoring_Details.html#mismatched-schemas).

 | Data Fabric |
| Data Service |

Appian's custom-built data and analytics engine designed to handle both OLTP and OLAP workloads. The architecture of the data service guarantees ACID-compliant transactions while also offering predictable performance across a variety of use cases. Data for record types with sync enabled is stored in the data service, along with other application data and metadata, including user-saved filters for a record list or records-powered grid.

 | Administration, Data Fabric |
| Data Store |

An Appian object that connects Appian to external relational databases in order to store and retrieve application data. The source schema includes the names, types, and uniqueness constraints of all the fields in your source. This schema must match the record type's schema in order for Appian to sync the source data.

 | Data Fabric, Designer |
| Data Sync |

Allows you to operate with the benefits of onsite data, while leaving your source data where it is. When you enable [data sync](about-data-sync.html) on a record type, you are caching your source data in Appian. With a cache of your data, this means Appian will only have to execute queries from the cached data instead of the external source whenever you view or interact with the record data. As a result, data sync enables faster qureies and additional features like record type relationships, custom record fields, and other design accelerators.

 | Data Fabric |
| Data Type |

An Appian object that classifies the properties of another object. These classifications fall into three groups: primitive system data types, complex system data types, and custom data types (CDTs). Learn more about [Appian Data Types](Appian_Data_Types.html).

 | Data Fabric |
| Decision |

An Appian object that is a group of business rules that determine output values based on a set of inputs. Best used to hold complex, business-specific logic. Learn more about the [Decision object](Decisions.html).

 | Designer |
| Default Brand Configuration File |

A properties file which contains the key-value pairs associated with brand content (e.g., organization name, logo, favicon, colors) and images; set to the default branding values that ship with the solution.

 | Solutions |
| Default Filters |

Available on record types without data sync enabled, you can use default filters to specify which records appear in the record list and views based on the conditions you specify.

 | Data Fabric |
| Dependent Rules |

Expression rules and constants used in the definition of a rule you're currently editing.

 | Expressions |
| Dependents |

Objects which depend on the selected object or plug-in. For example, when an interface references an expression rule, the interface becomes a dependent of that expression rule. Learn more about [object relationships](Trace_Relationships_for_Impact_Analysis.html).

 | Designer |
| Deploy |

Moving a set of objects from the source environment to the target environment in order to release updates to your end users. Learn more about [deployments in Appian](Deploy_to_Target_Environments.html).

 | Designer |
| Deploy View |

A view in Appian Designer that can be used to view deployments for an environment or application. When you access this view at the environment level, it contains information about deployments in the current environment. When you access this view from within an application, it contains information about deployments in the current application. Provides a single location for you to see and manage both incoming and outgoing deployments. Learn more about the [Deploy View](deployments-view.html).

 | Designer |
| Deprecated |

When a product feature or application programming interface is slated for removal in an upcoming release and called out as such in the Release Notes. When this notice is added to product functionality, evaluate and redesign your applications as needed so that they continue to function properly once the functionality is removed. See the list of [deprecated features](Deprecated_Features.html).

 | General |
| Design Accelerators |

Features that allow you to configure and build out your application faster. When you enable [data sync](about-data-sync.html) on a record type, you get several design accelerators like auto-generated user filters, suggested relationships, and the ability to generate record actions.

 | General, Data Fabric |
| Designer Interface |

Also known as the Appian Designer, where designers can build, manage, and deploy applications. Learn more about the [Appian Designer](welcome-app-designer.html).

 | Designer |
| Designer User Role |

Users with this role have access to Tempo and the Designer Interface. They can design process models and complete tasks, but they do not have access to the System Administrator Console. Learn more about the [Designer Role](User_Roles.html#designer-role).

 | Security, Designer |
| Desktop Automation |

Automation of routine, repetitive and predictable activities using UI interactions that emulate human actions for applications or browser apps running on a desktop.

 | Automation |
| Developer |

A user with the Designer role, which allows the user to work in the Appian Designer but not in the Admin Console. Learn more about the [Designer role](User_Roles.html#designer-role).

 | General |
| DevOps |

A set of practices that helps foster a culture of collaboration between development (Dev) and operations (Ops) teams. Allows your organization to continuously improve applications for your users by providing a well-defined structure for development and release. Learn more about [DevOps in Appian](devops-with-appian.html).

 | Designer |
| Dialog Box |

A separate display window for user inputs, actions, tasks, or confirmation messages.

 | General |
| Dictionary |

An ad-hoc data structure created inline in an expression. In contrast, a custom data type is a reusable data structure with a specific name and predefined fields. The query expression functions return dictionaries. Learn more about [dictionaries](parts-of-an-expression.html#dictionaries).

 | Data Fabric |
| Discussion Forum |

Appian object that allows users to engage in discussions within the Portal interface on topics they create. Tempo, however, offers many benefits over Discussion Forums, such as mobile support, modern web browser support, improved search functionality, and greater user control through visibility settings and message targeting. When possible, users should engage in discussions on Tempo, rather than through discussion forums.

 | Deprecated |
| Document |

An Appian object that is uploaded as a file. Security on the document can be managed at the document level or folder that contains the document. Learn more about the [documents](about-doc-management.html).

 | Designer |
| Document Administrators |

A deprecated [system group](System_Groups.html) that gives members the right to administer the Document Management area of the system. These members can perform various administrative functions such as creating, modifying, deactivating, and reactivating documents. They can modify documents, users, and move knowledge centers. Document administrators have control over all aspects of Document Management, whereas knowledge center administrators have control over smaller sections of Document Management.

 | Deprecated |
| Document Channel |

A grouping of document types that have their own configurations and security settings for the purposes of processing. This allows various teams using IDP to control access to documents and data that may contain sensitive information.

 | Automation |
| Document Management |

The file storage and management features of Appian. It is a fully integrated collaboration solution that provides version control, user-rights management, and document search features. These files are available from the Documents View in the Designer interface and can be used in links, processes, tasks, and API calls. Learn more about [document management](about-doc-management.html).

 | Designer |
| Document Structure |

How the content in a document is organized. Structures include: structured, semi-structured, and unstructured.

 | Automation |
| Document Type |

A category of document you use in your business operations. For example, a purchase order or invoice.

 | Automation |
| Edit Process |

Act of modifying a process during run-time including the addition, subtraction, or editing of any attribute of a process after it initiates. Edit process can only occur while viewing a process in Edit mode. Users can make changes to the sequence flow or associated forms of an active process.

 | Process Model |
| Editor |

Type of security role given to a user for a specific object. The permissions for an editor differ for each type of object, but they typically only include the ability to view and modify the object, not manage its security settings. Learn more about [object security](object-security.html#permission-levels-in-role-maps).

 | Security, Designer |
| Enabled system locales |

Environment wide settings in the [Admin Console](Appian_Administration_Console.html#internationalization) that determine which languages are supported in the environment.

 | Interfaces, Administration |
| End User |

Users who work with Appian objects (including completing tasks, taking actions, and viewing reports) through Tempo, Sites, and embedded interfaces, but don't maintain or create the Appian objects through Appian Designer. End users need to be created as a [Basic User](User_Management.html) and added to the [Application User system group](System_Groups.html#application-users).

 | General |
| Engine Server |

Real-time in-memory (RAM) databases that also persist all data (database and transaction logs) in a file on disk. These database files use a `.kdb` file extension.

 | Admin |
| Escalation |

Response that occurs when a task is delayed. There are two types of escalation: passive and active. In passive escalation, the process designer designates the amount of time during which a certain task must be completed by and the course of action that triggers in the event that it is not completed in time. Active escalation enables a user with the appropriate permissions to escalate in the event that they feel that a task is not being completed quickly enough. Escalation actions may include re-assignment to another assignee so the delay does not continue. Learn more about [escalation](Process_Model_Recipes.html#escalating-a-task).

 | Process Model |
| Execute |

To trigger the start of a robotic task. It may execute immediately or be queued to begin when conditions are satisfied (ex. the next host machine becomes available).

 | Automation |
| Explicit Non-Viewer |

User who is automatically removed from any other roles. A user can be declared an explicit non-viewer for an entire process or for a particular process node. This provides a way to guarantee that certain users or groups of users will not be able to access a process. If a process contains sensitive information, such as confidential financial data, team members who work for other companies that do not belong to the finance department or are known to be indiscreet can be declared explicit non-viewers through the [Modify Process Security Smart Service](Modify_Process_Security_Smart_Service.html).

 | Security, Process Model |
| Explore View |

A view in Appian Designer that gives you immediate insights into the structure of your application, its packages, and supporting documentation. As you build out your application, this dynamic view will always reflect your application’s latest state and design. Learn more about the [Explore View](explore-view.html).

 | Designer |
| Expression |

Statement evaluated by the rules engine to determine its value. They are similar to a spreadsheet formula, but instead use variables, Appian functions, rules, or constants as inputs to derive a calculated value. Much of the power of Appian expressions come from the rich set of Appian Functions that you can apply to the data entered.

A simple example of an expression in Appian combines text together with a variable. The following expression might be used to create a greeting for an email.

`"Dear "&pv!Title&" "&pv!Name&"," returns Dear Mr. John Smith,`

Learn more about [expressions](Expressions.html).

 | Expressions |
| Expression Editor |

Powerful interface tool that allows you to easily write expressions. The Expression Editor displays the variables and constants available for expression inputs, as well as the many functions and rules that can be used to transform data. It performs basic validation tests on the logic that you enter, such as checking to see that you've closed each open parenthesis. It also offers expression design guidance, best practice patterns that should be implemented in your expressions.

Any text field in Appian that allows you to enter an expression displays the Expression Editor button.

Learn more about the [Expression Editor](Expressions.html).

 | Expressions |
| Expression Rule |

An Appian object that stores an expression so that you can call the expression from other expressions in Appian objects. Learn more about the [expression rule object](Expression_Rules.html).

 | Expressions |
| Feature Preview |

Functionality available in a release that is part of a larger set of functionality that will be available in a future release, but is released now to offer early access to future capabilities. Feature Previews may change without going through the typical deprecation period.

 | Admin |
| Feed |

Appian object that is a channel for delivering content to the News Feed in Tempo or Sites. Learn more about [feeds](Feeds.html).

 | Tempo, Designer |
| Feed Entry |

Anything posted to the [News feed](News.html), either by a user or the system. This includes posts, messages, events, system events, hazards, and comments.

 | Tempo |
| Field |

A single piece of data to be extracted from a document and mapped to a CDT.

 | Automation |
| File |

Any document a user uploads to Document Management. By adding files to Appian, you can share them with other users or store them for quick access from any web connection. Files are stored in folders within Knowledge Centers. Learn more about [document management](about-doc-management.html).

 | Designer |
| Fillable PDF |

Similar to a searchable PDF, this file allows the user to input and save additional information into form fields.

 | Automation |
| Flattened PDF |

A file with no associated text data. It doesn't contain digital text or form fields. Often, these types of PDFs are created from paper documents that have been scanned.

 | Automation |
| Flow Object |

Any object that can be added to the sequence flow of a process model in the Process Modeler, including flow connectors, activities, gateways, and so on. All flow objects are both a notational object and an executable code object.

 | Process Model |
| Folder |

An Appian object that acts as a storage container for documents. Learn more about [folder management](folder-object.html).

 | Designer |
| Follow |

Option given to all users in the system as a way to let them decide which users they receive feed entry posts from. By [following a user](News.html#follow-users), any posts created by that user will show up automatically in your News feed.

 | Tempo |
| Follower |

User that has opted to have posts created by a specific user show up automatically in their News feed. Users can see whether they're following a specific user by looking at the user card or User Profile page of the user in question. If they are following the user, a button displays in grey with the word "Unfollow" allowing them to unfollow the user. Learn how to [follow a user](News.html#follow-users).

 | Tempo |
| Foreign Key |

A column in a data table that provides a link between data in two tables. It acts as a cross-reference between tables because it references the primary key of another table, which establishes a link between them. Foreign keys allow you to enforce [referential integrity](record-type-relationships.html#referential-integrity) when establishing relationships between data.

 | Data Fabric |
| Form |

Mechanism by which a user enters data into a process. The fields in a form can be completed by the assignee while completing the task associated with the node. You create forms using interfaces. Learn more about [interfaces](interface_overview.html).

 | Designer, Interfaces |
| Function |

Methods used to perform data operations. You can use functions within an [expression](Expressions.html) to aggregate data, return users, and more. See a list of all available Appian Functions. Custom Function Plug-ins can also be created by users and made accessible throughout the system.

 | Expressions |
| Gateway |

Category of process model nodes, which evaluate different criteria to determine which path(s) your workflow should follow. Learn more about [gateways](Gateways.html).

 | Process Model |
| Government Clause Automation (GCA) |

A pre-built, customizable Appian application to allows an organization to manage its acquisition process and streamline the creation of contract clauses from a centralized source.

 | Solutions |
| Government Source Selection (GSS) |

A pre-built, customizable Appian application that allows an organization to manage its unique source selection process and streamline its acquisition life cycle management process.

 | Solutions |
| Group |

An Appian object that allows you to create a collection of users. Users in a group have security permissions assigned to them in the role maps for each object in your application. Learn how to [create a group](Creating_Groups.html).

 | Designer, Security |
| Group Privacy Policy |

Setting that determines the viewing policy of a group. Options include low (where all members can see each other) and high (where members cannot see each other). In a high viewing policy, only users or groups that hold Group Administrator or Group Creator rights can view the members. For Personal security settings, the viewing policy is always set to high. Learn more about [group privacy policy](Configuring_Security_for_Groups.html#group-privacy-policy).

 | Designer, Security |
| Group Type |

Expandable definition of a group. All groups come from a group type definition, which can be expanded to include properties and other attributes. For example, a Sales Team may always have an associated Sales Trainer. A group type called Sales Team could then be created with the Sales Trainer Attribute (with a user data type) listed as required. As a result, new Sales Teams you create would then require that a user be assigned to the Sales Trainer Field. Learn more about [group types](Group_Types.html).

 | Designer, Security |
| Hazard Alert |

System-generated comment on an event posted in Tempo that highlights a problem with the process in question. Hazard alerts are used to facilitate a coordinated response. Learn more about [hazard alerts](Post_Hazard_to_Feed_Entry_Smart_Service.html).

 | Tempo |
| Header Bar |

The header bar is common to all views in Appian Designer and helps you to access key information or complete common tasks. The elements of the header bar differ slightly depending on whether you're viewing the bar in an application or at the environment level. For a complete list of elements in the header bar, see [Common View Elements](common-view-elements.html#header-bar).

 | Designer |
| Host Machine |

In Appian RPA, a physical or virtual machine where the robotic task executes. A host machine connects to the Appian RPA console via the agent.

 | Automation |
| Human Task |

Manual activities that have yet to be automated or that require human involvement. For example, User Input Tasks or Interfaces (forms).

 | Automation |
| Impacted Rules |

Expression rules that use the rule or constant you're currently editing as part of their definition.

 | Expressions |
| Import Customization File (ICF) |

A file used during application deployment that allows you to import and change the values of certain properties. Use an ICF for values that vary between environments or not exported for security reasons, such as passwords. Learn how to [manage the import customization file](Managing_Import_Customization_Files.html).

 | Designer, Admin |
| In-flight Processing |

Former term for modifying a process during run-time including the addition, subtraction, or editing of any attribute of a process after it initiates. Now referred to as Edit Process.

 | Process Model |
| Index Value |

Number paired with each value stored in a multiple value variable. They allow you to select a value using its paired index number. For example, if you have a multiple process variable called pv!color that contains the values red, orange, and yellow, you can select orange using its paired index value using the following expression: `pv!color[2]`. Learn more about [indexing](parts-of-an-expression.html#accessing-array-items-at-an-index).

 | Expressions, Process Model |
| Information Pane |

A pane in the [Build View](build-view.html) of Appian Designer that shows information about your application. This includes the:

-   Application description.
-   Deployment packages.
-   Groups used in the application.
-   Application documentation.

 |  |
| Inheritance |

The adoption of a parent object's security settings by another object encapsulated within the parent. For example, by default, a folder inherits its Knowledge Center's security settings from the folder where it's contained. Designers can decide whether or not an object should inherit the security settings of its parent object through the objects properties. Learn more about [security inheritance](object-security.html#security-inheritance).

 | Security |
| Initiator |

Role assigned to the user who starts a given process.

 | Process Model |
| Input Mapping |

The association of a process variable or parameter in a parent process with a process parameter for a link or subprocess. This allows the process parameters/variables used in the parent process to be used in the link and subprocesses. The variables to be mapped are defined in the parent process and the mapping is configured in the link or subprocess.

 | Expressions, Process Model |
| Integration |

An Appian object that can be used to call external systems and web services from Appian. Learn how to [choose the right type of integration](Choosing_the_Right_Type_of_Integration.html).

 | Integrations, Designer |
| Intelligent Contact Center (ICC) |

A pre-built, customizable Appian application that allows an organization to transform its contact center by enabling users to quickly deliver an integrated customer experience across multiple communication channels and customer touch points.

 | Solutions |
| Interface |

An Appian object that returns one or more components to display on a record view, Tempo report, or process form. Learn more about the [interface object](interface_object.html).

 | Interfaces, Designer |
| Internal Messaging Service |

Responsible for relaying data between different components of Appian’s architecture. It is implemented using Kafka which is an open source distributed messaging system with publish-subscribe semantics and Zookeeper which coordinates leader election within the Kafka cluster.

Currently the [Internal Messaging Service](Enterprise_Architecture_Overview.html#internal-messaging-service) is used as a transaction log for the Engines and the Data Service.

 | Admin |
| Key-Value Pair |

A match between two data elements (a label and value) that are extracted from a document.

 | Automation |
| Knowledge Center |

The parent folder for document folders in Document Management. You must have the correct security authorization to create and delete folders within a knowledge center. By default, document folders inherit security from their parent knowledge center. Learn more about [folder management](folder-object.html).

 | Designer |
| Knowledge Center Administrator |

User with all possible permissions to the content of an individual knowledge center. Users with this role could view all content, add new files/folders, delete files/folders, add/remove users, and change user access levels. This deprecated user role has been replaced by **Administrator** permissions for the knowledge center object. Learn more about [object security](object-security.html#permission-levels-in-role-maps).

 | Designer, Admin |
| Kougar |

The Appian Connection Manager. This component manages each connection made to the Appian Engines.

 | Admin |
| Kudos |

Type of feed entry that can be added to the News feed. It provides a way for users to publicly give praise to another user for work he/she has done. Kudos are also visible from a user's User Profile page along with a count of how many he/she has received. Learn more about [kudos](News.html#kudos).

 | Tempo |
| Label |

The extracted constant that defines a part of a data set. This information isn’t changed based on the user’s selection or input. It is matched with the value to create a key-value pair in the extracted data.

 | Automation |
| Labels |

The name assigned to a connector between nodes in a process model as well as the name assigned to a field in a form. Both types of labels are optional, but recommended to designate the purpose of a given node or field, respectively.

 | Process Model |
| Lanes |

Grouping element used to organize activities and task assignments within a process model. You can add either horizontal or vertical lanes and can assign the lanes to specific users, teams, groups, or departments. Sometimes referred to as a _swimlane_.

 | Process Model |
| Learn More Pane |

A pane in the [Applications View](applications-view.html) of Appian Designer that allows you to easily navigate to more views and information, and connect with Appian Community.

 | Designer |
| Linked Process |

Process initiated during or upon the completion of a parent process and does not stop the flow of the parent process. Also known as an asynchronous subprocess. Linked processes must be configured through the Subprocess Activity.

 | Process Model |
| Local ID |

Number value by which an Appian object (such as documents, knowledge centers, groups, and users) is referenced on an Appian server. Unlike UUIDs, the local ID may change from one Appian server to another.

 | Designer |
| Local variable |

A specific type of variable that is only available within the context of a particular expression and can only be accessed within the function that defines it. Learn more about [local variables](Local_Variables.html).

 | Expressions, Interfaces |
| Locale |

The name given to a set of system settings that pertain to a specific country or region. These settings include the text labels, descriptions, and messages that appear in your process applications, as well as certain display preferences (such as date and time formatting). The primary system locale is set by the system administrator during installation in the `custom.properties` file. Learn how to change your [language settings](Appian_Administration_Console.html#internationalization).

 | Admin |
| Locked Message |

Type of message users can add to the News feed that restricts the audience to only those users and groups targeted as the audience when the message was created. Learn more about [messages](News.html#send-a-message) on the News feed.

 | Tempo |
| Many-to-One Relationships |

For [custom data types](Custom_Data_Types.html), a many-to-one relationship is when many rows in a data table are related to one row in the related data table. For [record type relationships](record-type-relationships.html), a many-to-one relationship is when many records in the base record type are related to one record in the related record type.

 | Data Fabric |
| Mapping |

The act of matching data extracted from a field in a document to a field in a CDT.

 | Automation |
| Message |

Type of feed entry that users can add to the News feed and target to specific users and/or groups. Only the users and groups targeted can see it or search for it. Groups that can be targeted are limited to those belonging to the [Tempo Message Audience Group](System_Groups.html#tempo-message-audience-groups). Messages can be locked so only the original target audience sees it or unlocked to allow users to add additional users and groups to the message. Learn more about [messages](News.html#send-a-message) on News feeds.

 | Tempo |
| Method |

Similar to an action in Appian RPA, this is a distinct, single interaction in the robotic task. However, a method is developed using Java.

 | Automation |
| Mobile site task list |

A configuration in a [site object](sites_object.html#configurations) that allows you to enable a task list for a site in Appian Mobile. This is one way to display offline tasks in Appian Mobile.

 |  |
| Module |

A group of actions or methods that interact with the screen or robot in similar ways, or are related by some other common concept. For example, the Browser module contains actions that enable a robot to interact with a web browser and elements within it.

 | Automation |
| Monitor View |

A view in Appian Designer that can be used to monitor an environment or application. When you access this view at the environment level, it contains information about the health and performance of the current environment. When you access the view from within an application, it contains information about the health and performance of the individual application. Helps you keep an eye on health and activity indicators for your applications. Learn more about the [Monitor View](monitoring_view.html).

 | Designer |
| Multiple Node Instances (MNI) |

Process configuration that starts the same process flow object more than once using the same flow token. This behavior is configured on the Other Tab of the activity properties dialog box. MNI can be used to recreate the same task using a looping flow, run the same task repeatedly on a schedule, assign the same task to all members in a group, assign a task for each item in a variable, or update an array. Learn more about [Multiple Node Instances](Process_Model_Recipes.html#using-multiple-node-instances-in-your-process-flows)

 | Process Model |
| Navigation Pane |

The navigation pane is present in all views in Appian Designer and helps you to navigate to different views. The elements of the navigation pane differ slightly depending on whether you're viewing the bar at the environment level or in an application. For a complete list of elements in the navigation pane, see [Common View Elements](common-view-elements.html#navigation-pane).

 | Designer |
| Nested Function/Rule |

Function or rule used as the argument for another function or rule in an expression. Nested functions and rules are evaluated in order by argument before the parent function is evaluated. For example, in the following expression, the supervisor() function is nested within the user() function:

`=user(supervisor(pp!initiator), "firstName")`

 | Expressions |
| Nested Relationships |

A relationships defined on a related record type. When you define a [record type relationship](record-type-relationships.html), you can reference fields from a related record type or from a nested relationship. For example, `recordType!Customer.relationships.orders.relationships.orderItems.fields.name`.

 | Data Fabric |
| Node |

Object in the Process Modeler that represents a step in a process, such as an activity, event, or gateway. Nodes can be unattended (an automated task) or attended (requiring user interaction).

 | Process Model |
| Node Input |

Container used to store data in a process activity. When a user enters data into a form, it is saved in the associated node input. This data is configured through the Data tab of the node's dialog box and typically mapped to a process variable. When creating your form, the interface expression on the Forms tab of the node's dialog box lets you identify the specific node input to store the entered data in. If you want to update a process variable without using a form, create an expression as a node output. Learn more about [node inputs](Working_with_Data_in_Process.html#node-inputs--activity-class-parameters).

 | Process Model |
| Node Output |

Return value generated when an activity in a process completes. Outputs are listed on the Data tab of the activity's dialog box. You can create custom outputs that use rules or expressions to store logical results as process variable values. If a process variable targeted by your output accepts multiple values, only one value can be appended per activity. You cannot create different outputs on the same activity that append values to the same variable. Learn more about [node outputs](Working_with_Data_in_Process.html#node-outputs).

 | Process Model |
| Notification |

System-generated message sent to users through a feed entry or email. Notifications include information related a user's account, groups, knowledge centers, news feeds, tasks, and process status. Users can control their notification frequency and delivery for specific notification types through notification rules.

Formerly known as an alert.

 | Admin |
| Object |

General term for all components that make up the end user experience. It can refer to anything from an entire application to a node within a process.

 | Designer |
| Objects View |

A view in Appian Designer that displays all design objects and plug-ins in your Appian environment. This view is useful for finding a specific object quickly, so you can view and edit the object, or add the object to your application. Learn more about the [Objects View](objects-view.html).

 | Designer |
| Offline Custom Task Report |

An [offline-enabled interface](how-offline-mobile-works.html#the-building-blocks-of-offline-forms) that uses [process task links](Process_Task_Link_Component.html) to display task information on a [site page](sites_object.html#pages). This an alternative to using the out-of-the-box mobile site task list to display offline tasks.

 |  |
| Offline Evaluator |

A mechanism in offline mobile that reevaluates offline-enabled interfaces directly on a mobile device, enabling users to submit forms without a connection to the server.

 |  |
| Offline Form |

An [offline-enabled interface](how-offline-mobile-works.html#the-building-blocks-of-offline-forms) set up as an offline site action or task.

 | Offline Mobile, Interfaces |
| Offline Task |

An [offline-enabled interface](how-offline-mobile-works.html#the-building-blocks-of-offline-forms) configured as a [user input task](Configuring_the_User_Input_Task.html) in a process model.

 |  |
| Offline Reevaluations |

Some functions and components work in offline forms only when they are placed at the top of the form and loaded while the user is online. Offline reevaluations are not supported for these functions because if the user refreshes the form while offline, it will not be able to load the data.

 | Offline Mobile, Interfaces, Expressions |
| Offline Site Action |

An [offline-enabled interface](how-offline-mobile-works.html#the-building-blocks-of-offline-forms) configured as an **Action** type [site page](sites_object.html#pages). Action pages display a [start form](process-model-object.html#process-start-form-tab) for a process model that allows users to initiate a process after filling out a form.

 |  |
| One-to-Many Relationships |

For [custom data types](Custom_Data_Types.html), a one-to-many relationship is when one row in the data table is related to many rows in a related data table. For a [record type relationships](record-type-relationships.html), a one-to-many relationship is when one record in the base record type is related to many records in the related record type.

 | Data Fabric |
| One-to-One Relationships |

For [custom data types](Custom_Data_Types.html), a one-to-one relationship is when each row in the data table relates to exactly one row in the related data table. For [record type relationships](record-type-relationships.html), a one-to-one relationship is when each record in the base record type relates to exactly one record in the related record type.

 | Data Fabric |
| Operations Manager |

Appian RPA user type. This user type can't create or edit robotic tasks, users, or robots. Instead, operations managers can execute robotic tasks, monitor the execution, and view results. This role serves as operational support through routine troubleshooting.

 | Automation |
| Optical Character Recognition (OCR) |

Software that recognizes text within a digital image. This technology is well-suited for unstructured documents, but it is less accurate and requires more maintenance than purpose-built document extraction models.

 | Automation |
| OS User |

A user account on the operating system of a host machine.

 | Automation |
| Package |

A collection of Appian application changes that a developer can deploy to another environment. Learn more about [packages in Appian](prepare-deployment-packages.html).

 | Designer |
| Palette |

A section with configuration options in designers. For interface designer, the palette contains interface components that can be dragged and dropped into the interface. For the Process Modeler, the palette contains all nodes available for use in a process model. Learn how to [use the palette](working_in_design_mode.html#using-the-palette).

 | Interfaces, Designer, Process Model |
| Parent Group |

A group that consists of one or more other groups. When you select a group as a parent, the new group's members also become members of the parent group. Only public and restricted groups can be added to a parent group. For example, a Business Development Group might need child groups named Marketing and Sales. If so, the Business Development Group would be selected as a parent group when creating the Marketing and Sales Groups.

 | Designer, Security |
| Parent Process |

Process model that contains a Subprocess Activity. It is configured to start another process model (known as the subprocess) during its own process flow.

 | Process Model |
| Participating View |

A view available on the News tab of Tempo that displays only feed entries in which the logged-in user is a part of the feed entry conversation, such as authoring it, commenting on it, or being part of the target audience. Learn more about the [Participating view](News.html#participating).

 | Tempo |
| Pattern |

A combination of components and dynamic expressions to achieve common user-interface designs.

 | Interfaces |
| Performance Testing |

Testing an application and its processes to ensure that it will scale and behave as expected during peak usage or in-production scenarios.

 | Designer |
| Permission Tag |

Flexible security mechanism in Appian RPA that determines which components can interact with each other. To make a user, robotic task, robot, queue, or credential visible to another component, both must share at least one permission tag.

 | Automation |
| Portal |

A web app users can access without signing in to Appian. At a minimum, two objects are required to create a portal: a portal object to configure the settings for your portal and a primary interface to use as the content of your portal. When you publish a portal, Appian bundles up the portal object, the primary interface, and all of the objects used by the primary interface, such as child rules, integrations, and record types. It then publishes them all as a cohesive serverless web app called a portal. Learn more about [Appian Portals](portals-home.html).

 | Portals |
| Portal Object |

An Appian design object that contains all of the settings and content for a portal, including configurations, service access information, branding, and progressive web app (PWA) settings. Learn more about the [portal object](portal-object.html).

 | Designer, Portals |
| Portal Publishing Manager \[Deprecated\] |

**\[Deprecated\]** An application that allows you to update and delete portals that were created using the Portal Publishing Manager, as well as view details for those portals.

 | Portals |
| Portals Publishers Group \[Deprecated\] |

**\[Deprecated\]** A group that allows you to set security for which users can update and delete portals in the Portal Publishing Manager. Group membership is set at the environment level, so everyone in this group has access to update and delete any portal within the Appian environment. This is an out-of-the-box group that was added to your Appian environment when the Portal Publishing Manager was added to it.

 | Portals |
| Positional Extraction |

Ability to extract data from a document based on the data's location in a document. Appian can use positional extraction if it has processed the documents and learned from the results previously.

 | Automation |
| Post |

Type of feed entry that can be added to the News feed. A post displays on the News feed of any users that follow the feed entry author as well as any users or groups the author targets with the entry. All users can search for a post. Learn how to [create a post](News.html#create-a-post).

 | Tempo |
| Precedents |

Objects or plug-ins that a design object or application configuration relies on. For example, an interface calls a constant and a plug-in. As a result, the constant and the plug-in are precedents of the interface.

 | Designer |
| Preview API |

Functionality that will be available as part of the public API in a future release, but is released now to offer early access to future capabilities. Preview APIs may change without going through the typical deprecation period and might not be compatible with the final public API that evolves from them.

 | Integrations |
| Primary Key |

A column in a data table designated to uniquely identify each row in a data table. Learn more about [primary keys](Mapping_CDTs_to_Pre-defined_Database_Tables.html#primary-keys).

 | Data Fabric |
| Primary Problem |

Problem logged in the import log for any item that could not be imported as part of an application and the reason why it failed to import. This type of problems should be addressed individually before attempting to import the application again.

 | Admin |
| Primary system local |

The default locale for users who have not selected their own preferred user locale. This locale controls the language of text and the format of dates, times, and numbers. See the [Admin Console](Appian_Administration_Console.html#internationalization) page for more information.

 | Interfaces, Administration |
| Primary translation locale |

The default locale for the [translation set object](translation-set-object.html). It determines which locale value is required when creating translation strings. If a translation string doesn't have a value in the user's locale, it uses the value for the primary translation locale.

 | Interfaces |
| Primitive System Data Type |

Set of system data types shipped with Appian. They include data types such as Boolean and Text. Primitive system data types only include a single type of data. They can contain either a single value or multiple values. Learn more about [Appian Data Types](Appian_Data_Types.html#primitive-system-data-types).

 | Data Fabric |
| Priority |

Configuration option for a process that indicates its relative importance over other processes. Users can filter tasks by priority in order to complete the high priority items first. Depending on configuration settings, users can also escalate a task by changing its priority. Learn how to [change the priority level](Process_Model_Recipes.html#escalating-by-raising-or-changing-task-priority) of a task in a process model.

 | Process Model |
| Process |

One instance of a process model. Sometimes called a _process instance_ or _instance_. Each process can have its own security settings separate from the process model and can be monitored and edited in real time in Appian Designer. Learn more about [monitoring processes](Monitoring_and_Editing_Processes.html).

 | Process Model |
| Process Model |

An Appian object that consists of process nodes, flow connectors, user and group assignments, data, and rules created through the Process Modeler. Learn more about [process models](process_model_overview.html).

 | Process Model |
| Process Model Properties |

System-generated variables that reference certain process model attributes. Every process model created with the Process Modeler has properties that can be used within rules and functions, such as the creator, name, and version. Learn more about [process model properties](Process_and_Report_Data.html#process-model-properties).

 | Process Model |
| Process Modeler |

The Process Modeler is a Business Process Modeling Notation (BPMN) flowchart and development tool that allows designers to create executable process models through a drag-and-drop interface and standard notation. Designers drag nodes onto the canvas, modify the node's specific configuration options, and connect it to other nodes as part of the intended flow. All process models created through the Process Modeler can be developed, tested, and monitored through the tool.

 | Process Model |
| Process Properties |

System-generated variables that reference certain attributes of a process. Every process started in Appian has variables that can be used within rules and functions, such as the initiator, designer, and deadline. Learn more about [process properties](Process_and_Report_Data.html#process-properties).

 | Process Model |
| Process Report |

An Appian object that displays process data from process models, processes, and tasks. Learn more about [process reports](Process_Reports.html).

 | Process Model |
| Process Tasks |

A process activity that is assigned to a user or group of users or completed using system logic. Users complete them through a form.

 | Process Model |
| Process Upgrade |

Modifying all active processes for a process model to match the most recently published version of that process model. This action is different from the Edit Process functionality, which only allows you to edit one process instance at a time and requires you to manually find and enter the changes into the process. Learn more about [process upgrade](Process_Upgrade.html).

 | Process Model |
| Process Variable |

Container for data associated with a process that can be accessed throughout the lifecycle of the process. A process variable is the means by which data gets transferred between nodes in your process model. For instance, in a process that calculates the interest of a bank account, interest information is stored in process variables. When an email is sent to the user listing her interest, the process variable is used to add this data to the email.

You can also perform different operations on process variables using rules and expressions. Process variables are a data source for generating reports. In an attended task, form data is stored in node inputs that are mapped to process variables. When an activity completes, it may generate return values as node outputs mapped to process variables. At the start of a process, you can use a start form to store data in process variables without using node inputs.

Learn more about [process variables](process-model-object.html#variables-tab).

 | Process Model |
| Process Versioning |

Means of tracking several editions of a process model. It is designed to prevent the loss of other user's work if there are multiple users editing a process model. Different versions of a process model can be managed within the Process Modeler. Processes can run on different versions of the same process models. Each version has its own security role map. Learn more about [process versioning](process-model-object.html#versions).

 | Process Model |
| Published Process Model |

Version of the process model that has been validated and marked as ready for execution. Only published process models can be added to applications.

 | Process Model |
| Query Rule |

Query created by a user that retrieves data from relational databases and is saved to the system with a user-defined name, description, definition, and central location. Rules can be reused throughout the system by any user with at least Viewer rights to it. They are managed and stored within the Rules and Constants folder in the Designer Interface.

 | Deprecated |
| Quick Task |

An assigned activity that does not have to be part of a sequential process flow. This activity is initiated on an ad-hoc basis. When added as part of a published application, they appear on the Tasks tab of Tempo for users with permissions to start them.

 | Process Model |
| Read-Only |

A state in which objects or fields displays data or values, but don't allow for the data or values to be edited within the object or field itself. See [Read-Only Grid](Paging_Grid_Component.html).

 | Interfaces, Designer |
| Reassignment |

When a task that was assigned to one user is assigned to a different user either manually by the original assignee or automatically through a configuration option for the activity. Activities must be configured on the Assignment tab to allow for reassignment. Learn more about [task reassignment](Tasks.html#reassigning).

 | Process Model, Tempo |
| reCAPTCHA |

A service from Google that works with Appian Portals to help protect your public websites from potential spam and abuse. Use the [Google reCAPTCHA connected system](google_reCAPTCHA.html) to connect the Google reCAPTCHA service. To learn about using reCAPTCHA in Appian Portals, see [Configuring reCAPTCHA](recaptcha.html).

 | Portals |
| Recipe |

Pre-made expressions that you can copy into objects in your own applications.

 | Expressions |
| Recipient |

User or group targeted to receive a feed entry message when the message is created. Learn more about the [News feed](News.html).

 | Process Model, Tempo |
| Reconciliation |

The manual task of confirming or updating data Appian extracted from a document. Functionally, users compare the data that was extracted to an image of the uploaded document. When reconciliation occurs, Appian learns how to map the data in documents to the proper fields in the corresponding data type. Over time, this will make auto-extraction more accurate and reconciliation easier and less frequent.

The reconciliation task’s primary purpose is for the user to validate or correct the results of extraction.

 | Automation |
| Record |

Once you [configure the source of a record type](configure-record-data-source.html), each row of data is displayed as a record. Each record is made up of [record views](record-view.html) and [related actions](record-actions.html) to provide a more comprehensive view of your enterprise data. For example, a Customer record type includes a record for each customer in the system, where each record displays a Summary view with the customer's information and a related action to update the customer's information.

 | Data Fabric |
| Record Fields |

The fields in your record type. You can reference record fields throughout your application using the recordType! domain. For example, `recordType!Customer.fields.firstName` will return data from the firstName record field.

 | Data Fabric |
| Record List |

Displays all of the records for a given record type. By default, each record type has a [record list](record-list.html). This list displays multiple records in a single, drillable list that users can search and filter to find the records they need.

 | Data Fabric, Interfaces |
| Record List Action |

Links to process models the user can start directly from the record list. By default, [record list actions](record-actions.html#record-list-actions) display on the record list. Optionally, developers can also configure record list actions to display in interfaces using a [Record Action component](Record_Action_Component.html).

 | Data Fabric, Process Model |
| Record Type |

The Appian object that allows you to leverage Appian Records functionality. The record type is where you define your record data, configure record views and record actions, and create the record list and related user filters. Learn more about the [record type](Record_Type_Object.html).

 | Data Fabric, Designer |
| Record Type Relationship |

A relationship established between a record type and a related record type. Both record types must have [data sync](about-data-sync.html) enabled to create a [relationship](record-type-relationships.html). Once you define a relationship, you are effectively creating a link from the record type to the related record type. This link is part of the record type's data model, and it allows the record type to access the record fields and relationships defined on the related record type.

 | Data Fabric |
| Record View |

An interface designed to allow users to view data for a specific record. Users access views by selecting a record from the record list. An expression configured as part of the record type determines the data that displays for each record. Related actions are also accessed from record views. Learn more about [record views](record-view.html).

 | Data Fabric, Interfaces |
| Record-Level Security |

Allows you to specify who can view which records. You can configure record-level security on your record types with data sync enabled using security rules or a security expression.

 | Data Fabric |
| Rejection |

When a user assigned to a task declines to complete a task. You must configure process activities to allow for rejection and to determine the result that occurs upon rejection. Learn more about [activity configuration](Process_Node_and_Smart_Service_Properties.html#attended-activities).

 | Process Model |
| Related Action |

Links to process models that the user can start directly from a record using information from that record. We call that information the context for the [related action](record-actions.html#related-actions). By default, related actions display in the Related Actions view. Optionally, you can configure related actions to display in other record views using [Related Action Shortcuts](Record_Action_Component.html).

 | Data Fabric, Process Model |
| Related Record Fields |

The fields in a related record type. To use related record fields, your record type must have [data sync](about-data-sync.html) enabled and have a [relationship](record-type-relationships.html) with another record type. You can reference related record fields throughout your application using the recordType! domian. For example, `recordType!Customers.relationships.cases.fields.title` will return data from the title related record field.

 | Data Fabric |
| Report |

An Appian object that displays data from tasks, records, and other data sources in a single interface for end users to view and analyze. Learn how to [build reports from records](report-with-records.html).

 | Interfaces, Designer, Data Fabric |
| Report Context |

The process or process model selected as the data source for your process report or the user or a group selected as the data source for your task report. Learn more about [process reports](Process_Reports.html).

 | Interfaces, Designer |
| Repository |

Where Appian RPA Java code is stored. Java developers deploy code to the repository when they develop or modify code for robotic tasks. When a robotic task is executed on a host machine, the Java code is also deployed from the console repository to the agent that connects the host machine to the console.

 | Automation |
| Requirements Management (RM) |

A pre-built, customizable Appian application that allows an organization to manage their unique requirements process that starts the acquisition process. A comprehensive view of each requirement allows teams to easily manage, collaborate, and execute on all requirements in their acquistion process.

 | Solutions |
| Robotic Task |

A robotic task comprises actions, which are the steps in the robotic task definition. Robotic tasks are executed locally on a host machine by an agent.

 | Automation |
| Robotic Task Definition |

The series of actions that should be performed in a robotic task. The definition is defined using the robotic task designer.

 | Automation |
| Robotic Task Designer |

In the Appian RPA console, the area of the robotic task configuration where a user can create, configure, and order actions in a robotic task definition.

 | Automation |
| Robotic Workforce Manager (RWM) |

A pre-built, customizable Appian application to orchestrate enterprise automation requests and implementations. Using built-in reporting, you can also optimize automations to be as efficient and valuable as possible.

 | Solutions |
| Role Map |

The access control list for each Appian object with managed user rights. Learn more about [role maps](object-security.html#groups-and-role-maps).

 | Security |
| Rule Input |

An input that allows you to pass data into and out of interfaces, process models, and expression rules.

 | Expressions, Interfaces |
| Searchable PDF |

A file that contains digital text data that can be highlighted, copied, searched, and accessed programmatically. This type of PDF has undergone previous processing or was saved from a word processor.

 | Automation |
| Section |

A subset of the overall robotic task definition to organize a group of actions. Default sections include Setup, Main, and Clean up.

 | Automation |
| Security Assertion Markup Language (SAML) |

Industry-standard XML format, which allows secure web domains to exchange user authentication and authorization data. Using SAML, an online service provider (such as Appian Cloud) can contact a separate online identity provider (such as your organization's user authentication system) to authenticate users who are trying to access secure content. Learn how [SAML works with Appian](SAML_for_Single_Sign-On.html).

 | Security, Admin |
| Security Conditions |

When you configure a security rule, you can add security conditions to determine which records specific users can view. Security conditions are made up of fields, operators, and values. You can select fields from the record type or a related record type, and depending on the selected field, your operator and value options will change.

 | Data Fabric |
| Security Expression |

Allows you to create a series of filter conditions using [a!queryFilter()](fnc_system_a_queryfilter.html) or [a!queryLogicalExpression()](fnc_system_a_querylogicalexpression.html) to determine which records are available to users based on the conditions you specify. Once you save the record type, your record-level security is automatically applied anywhere you reference the record type.

 | Data Fabric |
| Security Rules |

Allows you to specify who can view which records using a guided experience. You can specify users found in groups, users found in fields, or users who can view related records. Once you specify who should see the records, you can further specify which records they can view by adding security conditions. You can test your security rules directly in the record type configuration and once you save, your record-level security is automatically applied anywhere you reference the record type.

 | Data Fabric |
| Self-Assembling Interface Layer (SAIL) |

The underlying technology that powers Appian Interfaces. Learn more about [SAIL](SAIL_Design.html).

 | Interfaces |
| Semi-structured |

Documents that include similar pieces of information, but in varying layouts. Invoices, receipts, and utility bills are good examples of documents with semi-structured data. Appian’s document extraction features are well equipped to identify and extract semi-structured data. Through AI and machine learning, the services improve as you process additional documents.

 | Automation |
| Sequence Flow |

Combination of nodes and flow connectors in a process model. The sequence flow allows you to easily design and redesign the flow objects that execute in your process applications. Each sequence flow must have a Start Event and at least one End Event.

 | Process Model |
| Service Accounts |

A user account that belongs to the [Service Account Role](User_Roles.html#service-account-role) and [Service Accounts system group](System_Groups.html#service-accounts). You can use service accounts with an API key to invoke a web API or with a portal to access documents or data in the platform. By default, service accounts have [basic user permissions](User_Management.html). You can set additional permissions and security for service accounts by adding the accounts to [groups](Group_Management.html). Service accounts can’t log into Appian and cannot be automatically deactivated due to inactivity.

 | Portals |
| Service Manager |

A process that sits between the application server and the Appian Engines that coordinates load balancing calls across the engines, engine status monitoring, and checkpointing.

 | Admin |
| Simple Data Type |

Data type, either system or custom, with a simple data structure. Learn more about [Appian Data Types](Appian_Data_Types.html).

 | Data Fabric |
| Single Sign-On (SSO) |

Software process that allows users to sign in to different sites and applications without having to maintain separate credentials for each one.

 | Security |
| Site |

An Appian object that is a customizable user interface where an Appian developer can create focused work environments for their user. Learn more about [sites](sites_object.html).

 | Designer |
| Smart Service |

Process activity that appears in the Process Modeler along with other standard activities, events, gateways, and rules. These activities allow you to easily configure services for process analytics, communication, feeds, people management, integration, document generation, document management, and process management. You can also create your own reusable code objects that appear as Custom Smart Service Plug-In in the Process Modeler for use by any process designer. Learn more about [smart services](Smart_Services.html).

 | Process Model |
| Social Task |

Type of task that can be created from the News tab that allows a user to send a task to another user. It provides a way for users to collaborate and assign work in an ad-hoc manner. Social tasks assigned to a user are accessible from their Tasks tab within Tempo for reviewing, commenting on, and closing. Learn more about [tasks](Tasks.html).

 | Process Model, Tempo |
| Solution |

A product designed to solve a specific industry need or business problem.

 | Solutions |
| Solution Suite |

A group of different but interrelated solutions that can be used independently or together.

For example, the Government Acquisition Management suite includes Award Management, Requirements Management, Government Clause Automation, and Government Source Selection.

 | Solutions |
| Solutions Customization Suite |

The standalone Appian Site installed on a development environment where Low-Code Developers can perform supported customizations for an Appian solution.

 | Solutions |
| Sync Filters |

Filters that allow you to determine which rows of data from your source are synced in the record type. When a sync filter is applied, only the data that meets the specified criteria will be available in the Appian system and visible to end users. Learn more about [sync filters](records-filter-source-data.html).

 | Data Fabric |
| Straight-through Processing |

Document data that is extracted with 100% accuracy and eliminates the need for a reconciliation task.

 | Automation |
| Structured |

Information in the document is arranged in a fixed layout. Tax forms, passport applications, and hospital forms are good examples of documents with structured data. Appian can extract data from these types of documents easily due to the predictable and consistent positions of labels and values.

 | Automation |
| Subprocess |

Process model that starts as a result of the Subprocess Activity. It is configured to run within the process flow of another process model known as the parent process. Learn more about [subprocesses](Sub-Process_Activity.html).

 | Process Model |
| Subscription |

Permission given to users to view the contents of the related Knowledge Center. Subscribing to a Knowledge Center also makes it possible to monitor new uploads to folders within the Knowledge Center.

 | Deprecated |
| Supported Brand Customization |

A supported customization that clones a solution’s default properties files to enable Low-Code Developers to customize specific brand elements for their organization, including the name, logos, and color scheme.

 | Solutions |
| Supported Customization |

Customizing a solution for a range of scenarios by adding code via the Solutions Customization Suite. Supported customizations do not modify the solution's source code but are performed in accordance with the customization steps and are upgrade friendly.

 | Solutions |
| Supported Customization Application Configuration Rule |

An Appian expression rule that contains properties that define how to read and display the solution’s content in the Solutions Customization Suite. This expression rule controls aspects such as visibility and content sourcing.

 | Solutions |
| Supported Customization Design Methodology |

The standards, principles, rules, and technology that govern how to build supported rule customization templates into a solution and configure the solution to take advantage of the customization features in the Solutions Customization Suite.

 | Solutions |
| Supported Data Customization |

A supported customization that expands the data model of the solution by adding new fields to the custom data objects that ship with the solution. Lives under the “Data Model” tab in the Solutions Customization Suite.

 | Solutions |
| Supported Image Customization |

A supported customization that clones a solution’s default properties files to enable Low-Code Developers to customize the default images in a solution.

 | Solutions |
| Supported Rule Customization |

A supported customization that clones a solution’s default rules to enable Low-Code Developers to customize the solution’s behavior.

Lives under the ”User Interface”, “Workflow”, and “Business Logic” tabs in the Solutions Customization Suite.

 | Solutions |
| Supported Rule Customization Template |

The Default objects in the Solutions Customization Suite that are used for Supported Rule Customization

These can be of type expression rule, interface rule, or decision object.

Supported Rule Customization Templates are accessed under the ”User Interface”, “Workflow”, and “Business Logic” tabs in the Solutions Customization Suite.

 | Solutions |
| Supported Text Customization |

A supported customization that enables Low-Code Developers to customize a solution’s user-facing text using the solution’s bundle files.

 | Solutions |
| Synchronous Subprocess |

A subprocess that keeps the process flow in the parent process waiting. The flow only continues in the parent process once the subprocess is completed. Learn more about [subprocesses](Sub-Process_Activity.html).

 | Process Model |
| System Administrator |

User type that has access privileges to all tools and capabilities in Appian and can edit user roles. This includes the ability to create new administrators. Learn more about [system administrators](User_Management.html).

 | Admin, Security |
| System Data Type |

Standard data types that ship with Appian. They include primitive data types such as Text and Number, complex data types such as Label Value and Data Subset, and Appian Object types such as Document and People. All system types are pre-defined. Their structure cannot be modified or deleted. Learn more about [Appian Data Types](Appian_Data_Types.html).

 | Data Fabric |
| System Groups |

Groups delivered with Appian that allow users to administer components of Appian. For example, members of the system group Portal Administrators can perform portal page and content administration. Members of the Document Administrators group can administer the Appian Document Management system component. System groups cannot be deleted. Learn more about [system groups](System_Groups.html).

 | Admin, Security |
| Table |

Information displayed in a grid-like format, often using columns and rows to show similar information in a predictable way.

In document extraction, a table is a subset of the overall document data and requires additional configuration to extract and store the data properly.

 | Automation |
| Task Owner |

User assigned to a task.

 | Security, Process Model |
| Task Properties |

System-generated variables that reference certain task attributes. Every task started in Appian has variables that can be used within rules and functions, such as the owner, assignees, and deadline. Learn more about [task properties](Process_and_Report_Data.html#task-properties).

 | Process Model |
| Task Recorder |

Appian RPA tool to capture a user’s interactions with a web browser and automatically create a corresponding robotic task definition. The task recorder automatically determines the elements and interaction types, and creates corresponding actions in the definition once the recording is saved.

 | Automation |
| Template |

A pre-built robotic task to demonstrate core concepts and capabilities, often includes multiple actions from one module.

 | Automation |
| Tempo |

An interface for feeds, tasks, and actions that combines social collaboration, filtered views, and forms into a single intuitive view.

 | Tempo |
| Tempo Message Audience Group |

Custom group added to the [Tempo Message Audience Groups](System_Groups.html#tempo-message-audience-groups) parent group that becomes available for users to select when targeting messages in the News feed. They can be either public or restricted. Users can view which groups that are a part of by clicking the drop-down that appears when creating a feed entry on the News tab of Tempo. Users must talk to their system administrators about joining restricted Tempo Message Audience Groups.

 | Tempo |
| Tempo Report |

Appian object that displays charts and grids based on an expression and displays it on a single interface in Tempo for end users to view. It holds the basic properties of the report (name, description, and URL), the expression that determines what interface components display, and the role map that determines its security. Learn more about [Tempo reports](Tempo_Report_Design.html).

 | Tempo |
| Timer |

Configuration option for nodes that allows the process designer to schedule tasks absolutely (at a given time) or relative to the completion of another task. Learn more about [using timers in process nodes](Process_Node_and_Smart_Service_Properties.html).

 | Process Model |
| Toolbar |

The toolbar is present in all views in Appian Designer that contain grids. It is located immediately above the grid. When you select one or more objects in the grid, actions you can perform on those objects display in the toolbar. For a full list of options available in the toolbar, see [Common View Elements](common-view-elements.html#toolbar).

 | Designer |
| Train |

The act of improving IDP’s ability to extract correct information. This is achieved by providing example documents for IDP to process and manually confirming or fixing the extracted data in a reconciliation task. When a user provides this feedback through correction or confirmation, the model that extracted the data learns and improves in the future.

 | Automation |
| Translation locales |

The locales enabled in the [translation set object](translation-set-object.html). Each translation string in the set can contain one value for each translation locale. You can use any locale supported by Appian as a translation locale, but all translation locales should be enabled system locales in your environment.

 | Interfaces |
| Translation set |

A collection of translation strings that you can use to translate user facing text in applications. To learn more, see the [translaiton set object](translation-set-object.html) page.

 | Interfaces, Designer |
| Translation strings |

A collection of values for each translation locale that will be translated and used throughout your application. Each translation string belongs to a [translation set object](translation-set-object.html). Translation strings display in the user locale of the logged in user, as long as there is a value for that locale. Otherwise, they display in the primary translation locale.

 | Interfaces |
| UI Testing |

Testing from a user's perspective to make sure your application meets the user's needs. Learn more about [UI testing](testing-applications.html#user-interface-\(ui\)-testing).

 | Designer |
| Unattended Node |

Configuration option for activities that determines a user action is not required to complete the activity. Instead, the system completes the activity. Learn more about [unattended activities](Process_Node_and_Smart_Service_Properties.html#unattended-activities).

 | Process Model |
| Unit testing |

Testing individual parts of the application, such as logic or rules, to validate that each piece performs as expected under various conditions. Learn more about [unit testing](testing-applications.html#unit-testing).

 | Designer |
| Unlocked Message |

Type of message users can add to the News feed that allows the author or target audience to notify additional users and groups of the feed entry after it is created. Learn more about [messages](News.html#send-a-message) on the News feed.

 | Tempo |
| Unstructured Data |

Documents that include free-flowing paragraphs of text. Legal contracts and emails often include unstructured data. This type of information is more difficult to extract because the machine learning algorithms that identify the information are looking for key-value pairs. Larger blocks of text, or parts of that text, are more difficult to extract.

 | Automation |
| Unsupported Customization |

A modification to a solution’s source code which is performed outside the Solutions Customization Suite and/or outside the bounds prescribed in a Supported Rule Customization Template; an unsupported customization impedes the ability to readily upgrade to a newer version of the solution.

 | Solutions |
| User |

Any individual who can access and use any of the Appian interfaces. Users have their own set of permissions. Also referred to as an end user.

 | Designer, Security |
| User Card |

The pop-up window that displays when you hover over a user display name within Tempo. It displays the user's contact information if you have viewer rights to the user. It also allows a user to follow or unfollow another user in order to see or hide their posts when viewed in Tempo.

 | Tempo |
| User display text |

Any interface text that displays to end users, like labels, instructions, or tooltips. This doesn't include text entered by users.

 | Interfaces |
| User Filters |

Filters end users can apply to the record list to view a subset of the records. For example, on an Customer record type, you might create a user filter called Customer Name where the filter options are based on the company including "A to F", "G to M", "N to S", and "T to Z," all of which use the between operator. Learn more about [user filters](filter-the-record-list.html).

 | Data Fabric |
| User Input Task |

A process model activity that assigns a task to be completed (using a form) to a user or a group. Learn more about [User Input Tasks](Configuring_the_User_Input_Task.html).

 | Process Model |
| User Profile Page |

A page delivered with Appian in Tempo that displays information specific to that user. Logged-in users can only access their own User Profile page or the pages of users they have viewer rights to. Each User Profile page displays an About view that lists feed entries entered by the user that the logged-in user has viewer rights to. It also provides users with the ability to follow the user and see how many followers the user has.

 | Tempo |
| User Profile Visibility |

The ability for one user to view another user’s information and interact with the other user while logged into an application, as determined by the [Modify User Security Smart Service](Modify_User_Security_Smart_Service.html). If the logged-in user has no rights to view another user, the secure user’s contact information is masked within the system only allowing the logged-in user to see a username. Learn more about [user profile visibility](User_Profile_Visibility.html).

 | Tempo, Security |
| User Role |

Adding a user role gives the user access to specific interfaces in the system, including Tempo, Designer Interface, and System Administrator Console. Learn more about [user roles](User_Roles.html).

 | Security |
| User Type |

Assigning a user type gives the user a set of rights to perform specific actions in the system. There are two security types for user accounts: Basic Users and System Administrators. System Administrator users have administrative rights to all components. Basic Users start out with Viewer rights to top-level objects and interface tabs, but can have different rights put on them for specific objects or modified by System Administrators. Learn more about [user management](User_Management.html).

 | Security, Admin |
| Users View |

A view in Appian Designer that allows you to manage and view details about users in the Appian environment. Learn more about the [User View](users_view.html).

 | Designer |
| Validate |

Confirmation that an extracted piece of data is correct. The reconciliation task’s primary purpose is for the user to validate or correct the results of extraction.

 | Automation |
| Value |

The extracted variable that defines a part of a data set. This information is changed based on the user’s selection or input. It is matched with the label to create a key-value pair in the extracted data.

 | Automation |
| Vendor |

The company that provides document extraction services. Customers can choose to use either Appian or Google for document extraction, based on their needs or preferences.

 | Automation |
| Versioning |

Document management version control that allows you to retain older versions of a file when uploading a file with changes. When a file is checked out and locked for editing by other users, uploading a new version of the file releases the lock. Learn more about [managing object versions](Managing_Object_Versions.html).

 | Admin |
| Viewer |

Type of security role given to a user for a specific object. The permissions for a viewer differ for each type of object, but they typically only include the ability to view the object, not modify it. Learn more about [object security](object-security.html#permission-levels-in-role-maps).

 | Security |
| Web API |

An Appian object that provides a way to expose data that is stored inside of Appian or is accessible by Appian to another system. Each web API is an association between a URL and an expression. Learn more about [web APIs](Web_APIs.html).

 | Integrations |
| Web Services |

Collection of web-protocols that allow different applications to communicate with one another over the web. Appian processes can [invoke web services](Call_Web_Service_Smart_Service.html), and [publish process models as web services](Publishing_Process_Models_as_Web_Services.html). You can also use a web service as the source of a [record type](configure-record-data-source.html#prodlink-web-service).

 | Integrations, Data Fabric |
| Wizard |

An interface design pattern that breaks up long interfaces or forms and is meant to lead users through a series of well-defined and easy to navigate steps. Learn more about [interface wizard design](recipe-build-a-wizard-with-milestone-navigation.html).

 | Interfaces, Designer |
| Work Time |

The time between a worker first accepting a task and completing it.

 | Process Model |
| Workflow Library |

A collection of custom Java methods written by the Appian RPA developer. Libraries allow developers to reuse custom methods across different robotic tasks.

 | Automation |
| Workforce Safety |

A pre-built, customizable Appian application that allows organizations to effectively manage and coordinate their return-to-workplace processes and COVID-19 workplace management plan, quickly respond to crisis situations in the workplace, and manage the health and work status of their employees in one central location.

 | Solutions |
| Working Draft |

Process model that is loaded into the Process Modeler environment and is the only one that can be edited. The working draft is the only draft of the process model and all previous versions are versions of the working draft.

 | Admin |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...