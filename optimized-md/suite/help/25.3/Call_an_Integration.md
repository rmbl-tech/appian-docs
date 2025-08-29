---
source_url: https://docs.appian.com/suite/help/25.3/Call_an_Integration.html
original_path: Call_an_Integration.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Call an Integration

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Introduction

This article explains how to call integration objects from your application.

-   To learn about integration objects and their configuration options, see [Integration Objects](Integration_Object.html).
-   To learn how to use the integration designer to configure, test, and troubleshoot HTTP integrations, see [Create an HTTP Integration](Create_an_Integration.html).
-   For a real-world example of how to build and use connected systems and integrations, see the [Integration Tutorial](Integration_Tutorial.html).

## Querying Data versus Modifying Data

Consider the following integrations involving an external payment gateway:

1.  Retrieve a list of credit card transactions
2.  Process a new credit card transaction

The first integration queries data, but doesn't make any changes. You could call this integration multiple times without any impact on the data in the external system.

The second integration does make a change: it processes the credit card transaction (this is also known as having [side-effects](functions-side-effects.html)). Inadvertently calling this integration more than once would cause a big problem: _the customer would be charged twice for the same purchase!_

**Note:**  The integration designer allows you to choose whether an integration queries or modifies data. Make sure to select the correct option to protect against duplicate changes in the external system.

Whether an integration queries data or modifies data determines where it can be called in Appian:

| Location | Query Data | Modify Data |
| --- | --- | --- |
| Expression or rule | ✔ |   |
| Interface component saveInto parameter | ✔ | ✔ |
| Web API (GET) | ✔ |   |
| Web API (POST, PUT, DELETE) | ✔ | ✔ |
| Process Model ([Call Integration Smart Service](Call_Integration_Smart_Service.html)) | ✔ | ✔ |

## Call an Integration to Query Data

**Tip:**  When integrating with slow external systems that you can't control, consider using [a!asyncVariable()](fnc_evaluation_a_asyncvariable.html) to load the data asynchronously. This allows users to interact with the rest of the interface while waiting for the external system. See [Asynchronous Loading](async_loading.html) for more information.

Integrations that query data are called like _expression rules_ using the `rule!` domain and can be used in any [expression](Expressions.html) (interface, process model, expression rule, record type, web API).

When calling an integration, values or variables can be passed to the rule inputs by position or by keyword.

Integrations that query data return a [dictionary](parts-of-an-expression.html#dictionaries) with the following fields:

| Field | Data Type | Description |
| --- | --- | --- |
| success | Boolean | A boolean set to `true` if the call was successful or `false` if it was unsuccessful. |
| result | HttpResponse | A value containing the [result returned by the integration](Integration_Object.html#http-result). |
| error | IntegrationError | If success was `false`, a value containing the [error returned by the integration](Integration_Object.html#error), otherwise `null`. |
| connectedSystem | Connected System | If the integration is using an [OAuth connected System](Integration_Object.html#oauth-connected-system), the connected system's value will be stored. Used to create an [authorization link](authorization_link_component.html) |

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
a!localVariables(
  /* Call the integration to query the external system */
  local!externalQuery: rule!GetUnsettledTransactionList(),

  /* Handle the response depending on the outcome */
  local!value: if(local!externalQuery.success,
    local!externalQuery.result,
    local!externalQuery.error
  )
)
```

To learn more, you can explore the following resources:

-   See a complete example of calling an integration to query data in the [Integration Tutorial](Integration_Tutorial.html).
-   Take the [Integrations 101 Academy Online course](https://academy.appian.com/#/online-courses/edc9b638-b053-438d-957d-e3db00012372)
-   Watch this video from the [Appian Community YouTube Channel](https://www.youtube.com/@AppianCommunity):

## Call an Integration to Modify Data in an interface component or Web API

Integrations that modify data are called like _smart service functions_ using the `rule!` domain and can only be used in the [saveInto parameter of a component](executing_smart_services.html) or in a [Web API](Designing_Web_APIs.html#executing-a-smart-service). This protects against duplicate updates in the external system.

When calling an integration, values or variables can be passed to the rule inputs by position or by keyword.

Integrations configured to modify data have two additional inputs:

| Input | Data Type | Description |
| --- | --- | --- |
| onSuccess | Any Type | A list of saves or an HTTP response to execute after the integration executes successfully. Created with `a!save()` or `a!httpResponse()`. The [result returned by the integration](Integration_Object.html#http-result) is available in the function variable `fv!result`. |
| onError | Any Type | A list of saves or an HTTP response to execute after the integration **does not** execute successfully. Created with `a!save()` or `a!httpResponse()`. The [result returned by the integration](Integration_Object.html#http-result) is available in the function variable `fv!result`. The [error returned by the integration](Integration_Object.html#error) is available in the function variable `fv!error`. If the integration uses an [OAuth connected System](Integration_Object.html#oauth-connected-system), that connected system's value will be store in the function variable `fv!connectedSystem` |

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
a!buttonWidget(
  label: "Place Your Order",

  /* Call the integration to update the external system when the button is pressed */
  saveInto: rule!AuthorizeCreditCardPayment(
    cardNumber: local!cardNumber,
    expirationDate: local!expirationDate,
    ccv: local!ccv,
    amount: local!amount,
    onSuccess: {
      /* Handle the successful response */
      a!save(local!result, fv!result)
    },
    onError: {
      /* Handle the error response */
      a!save(local!paymentErrorMessage, fv!error.message)
    }
  )
)
```

For a complete example, see the [Integration Tutorial](Integration_Tutorial.html).

## Call an Integration in a Process Model

Regardless of whether it queries or modifies data, an integration can be called in a process model using the [Call Integration Smart Service](Call_Integration_Smart_Service.html). This is particularly important for integrations that modify data since they cannot be called in expressions elsewhere in a model. It can also be useful when querying data because the Call Integration node can show a custom icon to visually indicate the system or service being called.

When calling an integration, the rule inputs are [displayed in the Node Inputs tab](Call_Integration_Smart_Service.html#node-inputs) where they can be populated from process variables or expressions. The integration outputs are displayed on the Node Outputs tab where they can be saved to process variables or used in custom output expressions.

For more information, see the [Call Integration Smart Service](Call_Integration_Smart_Service.html) page.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...