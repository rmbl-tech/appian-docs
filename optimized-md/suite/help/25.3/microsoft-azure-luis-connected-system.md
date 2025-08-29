---
source_url: https://docs.appian.com/suite/help/25.3/microsoft-azure-luis-connected-system.html
original_path: microsoft-azure-luis-connected-system.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Microsoft Azure LUIS

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Easily connect to Microsoft Azure Language Understanding (LUIS) machine learning models to understand what your users want in their own words. Integrations using this connected system will allow you to provide a user's input and LUIS will extract the intent and associated entities represented by the text.

See Microsoft documentation on [getting predictions from an endpoint](https://westus.dev.cognitive.microsoft.com/docs/services/5819c76f40a6350ce09de1ac/operations/5819c77140a63516d81aee78).

For information that pertains to all connected systems, see [Connected System Object](Connected_System_Object.html).

## Properties

The Microsoft Azure LUIS connected system has the following properties:

| Field | Description |
| --- | --- |
| Name | **Required**. The name of the connected system. Use a name that will uniquely identify this connection to the external system. |
| Description | Supplemental information about the connected system that is displayed in the objects grid of some Designer views and when selecting the system in an integration object. |
| System Logo | An image document used to visually represent the external system or service being connected to. The logo is displayed in the integration designer and in the Process Modeler on integrations that connect to this system (using the [Call Integration Smart Service](Call_Integration_Smart_Service.html)). If no document is selected a default logo will be used instead. |
| Subscription Key\* | **Sensitive**. Subscription keys can been found in your Azure portal or in the "Publish" tab of the LUIS application. In the "Publish" tab, any key that is NOT labeled "Starter\_Key" is a subscription key. |
| Subscription Key Region\* | Region for LUIS Endpoint API. The region in which you publish your LUIS app corresponds to the region or location you specify in the Azure portal when you create an Azure LUIS endpoint key. When you publish an app, LUIS automatically generates an endpoint URL for the region associated with the key. |
| Starter Key\* | **Sensitive**. This key can be found in the "Publish" tab of the LUIS portal for any of your LUIS apps and is called "Starter\_Key". This key is also referred to as the "Programmatic Key" in the Microsoft documentation. |
| Starter Key Region\* | Region for LUIS Programmatic API. The authoring region app can only be published to a corresponding publish region. |
| Bing Spell Check Subscription Key\* | **Sensitive**. Specifying this value allows you to run spell check on query text before sending it through the model. You can create a Bing Spell Check key in your Azure portal. |
| Use Staging?\* | When checked, Appian will query your staging model. Use this feature to validate changes to your model. You should always uncheck this box in production using import customization. |
| Data Source Shortcut | When checked, shows the connected system as a [data source shortcut](configure-record-data-source.html#create-data-source-shortcuts) in the record type configuration. |
| Shortcut Display Name | The name of the data source shortcut option. This property only appears when **Data Source Shortcut** is selected. |

\* _This value is included in an import customization file so that you can specify a different value for each environment. **Sensitive** values will not be exported in the import customization file and must be added manually. **Required** fields must have a value upon import or else import will fail. For more information on import/export behavior, see the [Connected Systems Object](Connected_System_Object.html#import-customization-file) page._

![screenshot of the LUIS connected system object](images/create_a_connected_system/luis_connected_system.png)

### Automating property updates

This object's properties can also be updated programmatically using the [Update Connected System endpoint](Update_Connected_System_Endpoint.html). This lets you change passwords, API keys, and other values without needing to sign in to Appian.

The following properties can be included in the JSON request body of the `PATCH /connected-system/<UUID>` call.

-   `subscriptionKey`
-   `subscriptionKeyRegion`
-   `starterKey`
-   `starterKeyRegion`
-   `bingSpellCheckSubscriptionKey`
-   `staging`

## Operation

| Name | Description | Type |
| --- | --- | --- |
| Get Predictions from Endpoint | [Predict](https://westus.dev.cognitive.microsoft.com/docs/services/5819c76f40a6350ce09de1ac/operations/5819c77140a63516d81aee78) the intent and associated entities using an existing model | READ |

![screenshot of the LUIS integration object](images/create_a_connected_system/luis-integration.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...