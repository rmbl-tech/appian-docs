---
source_url: https://docs.appian.com/suite/help/25.3/amazon-machine-learning.html
original_path: amazon-machine-learning.html
version: "25.3"
title: "Amazon Machine Learning"
page_id: "amazon-machine-learning"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Amazon Machine Learning

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Note:**  Amazon ML is no longer available to new Amazon customers.

## Overview

Easily connect to Amazon Web Services Machine Learning models to make predictions based on your data. Pick from available models and quickly map your data to build smarter applications for fraud detection, demand forecasting, targeted marketing, and more.

See Amazon documentation on [requesting real time predictions](https://docs.aws.amazon.com/machine-learning/latest/dg/requesting-real-time-predictions.html).

For information that pertains to all connected systems, see [Connected System Object](Connected_System_Object.html).

## Properties

The Amazon Machine Learning connected system has the following properties:

| Field | Description |
| --- | --- |
| Name | **Required**. The name of the connected system. Use a name that will uniquely identify this connection to the external system. |
| Description | Supplemental information about the connected system that is displayed in the objects grid of some Designer views and when selecting the system in an integration object. |
| System Logo | An image document used to visually represent the external system or service being connected to. The logo is displayed in the integration designer and in the Process Modeler on integrations that connect to this system (using the [Call Integration Smart Service](Call_Integration_Smart_Service.html)). If no document is selected a default logo will be used instead. |
| Access Key Id\* | **Required**. Amazon uses a custom authentication schema that requires a special signing of the request using an access key, secret access key, and region. The access key id, along with an associated secret access key and region, are used to access Amazon services. Your access key id is the first piece of a set of programmatic credentials that can be generated for Amazon Identity and Access Management (IAM) user accounts. |
| Secret Access Key\* | **Required/Sensitive**. Your secret access key is the second piece of a set of programmatic credentials that can be generated for Amazon IAM user accounts. |
| Region\* | **Required**. Your region is the third piece of a set of programmatic credentials that can be generated for Amazon IAM user accounts. |
| Data Source Shortcut | Determines whether to show the connected system as a [data source shortcut](configure-record-data-source.html#create-data-source-shortcuts) in the record type configuration. |
| Shortcut Display Name | The name of the data source shortcut option. This property only appears when **Data Source Shortcut** is selected. |

\* _This value is included in an import customization file so that you can specify a different value for each environment. **Sensitive** values will not be exported in the import customization file and must be added manually. **Required** fields must have a value upon import or else import will fail. For more information on import/export behavior, see the [Connected Systems Object](Connected_System_Object.html#import-customization-file) page._

![aml_connected_system](images/create_a_connected_system/aml_connected_system.png)

## Operations

| Name | Description | Type |
| --- | --- | --- |
| Run a Prediction | [Run a prediction](https://docs.aws.amazon.com/machine-learning/latest/dg/requesting-real-time-predictions.html) on an existing Amazon Machine Learning model | READ |

![aml_integration.png](images/create_a_connected_system/aml-integration.png)

### Automating property updates

This object's properties can also be updated programmatically using the [Update Connected System endpoint](Update_Connected_System_Endpoint.html). This lets you change passwords, API keys, and other values without needing to sign in to Appian.

The following properties can be included in the JSON request body of the `PATCH /connected-system/<UUID>` call.

-   `accessKey`
-   `secretAccessKey`
-   `region`

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...