---
source_url: https://docs.appian.com/suite/help/25.3/Call_Integration_Smart_Service.html
original_path: Call_Integration_Smart_Service.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Call Integration Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Use an Integration in a Process Model

This video from the [Integrations 101 Academy Online course](https://academy.appian.com/#/online-courses/edc9b638-b053-438d-957d-e3db00012372) explains how to call an integration in a process model, and configure success and error paths.

## Overview

The Call Integration smart service allows you to call any [integration object](Integration_Object.html) from within your process model. This is particularly important for integrations that modify data since they cannot be called in expressions elsewhere in your model.

To speed up development, Appian can preconfigure this smart service for you. [Search for your integration object](process-model-object.html#search), and drag and drop the integration object to the process model canvas. The Call Integration smart service node is automatically created and configured to reference that integration object. Open the [process node's properties](Process_Node_and_Smart_Service_Properties.html) to further configure its behavior.

**Tip:**  Calling an Appian RPA integration? Check out the [Execute Robotic Task](Execute_Robotic_Task.html) smart service for additional execution options.

### Properties

-   **Category**: Integrations & APIs

-   **Icon**: ![](images/Smart_Service_Icons/Call_Integration.png)

    **Note:**  The node will show a [custom icon](#custom-node-icons) based on the selected integration.

-   **Assignment Options**: Attended/Unattended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Setup tab

The **Setup** tab allows you to select or create an integration.

-   **Select Integration**: Search or browse to select an existing integration.
-   **Edit Integration**: Open the selected integration in the integration designer. This button is only shown when an integration is selected. Users with viewer access will see the **View Integration** button instead and will be able to open the integration designer in read-only mode.

    [![images/Call_Integration_Setup_Tab.png](images/Call_Integration_Setup_Tab.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img101)

    [![](images/Call_Integration_Setup_Tab.png)](#_)

-   **Create HTTP Integration**: Create a new HTTP integration to call with the node. The form allows you to enter the name and description of the new integration, where to save it, and what application to add it to. You can also select existing node inputs that should be added as inputs to the new integration.

    [![images/Call_Integration_Setup_Tab_Create_Integration.png](images/Call_Integration_Setup_Tab_Create_Integration.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img102)

    [![](images/Call_Integration_Setup_Tab_Create_Integration.png)](#_)

### Data tab

#### Node inputs

When an integration is selected, the integration's inputs will automatically appear as node inputs. If you change the selected integration, or the inputs of the selected integration are updated outside the process modeler, the node inputs will be refreshed the next time you view the **Data** tab.

![](images/Call_Integration_Node_Inputs_From_Integration.png)

#### Node outputs

| Output | Data Type | Description |
| --- | --- | --- |
| Success | Boolean | A value set to `true` if the call was successful or `false` if it was unsuccessful. |
| Result | HttpResponse | A value containing the [result returned by the integration](Integration_Object.html#http-result). |
| Error | IntegrationError | If success was `false`, a value containing the [error returned by the integration](Integration_Object.html#error), otherwise `null`. |

This node does not pause by exception if an integration error occurs. You can use the Success and Error outputs to determine how the process handles the error, such as incorporating an escalation into a later part of the process design. This node does not automatically retry failed requests.

## Usage considerations

### Data sync behavior for record types

If you use this smart service to add, update, or delete data in Salesforce, then those changes will be automatically [synced](about-data-sync.html) in any record type that uses that Salesforce object as the source.

However, a sync will **not** automatically occur when you use this smart service to update data in any other web service. To sync changes made in other web services (besides Salesforce), use the [Sync Records](Sync_Records_Smart_Service.html) smart service.

![Sync changes from the Call Integration smart service](images/sync-integration-changes.png)

Any data changed by this smart service will also be synced during the next [scheduled sync](records-data-sync.html#schedule-full-syncs) or if you trigger a [manual sync](records-data-sync.html#manual-full-syncs).

## Custom node icons

The Call Integration smart service shows a custom icon to reflect the type of integration or the system logo that the integration is calling.

![](images/Call_Integration_Node_Icons.png)

To enable a custom icon the selected integration must be configured to use a [connected system](Connected_System_Object.html) and the connected system must be configured with a system logo. The default Call Integration icon is shown when no integration is selected or when the user does not have at least viewer access to the integration, the connected system, or the system logo document.

## See also

-   [Integration Objects](Integration_Object.html)
-   [Call an Integration](Call_an_Integration.html)
-   [Connected System Objects](Connected_System_Object.html)
-   [Smart Services Library](Smart_Services.html)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...