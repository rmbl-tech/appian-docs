---
source_url: https://docs.appian.com/suite/help/25.3/portals-data.html
original_path: portals-data.html
version: "25.3"
title: "Working with Data in a Portal"
page_id: "portals-data"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Working with Data in a Portal

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

For your portal users to complete their workflows and tasks with ease, they'll likely need to enter or view data within your portal. Writing and querying data in a portal allows you and your users to easily get and share information.

For example, users may need to view data, like:

-   Checking the status of their in-flight processes.
-   Viewing information about your products or services.
-   Searching public records.

Or they may need to add or update data through actions, such as:

-   Filling out a questionnaire.
-   Responding to an anonymous survey.
-   Requesting rebates or services.
-   Applying for grants.
-   Kicking-off their own onboarding process.

While you're reaching a broader audience with more information, you still need your data to stay safe. The isolated architecture of Appian Portals gives you peace of mind while allowing portal users to query and write data from Appian.

The best way to work with data in portals is using [record types](#working-with-data-using-record-types). However, you can also write and query data using [CDTs](#working-with-data-using-cdts), as long as you create a custom integration using a web API and integration object. And, if you have a [publicly-available external database](#working-with-data-in-a-publicly-accessible-external-database), you can directly write to or query from the database. See [Working with Data in Appian](working-with-data-in-appian.html) to help you understand when to use a record type and when to use a CDT.

This page walks through how to work with data using all of the methods available from a portal.

## Working with data using record types

[Record types](Record_Type_Object.html) make it easy to work with your data in portals. Use them to:

-   **[Query record data](#query-record-data)**: Use [a!queryRecordType()](fnc_system_queryrecordtype.html) or [a!queryRecordByIdentifier()](fnc_system_a_queryrecordbyidentifier.html) directly in your portal interface, or use a record type as the source for [read-only grids](read-only-grid-configuration.html), [charts](Chart_Configuration_Using_Records.html), and [card choices](card-choices-component.html). See [Recipes querying records](Query_Recipes.html) for examples.
-   **[Write record data](#write-record-data)**: Use [a!startProcess()](Start_Process_Smart_Service.html#astartprocess) in your portal interface, along with the [Write Records](Write_Records_Smart_Service.html) or [Delete Records](Delete_Records_Smart_Service.html) smart services in your process model.

**Tip:**  You can also use [a!startProcess() in a portal interface](portals-design.html#working-with-processes) to perform anything else possible with a process model, like creating a user or sending an email. You can use [these same steps](#write-record-data) to create a portal that starts any other Appian process.

Let's look at some ways to use records in a portal.

### Query record data

When querying record data in a portal, be sure to:

-   [Grant permissions to the record data](#grant-permissions-to-the-record-data).
-   [For read-only grids, remove incompatible record components](#for-read-only-grids-remove-incompatible-record-components).

#### Grant permissions to the record data

Ensure the portal can access the record data by giving the [portal service account](portals-service-accounts.html) **Viewer** permission to the record type. This ensures portal users can view the queried data.

For more granular control over which records can be viewed in the portal, consider configuring [record-level security](record-level-security.html).

#### For read-only grids, remove incompatible record components

When you create a records-powered grid, it may automatically add certain record components that are [incompatible with portals](portals-design.html#portal-compatibility-with-functions-components-and-objects), such as [record links](Record_Link_Component.html) and [record actions](Record_Action_Component.html). If these components are automatically added to the read-only grid, remove them.

For example, the following expression won't work in a portal because the [record link component is incompatible with portals](Record_Link_Component.html#feature-compatibility).

```
1
2
3
4
5
6
7
8
9
10
11
12
13
a!gridColumn(
  label: "Project Name",
  sortField: recordType!DOT Project.fields.projectName,
  `value: a!linkField(`
    `links: {`
      `a!recordLink(`
        `label: fv!row[`recordType!DOT Project.fields.projectName`],`
        `recordType: `recordType!DOT Project`,`
        `identifier: fv!identifier`
      )
    }
  )
)
```

To update it to work in a portal, simply remove the record link.

```
1
2
3
4
5
a!gridColumn(
  label: "Project Name",
  sortField: recordType!DOT Project.fields.projectName,
  `value: fv!row[`recordType!DOT Project.fields.projectName`]`
)
```

### Write record data

The best way to create, update, and delete data from a portal is using the [Write Records](Write_Records_Smart_Service.html) and [Delete Records](Delete_Records_Smart_Service.html) smart services. You can kick off a process containing these nodes by using the [a!startProcess()](Start_Process_Smart_Service.html#astartprocess) function in the _saveInto_ parameter of a portal interface.

**Tip:**  This works beyond writing records—you can use any [smart service](Smart_Services.html) in a portal by using `a!startProcess()` in a portal interface.

To create, update, or delete record data via a portal:

1.  Create a process model that uses the [Write Records](Write_Records_Smart_Service.html) or [Delete Records](Delete_Records_Smart_Service.html) smart services to modify a record.

    **Tip:**  See the [Process Modeling Tutorial](Process_Modeling_Tutorial.html) for a walk through of setting up a process model.

2.  Create an interface for your portal. Ensure you follow [Portal Best Practices](portals-design.html).
3.  In the _saveInto_ parameter of a component in the portal interface, use the [a!startProcess()](Start_Process_Smart_Service.html#astartprocess) function to start the process you created.

    **Tip:**  See the [interface example](#interface-example-writing-record-data-in-a-portal) for an example of how to configure a form interface for your portal using the portal best practices.

4.  [Create a portal](portals-create.html).
5.  Grant the portal service account:
    -   At least **Viewer** permissions to the record types that are being updated or referenced. For more granular control over which records can be viewed in the portal, consider configuring [record-level security](record-level-security.html).
    -   At least **Initiator** permissions to the process model that is updating the record.
6.  [Publish the portal](portals-create.html#step-8-publish-your-portal-object) and [test](portals-manage-portals.html#testing-portals) that the portal starts the process and writes the data correctly.

#### Interface example: Writing record data in a portal

Here is an example of an interface that adds and updates data in a Project record type. It is similar to the [default create or update record action interface](record-actions.html#generated-create-and-update-interface), but is different in the following ways:

-   Since record pickers aren't compatible with portals, we are using a dropdown field to select the project status.
-   Since the form won't automatically clear and display a confirmation message after the user submits it, we manually added a confirmation message.

_Record type references are specific to each record type and environment. If you copy and paste this expression, update the record type reference to reference a record type from your own environment._

```
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
104
105
106
107
108
109
110
111
112
113
114
115
116
117
118
119
120
121
122
123
124
125
/* You must create 3 rule inputs to use this example: */
/* 1. Name: record, Type: The record you are using */
/* 2. Name: cancel, Type: Boolean */
/* 3. Name: isUpdate, Type: Boolean */
a!localVariables(
  local!submitted: false,
  /* This queries a Project Status record type to populate the dropdown component with the status options */
  local!status: a!queryRecordType(
    recordType: recordType!Project Status,
    fields: {
      recordType!Project Status.fields.value,
      recordType!Project Status.fields.id
    },
    pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 50)
  ).data,
  if(
    local!submitted = false,
    a!formLayout(
      titleBar: if(
        ri!isUpdate,
        "Update Project",
        "Add Project"
      ),
      contents: {
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                a!textField(
                  label: "Name",
                  labelPosition: "ABOVE",
                  value: ri!record[recordType!Project.fields.name],
                  saveInto: ri!record[recordType!Project.fields.name],
                  characterLimit: 255,
                  required: true
                )
              }
            ),
            a!columnLayout(
              contents: {
                a!dropdownField(
                  /* Because the record picker component is incompatible with portals,
                  we manually set up a dropdown component using the local!status query */
                  choiceLabels: local!status[recordType!Project Status.fields.value],
                  choiceValues: local!status[recordType!Project Status.fields.id],
                  label: "Status",
                  placeholder: "--- Select a value ---",
                  value: ri!record[recordType!Project.fields.statusId],
                  saveInto: ri!record[recordType!Project.fields.statusId]
                )
              }
            )
          }
        )
      },
      buttons: a!buttonLayout(
        primaryButtons: {
          a!buttonWidget(
            label: if(ri!isUpdate, "Update", "Add"),
            saveInto: a!startProcess(
              /* Replace this with a constant that points to your process model */
              processModel: cons!ADD_PROJECT,
              processParameters: {
                /* This parameter name must match the name of the process variable
                from the process model */
                record: ri!record
              },
              onSuccess: {
                /* Sets local!submitted to true so that a confirmation message can display,
                instead of the form */
                a!save(local!submitted, true),
              }
            ),
            style: "SOLID",
            validate: true,
            loadingIndicator: true
          )
        },
        secondaryButtons: {
          a!buttonWidget(
            label: "Cancel",
            value: true,
            saveInto: ri!cancel,
            style: "OUTLINE",
            validate: false
          )
        }
      )
    ),
    /* Success message that displays when local!submitted=true */
    {
      a!richTextDisplayField(
        labelPosition: "COLLAPSED",
        value: a!richTextItem(
          text: "Project added.",
          size: "MEDIUM_PLUS",
          style: "STRONG"
        ),
        align: "CENTER"
      ),
      a!richTextDisplayField(
        labelPosition: "COLLAPSED",
        value: a!richTextItem(
          text: "Thank you for submitting a new project."
        ),
        align: "CENTER"
      ),
      /* This link reopens the form */
      a!linkField(
        labelPosition: "COLLAPSED",
        align: "CENTER",
        links: {
          a!safeLink(
            label: "Add another project.",
            uri: a!urlForPortal(
              /* Replace this with a reference to your portal */
              portalPage: portal!Portal.pages.add-project
            ),
            openLinkIn: "SAME_TAB"
          )
        }
      )
    }
  )
)
```

## Working with data using CDTs

If there are scenarios where you cannot use record types, you can query and write data using custom data types (CDTs) and data stores.

To work with CDTs in a portal, you can call an integration object in the portal interface to request to write to or query data from Appian. The integration talks directly to a web API in Appian, which completes the request and sends a response back to the integration in the portal.

The integration and web API form a bridge that connects your portal to Appian and allows data to pass through. The integration is on one side—in your portal—and the web API is on the other side—in Appian.

The diagram below shows how the portal and Appian work together to allow for the flow of data, without the use of records.

[![diagram of the Portals architecture, depicting the connection between the portal and the Appian applications described above](images/portals-architecture-diagram.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img337)

[![](images/portals-architecture-diagram.png)](#_)

**Note:**  If [mutual TLS authentication](Web_API_Authentication.html#mutual-tls-authentication) is enabled in your environment, you will not be able to make a web API request from a portal. Check with an administrator if you aren't sure whether mutual TLS is enabled.

### Querying data using CDTs

You can query data in your portal using a CDT by creating a custom integration using a web API, integration object, and connected system.

This section outlines how to query data in a portal using a CDT and data store.

#### Step 1: Create a web API

You'll first need to create a web API that queries your data store. This is pretty simple since you can use an API template that automatically populates some common fields and selections to start you out.

To create a web API:

1.  Create a constant that points to your data store.
2.  Create a web API using the **Query Data Store** template.
    -   **Note**: This template gives query results formatted in JSON, which you'll convert to an Appian value in your integration object.

For general help creating a web API, check out [Creating web APIs](Designing_Web_APIs.html). For help creating a web API that queries data, go through the [web API Tutorial](Web_API_Tutorial.html), which walks you through creating a web API that queries a record type.

#### Step 2: Create an API key and service account

In order to connect to the web API, you'll need an [API key](Appian_Administration_Console.html#web-api-authentication) that is associated with a [service account](portals-service-accounts.html).

To create a new API Key:

1.  In the Admin Console, go to the **Web API Authentication** page.
2.  On the **API Keys** tab, click **Create**.
3.  Enter a unique **Description**.
4.  Select a **Service Account** to associate with the key. To create a new service account:
    -   Click Create Service Account .
    -   Enter a username and click **CREATE**.
        -   **Tip**: "Service Account" will automatically be added to the end of the service account name. See [Service accounts](Appian_Administration_Console.html#service-accounts).
5.  Click **CREATE**.

    ![screenshot of the create api key dialog](images/create_api_key.png)

6.  Copy the **API Key** and store it externally. Appian will never show the value of the API key a second time.
7.  Repeat these steps in each environment, making sure the following are the same in each environment:
    -   API key **Description**.
    -   Service account **Username**.
    -   Service account permissions and group membership.

In order to query data, the service account needs to have **Viewer** permissions to the web API and data store.

To give your service account the appropriate access:

1.  Add the service account to a user group in your application.
2.  Give the group **Viewer** [permissions](portals-service-accounts.html#prodlink-portals-service-account-permissions) to the web API and data store.

You can use the same service account that you set up with your API key as the [portal service account](portals-create.html#step-4-add-a-service-account-and-set-permissions) that you add in the portal object. Just be sure to use the same service account to [grant the required permissions](portals-service-accounts.html#prodlink-portals-service-account-permissions) to other design objects used in your portal.

#### Step 3: Create a connected system

Now you need to add your API key and credentials to a connected system to use with the integration.

To create a connected system for authentication:

1.  Create a new [HTTP connected system](http-connected-system.html).
2.  For **Authentication**, select **API Key**.
3.  For **Header**, enter `appian-api-key`.
4.  For **Value**, provide the API key from when you [created the API key](#step-2-create-an-api-key-and-service-account).

#### Step 4: Create an integration object

Once you've created your API and authentication objects, create an [integration object](Integration_Object.html) that is set up to query data using the connected system that you just created.

To configure your integration:

1.  In the **Connection** section, configure the following fields:
    -   Select **Use a connected system** and choose the connected system you created in [Step 3](#step-3-create-a-connected-system).
    -   For **URL**, enter the web API URL as the endpoint for the integration.
    -   For **Method**, select **GET**.
2.  In the **Response** section, for **Response Body Parsing**, select **Convert JSON to Appian value**.
3.  Click **TEST REQUEST** and verify the result that is returned.

    **Note:**  If there are unexpected question marks (?) in the response body, it may be because you need to modify the _header_ parameter in the [a!httpResponse()](fnc_system_a_httpresponse.html) function of the web API expression to handle special characters. See this [Knowledge Base](https://community.appian.com/support/w/kb/1306/kb-1851-web-apis-return-special-characters-as-question-marks) article for more information.

For more help, see [Create an Integration](Create_an_Integration.html).

#### Step 5: Call the integration from your portal interface

In your portal interface, [call your integration](Call_an_Integration.html#call-an-integration-to-query-data). [Cast the dictionary results](#example-cast-integration-results-to-cdt-in-a-portal) returned by your integration into the CDT that you're using for your data. This will let you easily reference your queried data throughout your portal without extra formatting.

**Tip:**  Instead of casting your integration results from a dictionary to a CDT directly within your interface, you have the option to create individual or reusable expression rules to cast your integration results. You would then call the integration from your interface and wrap it in the expression rule.

##### Example: Cast integration results to CDT in a portal

Using local variables within an interface, you can cast your integration results from a dictionary to whichever CDT you're using to work with your data.

```
1
2
3
4
5
6
7
8
9
a!localVariables(
  local!data: cast(
    type!myCDT,
    rule!myQueryIntegration().result.body
  ),
  a!gridField(
    data: local!data
  )
)
```

For further examples, check out [calling an integration to query data](Call_an_Integration.html#call-an-integration-to-query-data).

#### Step 6: Test your portal

After [creating a portal object](portals-create.html), adding the interface, and publishing the portal, be sure to fully [test the published portal](portals-manage-portals.html#testing-portals).

#### Step 7: Deploy your portal

When you deploy a published portal to another environment, Appian will attempt to publish the portal in the target environment.

See [Publish a portal through deployment](portals-manage-portals.html#publish-a-portal-through-deployment) for instructions on how to make sure your portal will automatically publish when you deploy it.

### Writing data using CDTs

You can write data from your portal using a CDT by creating a custom integration using a web API, integration object, and connected system.

This section outlines how to write data from a portal using a CDT and data store.

#### Step 1: Create a web API

You'll first need to create a web API that writes data directly to your data store. This is pretty simple since you can use an API template that automatically populates some common fields and selections to start you out.

To create a web API:

1.  Create a constant that points to your data store.
2.  Create a web API using the **Write to Data Store** template.
    -   **Note**: This template casts the body of your integration first to a dictionary and then to the CDT you're using for your data. This casting becomes relevant later on when setting up your integration.

If you need help creating a web API that writes data, go through the [Web API Tutorial Level II](Web_API_Tutorial_-_Level_II.html), which walks you through creating a web API that writes data to a record type.

#### Step 2: Create an API key and service account

In order to connect to the web API, you'll need an [API key](Appian_Administration_Console.html#web-api-authentication) that is associated with a [service account](portals-service-accounts.html).

To create a new API Key:

1.  In the Admin Console, go to the **Web API Authentication** page.
2.  On the **API Keys** tab, click **Create**.
3.  Enter a unique **Description**.
4.  Select a **Service Account** to associate with the key. To create a new service account:
    -   Click Create Service Account .
    -   Enter a username and click **CREATE**.
        -   **Tip**: "Service Account" will automatically be added to the end of the service account name. See [Service accounts](Appian_Administration_Console.html#service-accounts).
5.  Click **CREATE**.

    ![screenshot of the create api key dialog](images/create_api_key.png)

6.  Copy the **API Key** and store it externally. Appian will never show the value of the API key a second time.
7.  Repeat these steps in each environment, making sure the following are the same in each environment:
    -   API key **Description**.
    -   Service account **Username**.
    -   Service account permissions and group membership.

In order to write data, the service account needs to have Viewer permissions to the web API and data store.

To give your service account the appropriate access:

1.  Add the service account to a user group in your application.
2.  Give the group **Viewer** [permissions](portals-service-accounts.html#prodlink-portals-service-account-permissions) to the web API and data store.

You can use the same service account that you set up with your API key as the [portal service account](portals-create.html#step-4-add-a-service-account-and-set-permissions) that you add in the portal object. Just be sure to use the same service account to [grant the required permissions](portals-service-accounts.html#prodlink-portals-service-account-permissions) to other design objects used in your portal, like records, processes, and document folders.

#### Step 3: Create a connected system

Now you need to add your API key to a connected system for the integration.

To create a connected system for authentication:

1.  Create a new [HTTP connected system](http-connected-system.html).
2.  For **Authentication**, select **API Key**.
3.  For **Header**, enter `appian-api-key`.
4.  For **Value**, provide the API key from when you [created the API key](#step-2-create-an-api-key-and-service-account-1).

#### Step 4: Create an integration

Once you've created your API and authentication objects, create an integration that is set up to modify data using the connected system that you just created.

To configure your integration:

1.  On the right side under **RULE INPUTS**, add the CDT that you're using for your data as a rule input.
2.  In the **Connection** section, configure the following fields:
    -   Select **Use a connected system** and choose the connected system you created in [Step 3](#step-3-create-a-connected-system-1).
    -   For **URL**, enter the web API URL as the endpoint for the integration.
    -   For **Method**, select **POST**.
3.  In the **Request Body** section, do the following:
    -   For **Content Type**, select **JSON**.
    -   Call your rule input into the request body of your integration.
4.  In the **Automatic Output Parsing section**, make sure **Automatically convert CDT, dictionary, or list to JSON** is selected. This converts your integration results from the CDT in your rule input into JSON, which will then be converted to a dictionary and back into your CDT when it's called into your web API.

For more help, see [Create an Integration](Create_an_Integration.html).

#### Step 5: Call the integration from your portal interface

Next, call your integration from your portal interface. For examples on how and where to call your integration in the portal, check out [Calling an Integration to Modify Data](Call_an_Integration.html#call-an-integration-to-modify-data-in-an-interface-component-or-web-api).

#### Step 6: Test your portal

After [creating a portal object](portals-create.html), adding the interface, and publishing the portal, be sure to fully [test the published portal](portals-manage-portals.html#testing-portals).

#### Step 7: Deploy your portal

When you deploy a published portal to another environment, Appian will attempt to publish the portal in the target environment.

See [Publish a portal through deployment](portals-manage-portals.html#publish-a-portal-through-deployment) for instructions on how to make sure your portal will automatically publish when you deploy it.

## Working with data in a publicly-accessible external database

The best way to work with data in portals is using [record types](#working-with-data-using-record-types). However, you also have the option of directly connecting to a publicly-available external database.

There are a couple of reasons why you might want to take this approach:

-   **Scalability**: When you connect directly to an external database, calls to the database don't pass through Appian. This means that your portal isn't bound to scalability of Appian. Instead, it is bound by the scalability of the database.
-   **Isolation**: When you connect directly to an external database, your portal is not connected to your Appian applications via web APIs and integrations. During heavy usage, this isolation means that you don't have to worry about a lot of web API calls from your portal impacting the performance of your Appian applications.

In order to connect a portal in this way, the database you're connecting to must meet the following criteria:

-   It must be a [supported external database](data-source-connected-systems.html#supported-data-sources).
-   It must not be behind a VPN.
-   It must be accessible at a public IP address.

This section explains how to directly connect to an external database to query or write data in your portal.

### Step 1: Set up your external data source

To set up your external data source to query or write data:

1.  Provide a [supported database](data-source-connected-systems.html#supported-data-sources) that can be accessed at a public IP address.
2.  Create a [data source connected system](data-source-connected-systems.html) to connect to the database.
3.  Create a corresponding data store object.

### Step 2: Set up your service account

To write and query data in the external database, you need to give the portal the appropriate permissions to the data store. This is done using a [service account](portals-service-accounts.html), which acts on behalf of your portal users.

In order to write and query data, the service account needs have **Viewer** permissions to the data store.

To give your service account the appropriate access:

1.  In the portal object, [add a service account](portals-create.html#step-4-add-a-service-account-and-set-permissions).
2.  Add the service account to a user group in your application.
3.  Give the group **Viewer** [permissions](portals-service-accounts.html#prodlink-portals-service-account-permissions) to the data store for the external database.

You can only link one service account in the [portal object](portal-object.html#service-access). If you're using a service account to give access to records, processes, or documents, use the same service account for the data store.

### Step 3: Set up your portal interface

In your portal interface, use [a!writeToDataStoreEntity()](Write_to_Data_Store_Entity_Smart_Service.html), [a!writeToMultipleDataStoreEntities()](Write_to_Multiple_Data_Store_Entities_Smart_Service.html), [a!deleteDataStoreEntity()](Delete_from_Data_Store_Entities_Smart_Service.html), and/or [a!queryEntity()](fnc_system_a_queryentity.html) just as you normally would in Appian.

If you are querying data, we recommend that you [cast the dictionary returned from your query to a CDT](Casting.html).

Be aware that any calls to your external database go directly to the database and don't pass through Appian.

### Step 4: Provide connection information in the import customization file

When you deploy your portal object to a different environment, include an [import customization file (ICF)](portals-manage-portals.html#import-customization-files-for-portals) in the app or deployment package. In the ICF, provide your data source connected system credentials.

For more information on publishing and deploying portals, see [Manage a Portal](portals-manage-portals.html).

For more information on deploying data source connected systems, see [Deploying data source connected systems](data-source-connected-systems.html#deploying-data-source-connected-systems).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...