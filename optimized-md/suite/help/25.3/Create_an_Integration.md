---
source_url: https://docs.appian.com/suite/help/25.3/Create_an_Integration.html
original_path: Create_an_Integration.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Create an HTTP Integration

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Use an Integration in an Interface

This video from the [Integrations 101 Academy Online course](https://academy.appian.com/#/online-courses/edc9b638-b053-438d-957d-e3db00012372) explains how to connect to an external system to retrieve a list of universities.

## Introduction

In this page, you will learn how to create and configure an HTTP integration, as well as how to use the integration designer to test and troubleshoot problems.

-   To learn about integration objects and their configuration options, see [Integration Object](Integration_Object.html).
-   To learn about connected system objects and their configuration options, see [Connected System Object](Connected_System_Object.html).
-   To learn how to call an integration from other places in your application, see [Call an Integration](Call_an_Integration.html).
-   For a real-world example of how to build and use integrations, see the [Integration Tutorial](Integration_Tutorial.html).
-   To learn how to use different types of connected systems to connect to different systems, see [Connected Systems](Connected_System.html).

**Tip:**  When integrating with slow external systems that you can't control, consider using [a!asyncVariable()](fnc_evaluation_a_asyncvariable.html) to load the data asynchronously. This allows users to interact with the rest of the interface while waiting for the external system. See [Asynchronous Loading](async_loading.html) for more information.

## Create the HTTP integration object

**Note:**  Below are details of an **HTTP** integration. The following screens will change depending on the selected [connected system](Connected_System_Object.html).

To create an integration in Appian:

1.  Open the destination application for the new integration.

2.  In the **Build** view, click **New > Integration**.
3.  Select a creation method:

    -   **Use a connected system**.
    -   **Create from scratch (HTTP only)**.
    -   **Duplicate existing integration**.
4.  Configure the following properties:

    ![create_integration](images/Create_an_Integration/create_integration.png)

    | Property | Description |
    | --- | --- |
    | **Connected System** | Browse to and select a [connected system](Connected_System_Object.html). This property is only present if you selected **Use a connected system**. |
    | **Integration to Duplicate** | Browse to and select the existing integration you want to copy. This property is only present if you selected **Duplicate existing integration**. |
    | **Name** | Enter a name that follows the [recommended naming standard](Standard_Object_Names.html#integration-objects). |
    | **Description** | (Optional) Enter a brief description of the integration. |
    | **Save In** | Browse to and select an existing folder to store the integration object, or click **Create New Rule Folder** to create and select a new folder for the object. |

5.  Click **Create**. Appian displays the new integration for editing.

**Tip:**  If you want to change the description or folder later, open the integration object, then select **Properties** in the gear menu.

## Design guidance

As you continue to modify and define your integration, you may encounter guidance. Appian [design guidance](appian-recommendations.html) reinforces best practice design patterns that should be implemented in your objects. Guidance is calculated while editing expressions within the integration or when a [precedent](Trace_Relationships_for_Impact_Analysis.html) of the integration is updated.

When a recommendation or warning is triggered you'll see an indicator icon in the header (A) and next to the corresponding line in the expression editor (B).

Click on the icon in the header to learn more about the suggested guidance (C) and how it can be addressed.

If a recommendation is not applicable to your use case, you can **Dismiss** (D) that individual recommendation for that integration. Learn more about [recommendation dismissal](appian-recommendations.html#recommendation-dismissal). Warnings cannot be dismissed and should always be addressed to avoid complications when the logic in the object is executed.

Integration design guidance is also visible outside of the object on the [Health Dashboard](monitoring_view.html#health-dashboard).

See [design guidance](appian-recommendations.html#expression-design-guidance) for the full list of possible guidance.

[![images/appian_guidance_integration_designer_annotated.png](images/appian_guidance_integration_designer_annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img784)

[![](images/appian_guidance_integration_designer_annotated.png)](#_)

## Configure the HTTP integration definition

The configuration pane of the integration designer allows you to define the HTTP request details for your integration.

For more information about the integration definition fields, see [Integration Objects](Integration_Object.html).

**Note:**  Below are details of an **HTTP** integration. The following screens will change depending on the selected [connected system template](Connected_System.html)

1.  Select whether you want to use an existing connected system to share connection details across multiple integrations. _If you created this integration directly from a connected system then this option will already be selected and the connected system will be pre-populated._
    ![](images/Create_an_Integration/use_connected_system.png)

2.  Fill out the **Connection** details. If you are using an existing connected system, select a **Connected System** using the picker. Otherwise, provide the **Authentication** details (if applicable) directly, as shown below.
    ![](images/Create_an_Integration/integration_definition_connection_auth.png)

3.  Add **Parameters** and **Headers**.
    ![](images/Create_an_Integration/integration_definition_headers_parameters.png)

4.  If the selected **Method** supports it, define the **Request Body** and **Content Type**.
    ![](images/Create_an_Integration/integration_definition_body.png)

### Content Type selection

The **Content Type** field must be configured for integrations where the **Method** is set to **POST**, **PUT**, **PATCH**, or **DELETE**. Although the **Content Type** field is configured in the **Body** section of the configuration pane, it's actually sent as an HTTP header. This field indicates the media type of the resource(s) defined in the request **Body**. The selection is based upon the web service that you're integrating with. See the [content types page](Integration_Content_Types.html) for more information.

### Add automatic parsing

Once you've configured the integration definition, it's a good idea to configure response body parsing to automatically convert the JSON response body to an Appian value.

**Note:**  Automatic parsing only applies to JSON responses.

![](images/Create_an_Integration/automatic_parsing.png)

Instead of having to write a wrapper rule, automatic parsing will convert the results into an Appian value. This will allow you to use dot notation and `index()` in another expression simply by passing in an integration rule.

### Enable HTTP request/response logging

Finally, you should decide whether to enable HTTP request/response logging for the integration.

![/admin-logging](images/integration_object_logging.png)

Ensure that you are familiar with the [integration logging guidelines](Integration_Object.html#prodlink-logging) before making this decision.

If you do choose to enable HTTP request/response logging, it will only write to the `integration_req_resp_activity.log` log if that functionality is [also enabled in the Admin Console](Appian_Administration_Console.html#http-requestresponse-logging). The dynamic message below the checkbox will tell you whether HTTP request/response logging is enabled for your environment.

## Test the integration

Once you've finished configuring the integration definition, you'll want to test the integration and view details about the request and response.

1.  Click **Test Request**. The **Result** tab displays the **Time** taken for each phase of the integration and the resulting **Value**.
    ![](images/Create_an_Integration/integration_test_success.png)

2.  If an error occurs, the **Result** tab also displays the error details and recommended **Next Steps**.
    ![](images/Create_an_Integration/integration_test_error.png)

3.  The **HTTP Request** tab displays the raw request sent to the external system.
    ![](images/Create_an_Integration/integration_test_request.png)

4.  The **HTTP Response** tab displays the raw response received from the external system.
    ![](images/Create_an_Integration/integration_test_response.png)

**Note:**  Any request or response body content over 10 KB in size will be truncated in the integration designer. The complete body is available when the integration is called from other objects in your application.

## Add custom error handling

By default, an integration will return an error when it's unable to connect or when the external system responds with an HTTP error status code. Even when the HTTP call succeeds, you may still need to check for error messages or unexpected content before using the response in your application.

![](images/Create_an_Integration/success_but_error.png)

You can add custom error handling to an integration within the Error Handling section

1.  Select **Override and define all error conditions**.
2.  In the **Success Criteria** field, write an expression that returns `true`. ![](images/Create_an_Integration/success_criteria.png)
3.  In the **Error Message** field use `a!integrationError()` to construct a custom error message. ![](images/Create_an_Integration/error_message.png)

Instead of returning an unwanted success status, the integration will return an error, allowing you to more easily handle future error handling.

![](images/Create_an_Integration/custom_error_results.png)

## Define inputs

After the integration is tested, you can define inputs that will allow you to reuse this object throughout your application.

1.  Expand the inputs pane on the right hand side of the integration designer.

2.  Click the + button in the top right-hand corner.

3.  Configure the input **Name**, **Description**, **Type**, and whether or not it is an **Array** from the grid. You can also change the order of inputs using the up and down arrows.
    ![](images/Create_an_Integration/integration_inputs.png)

4.  If you have one or more inputs, you can enter values for each input in the test inputs pane. These values are used when testing the integration.
    ![](images/Create_an_Integration/integration_test_inputs.png)

5.  To save the current input values as a set of default test values, click the **Set as default test values** link below the grid. Once set, the default values will be saved with the integration.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...