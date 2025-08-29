---
source_url: https://docs.appian.com/suite/help/25.3/cs-23.3.2.6/adding-new-task-type.html
original_path: cs-23.3.2.6/adding-new-task-type.html
version: "25.3"
title: "Adding a New Task Type"
page_id: "cs-23.3.2.6/adding-new-task-type"
section: "Adding a new task type"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Adding a New Task Type

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Servicing, which must be purchased separately from the Appian base platform. This content was written for Appian 23.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Adding a new task type

Task types control what type of interface the user will see when completing a task. In order to add a new custom user input task, integration, or kick off an RPA process, you need to add a new task type. Once added, the new task type will be able to added to workflow templates and .

#### SYSTEM

**What it is**

This type of configuration is generally for automated tasks that can only be kicked off from a process model.

**When you would use it**

You would use this type of task when:

-   You want the task to be automatically kicked off using a process model.

And when an end user would never need to add this type of task:

-   To the task library in FS Settings.
-   As a custom task when completing the Process Setup task.
-   As a custom task from the Home page or as a related action.

**Example**

After a user creates a new Service Request, the task is automatically kicked off using a process model. However, end users do not have access to add this type of task when adding a default task to the task library or when adding a custom task to an Service Request.

#### TEMPLATE

**What it is**

This type of configuration is for tasks that you want to be available to FS Settings users for use in Service Request templates, but you don't want to be available to regular users when adding a custom task to an Service Request.

**When you would use it**

You would use this type of task when you want the task:

-   To be automatically kicked off using a process model.
-   To be added to the task library in FS Settings.

And when an end user would never need to add this type of task:

-   As a custom task when completing the process setup task.
-   As a custom task from the Home page or as a related action.

**Example**

Out of the box, there are no tasks with this configuration.

#### AD\_HOC

**What it is**

This type of configuration is for tasks that would be sent out by client onboarders from the Home page or as a related action. When sent out like this, the onboarder is kicking off the task right away, rather than waiting for the task to be kicked off by a precedent or a process model.

**When you would use it**

You would use this type of task when you want the task:

-   To be automatically kicked off using a process model.
-   To be added to the task library in FS Settings.
-   To be available as a custom task when completing the Process Setup task.
-   To be available as a custom task from the Home page or as a related action.

**Example**

Review task - Can be added as a new task in the task library, as a custom task during the Process Setup task, or as a custom task from the Service Request record.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...