---
source_url: https://docs.appian.com/suite/help/25.3/record-events-automation.html
original_path: record-events-automation.html
version: "25.3"
title: "Track Automated Events with Record Events"
page_id: "record-events-automation"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Track Automated Events with Record Events

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page describes how to configure record events to capture the type of automation that completes events in your business process.

## Overview

Your business process may rely on [automated actions](Automation_Landing.html) to complete some events, like [robotic tasks](Execute_Robotic_Task.html), [Appian RPA](rpa-9.17/appian-rpa.html), or [artificial intelligence](ai-landing.html). With [record events](record-events.html), you can track when an event was completed by automation and what type of automation completed the event.

Whether you're configuring record events for the first time or updating an existing record events configuration, you can start tracking the impact of automation on your process with record events.

Once you're capturing automation types with record events, you can configure the [event history list component](Event_History_List_Component.html) to display either the username or automation type for each event. You can also use [process insights](process-insights.html) to optimize the way your business process works with automation.

## Before you begin

Before you can start tracking automation, you'll need to [configure record events](record-events-configuration.html).

Your next steps will depend on how you configured record events:

-   If you generated event record types, your new record events configuration will already meet the requirements to start capturing automation types. Once your record events configuration is finished, you can start [updating your process models](#update-process-models-to-capture-automation-types) to write the automation type to your Event History record type.

-   If you decide to use existing record types, or if you already configured record events and want to start capturing the automation type, you can easily modify your existing record types following the instructions below.

## Get started

To capture the type of automation that completes events in your business process:

1.  Confirm the Event History record type has an field that stores the automation identifier.
2.  Confirm the automation identifier field is selected in the **Automation Identifier Field** property in your record events configuration.
3.  Update the Write Records smart services in your process models to write the automation types.

## Add an automationId field to capture automation types

You may have already configured record events, then decide you want to start capturing the type of automation that completes each event in your business process. You can easily include the automation type in your event data by adding the `automationId` field to the Event History record type, if it doesn't have one already. Then, update your record events configuration to capture the automation type in that field.

To add the `automationId` field to the Event History record type:

1.  In the Event History record type, go to **Data Model**.
2.  Click **MODIFY SOURCE FIELDS**.
3.  [Add a new field](update-source-from-record-type.html#add-a-field) and configure the following properties:

    | Property | Action |
    | --- | --- |
    | Name | Enter an easily recognizable name, like `automationTypeId`. |
    | Data Type | Select the type **Number (Integer)**. |

4.  Click **SAVE CHANGES**.
5.  Click **CLOSE**.

## Update your record events configuration

Once your Event History record type has an `automationId` field, you'll need to update your record events configuration.

To update your record events configuration:

1.  In the base record type with the existing events configuration, go to **Events**.
2.  Click **EDIT**.
3.  Under **Automation Identifier Field**, use the dropdown list to select the new Number (Integer) field you just created in your Event History record type.
4.  In the banner message that appears, click **See related process models** to open a list of process models that use the Write Records node to write data in this record type. You can open each related process model in a new tab to edit later.
5.  Click **UPDATE**.
6.  Click **SAVE**.

Once you've updated your Event History record type and your record events configuration to store the automation type, you'll need to update any existing process models so the Write Records smart services will write the correct automation type in the record. If you didn't update your process models while updating your record events configuration, [follow the steps below](#update-process-models-to-capture-automation-types) to set the **Automation Type** you want to capture when writing events.

## Update process models to capture automation types

To capture [automation](Automation_Landing.html) types in your event data, you must configure the [Write Records nodes](Write_Records_Smart_Service.html) in your process models to write who or what completed each event.

Review the guidance below for tips on how to best capture the different types of automation involved in your process models.

### Determine which automation type to capture

Even though a process might involve multiple users or automation types, you want your event data to show the user or automation type that actually completed the task.

In general, use the following guidelines to configure the **User** and **Automation Type** properties when writing events:

-   If the event was completed by a human, set the **User** property to the appropriate field from the Event History record type. Then, set the **Automation Type** property to **None (User)**.

    [![images/write-records-setup-user.png](images/write-records-setup-user.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img500)

    [![](images/write-records-setup-user.png)](#_)

-   If the event was completed by automation, set the **User** property to **Null (Set at System Event)**. Then, select the appropriate automation type for the **Automation Type** property.

    [![images/write-records-setup-automation.png](images/write-records-setup-automation.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img501)

    [![](images/write-records-setup-automation.png)](#_)

Appian recommends categorizing automation types according to the following table:

| **Automation Type** | **Identifier** | **Examples** |
| --- | --- | --- |
| **None (User)** | 1 |
-   [User Input Tasks](Configuring_the_User_Input_Task.html) like submitting a form

 |
| **RPA** | 2 |

-   [Execute Robotic Task smart service](Execute_Robotic_Task.html)
-   Robotic process automation (RPA) plug-ins

 |
| **AI** | 3 |

-   AI Skills smart services, like [Classify Documents](Classify_Documents_Smart_Service.html), [Extract from Document](Extract_from_Document_Smart_Service.html), [Classify Emails](Classify_Emails_Smart_Service.html)
-   AI plug-ins

 |
| **Integration** | 4 |

-   [Call Integration smart service](Call_Integration_Smart_Service.html)
-   [Call Web Service smart service](Call_Web_Service_Smart_Service.html)
-   [Invoke SAP BAPI smart service](Invoke_SAP_BAPI_Smart_Service.html)

 |
| **Other** | 5 |

-   [Expression rules](Expression_Rules.html)
-   [Decisions](Decisions.html)
-   Process orchestration
-   Other [smart services](Smart_Services.html)

 |

**Note:**  The Write Records node will write the automation type by its corresponding identifier. If you write your own expression to capture the automation type, use [a!automationId()](fnc_informational_a_automationid.html) to specify the automation type's identifier.

When configuring Write Records nodes, consider how the event data you capture can best support your business needs. You can configure the **User** and **Automation Type** properties as described above, but you may want to capture more information or introduce more complicated rules for determining the automation type.

For example, one of your processes might send an automated email as the result of a user action. You could capture this as a system event by setting the **Automation Type** to **Other**, then also capture the user by setting the **User** to **Process Initiator**.

You might also choose to write an expression with conditional rules for which automation type should be captured. For more information, see [a!automationId()](fnc_informational_a_automationid.html).

### Capture multiple automation types

Of course, the full picture of how your events are completed can be complicated. You might have more than one type of automation attempting to complete the same task, or your process might require a user to complete a task after automation attempts it. In either case, Appian recommends capturing each attempt in a separate Write Records node to ensure your event data accurately reflects how the event was completed.

In the following example process, the Classify Documents Smart Service attempts to classify documents, but a user can classify them instead if it fails. The process has two Write Records nodes for the same "Classified Docs" event: one that writes event data if the AI skill successfully completes the task (1), and one that writes event data if a user successfully completes the task (2). A third Write Records node writes event data when a user reviews the documents (3).

[![images/write-records-process-example-25_2.png](images/write-records-process-example-25_2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img502)

[![](images/write-records-process-example-25_2.png)](#_)

In this example, capture the following automation type for each node:

| # | Automation Type | Purpose |
| --- | --- | --- |
| 1 | AI | Write event data if the AI skill successfully completes the task. |
| 2 | None (User) | Write event data if a user successfully completes the task. |
| 3 | None (User) | Write event data when a user reviews the documents. |

Your processes might also involve multiple automation types working together to complete an event. Whenever this is the case, Appian recommends attributing the event to the most complex automation type.

For example, if you have an event that's completed by integration to an RPA vendor, such as Blue Prism, Appian recommends attributing the event to RPA, even though an integration was part of the process.

The following lists ranks automation types in order of complexity, with 1 being the most complex and 4 being the least complex:

1.  RPA
2.  AI
3.  Integration
4.  Other

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...