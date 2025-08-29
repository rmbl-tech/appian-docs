---
source_url: https://docs.appian.com/suite/help/25.3/Integration_Tutorial.html
original_path: Integration_Tutorial.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Integration Tutorial

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

The walk-throughs on this page will help you create your first integrations.

Use the information provided to understand how the configurations work. Then, try it with your own integrations.

The content below assumes a basic familiarity with interfaces and focuses more on the specifics of configuring an integration to an external service. Consider going through the [Interface Tutorial](SAIL_Tutorial.html) before proceeding.

The content below also assumes that you have a basic familiarity with using APIs. Note that you will need to register for a free, third-party API to complete this tutorial.

-   To learn about integration objects and their configuration options, see [Integration Objects](Integration_Object.html).
-   To learn about connected system objects and their configuration options, see [Connected System Objects](Connected_System_Object.html).
-   To learn how to use the integration object to configure, test, and troubleshoot integrations, see [Create an Integration](Create_an_Integration.html).
-   To learn how to call an integration from other places in your application, see [Call an Integration](Call_an_Integration.html).

## Tutorial scenario

In this tutorial you'll create two integrations to the Authorize.Net Payment Gateway using their [REST API](https://developer.authorize.net/):

1.  You'll create an integration that charges a credit card and use it in an interface. Since the integration is called from an interface the credit card information is never stored in Appian.
2.  You'll create an integration to retrieve unsettled credit card transactions and use it in a grid. The integration supports paging and sorting using the API.

## Create the Appian Tutorial Application

**Tip:**  The Appian Tutorial application is used throughout Appian tutorials. Skip the steps in this section if you've already created this application in another tutorial.

To begin with, we need to create an application to contain our design objects.

We will be creating the _Appian Tutorial_ application for this tutorial. All of Appian's tutorials use the Appian Tutorial application as the reference application. After completing this tutorial, you can reuse this application as you work through other Appian tutorials.

To create the Appian Tutorial application:

1.  Log in to [Appian Designer](welcome-app-designer.html).
2.  In the **Applications** view, click **\+ New Application**.
3.  In the **Create New Application** dialog, configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Name** | Enter `Appian Tutorial`. |
    | **Prefix** | Keep the default prefix, `AT`, which Appian constructs using the initial characters of each word you entered in the **Name** parameter. We'll be following the [recommended naming standard](Standard_Object_Names.html), and using this short, unique prefix whenever we name an object in this application. |
    | **Description** | Leave blank. It's normally a best practice to add descriptions to all design objects. However, to save a little time during this tutorial, we'll skip adding descriptions unless the description displays to the end user. |
    | **Generate groups and folders to secure and organize objects** | Keep this checkbox selected, so that Appian will automatically [generate standard groups and folders](creating-applications.html#generated-groups-and-folders) and [assign default security groups](creating-applications.html#default-security-groups) for this application. |

4.  Click **CREATE**.
5.  In the **Review Application Security** dialog, keep the default security settings. Because we selected the **Generate groups and folders** option in the previous step, Appian automatically uses the **AT Users** and **AT Administrator** groups it generated to set our application security appropriately.

    **Tip:**  The security of the application object is unrelated to the security of each of the objects contained within the application. This means that you will need to set security permissions for every object in an application in addition to the application object itself. For more information about security permissions for the application object, see [Application Security](application-settings.html#prodlink-security).

6.  Click **SAVE**.

    ![screenshot of the Explore view](images/application_tutorial/appian_tutorial_explore_view_23_2.png)

7.  Click **X** to close the **What do you want to build first?** dialog.

Right now, the application contains the folders and groups Appian generated automatically. To see these, click **Build** in the navigation pane.

Each design object that you create during the course of this tutorial will appear in this list in the **Build** view and be associated with the tutorial application.

![screenshot of the build view](images/application_tutorial/appian_tutorial_build_view.png)

## Set up API access

### Register for a sandbox account

If you already have access to the Authorize.Net API, you can skip to the next section.

Otherwise, [register an account](https://developer.authorize.net/hello_world/sandbox/). It is free of charge and takes less than a minute.

After you have registered, record your account login information, along with the **API LOGIN ID** and **TRANSACTION KEY** that displays after registration.

### Create API constants

In Appian, create constants to hold the value of your Authorize.Net **API LOGIN ID** and **TRANSACTION KEY**.

1.  Create a new constant named **AUTHORIZE\_DOT\_NET\_API\_LOGIN\_ID** of type **Text** and set the value to your Authorize.Net **API LOGIN ID**.
2.  Create a new constant named **AUTHORIZE\_DOT\_NET\_TRANSACTION\_KEY** of type **Text** and set the value to your Authorize.Net **TRANSACTION KEY**.

**Note:**  You can store these constants in the **AT Rules & Constants** folder that Appian generated during application creation.

These constants will be used in later steps to identify you when calling the Authorize.Net API.

## Create an HTTP connected system

You'll create an HTTP connected system to represent Authorize.Net and use it in each of the individual integrations.

1.  In the **Build** view, select **NEW** > **Connected System**.
2.  Select **HTTP**.
3.  Name the connected system **Authorize.Net** and give it a **Description** that will help you identify it.
4.  Download [this image](images/integration_tutorial/authorize-net-logo.png) and upload it as the **System Logo** to represent Authorize.Net. You can store this image in the **AT Artifacts** folder that Appian generated during application creation.
5.  In the **Base URL** field, enter the value of the Authorize.Net Sandbox API endpoint: `https://apitest.authorize.net/xml/v1/request.api`
6.  Click **Use in New Integration** to save the new connected system and immediately use it in the first integration. ![Connected System Creation](images/integration_tutorial/connected_system.png)
7.  In the **Review Connected System Security** dialog, keep the settings for the [default security groups](creating-applications.html#default-security-groups) that Appian generated during application creation.
8.  Click **SAVE**. The **Create Integration** dialog appears.

## Charge a credit card

You'll use the Payment Transactions API to [charge a credit card](https://developer.authorize.net/api/reference/index.html#payment-transactions-charge-a-credit-card). The API documentation includes a wide variety of transaction features, but for this tutorial you'll just submit a simple request.

### Create the credit card payment integration

To create the credit card payment integration:

1.  In the **Create Integration** dialog, name the integration **AuthorizeCreditCardPayment**.
2.  Click **CREATE**. The integration opens in a new window or tab.
3.  In the **Connection**, section, configure the following properties:
    -   If the Authorize.Net connected system created earlier isn't already pre-populated, select **Use an existing connected system** and use the **Connected System** picker to select it from the list.
    -   For **Method**, select **POST**. Selecting **POST** automatically switches **Usage** to **Modifies data**. Since this integration will submit credit card payments, this is the correct selection. See [Querying Data versus Modifying Data](Call_an_Integration.html#querying-data-versus-modifying-data) on the Call an Integration page for more information.
4.  In the **Request Body** section, for **Content-Type** select **JSON (application/json)**.
    -   The Authorize.Net API also supports XML (text/xml), but JSON is easier to work with in this scenario.
5.  In the expression box, copy and paste the following expression to create the request body:

    **Tip:**  This expression comes from Authorize.Net's [charge a credit card](https://developer.authorize.net/api/reference/index.html#payment-transactions-charge-a-credit-card) documentation. We simplified the request and replaced the `name:` and `transaction:` key fields with the constants we created earlier.

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
    {
      "createTransactionRequest": {
        "merchantAuthentication": {
          "name": cons!AUTHORIZE_DOT_NET_API_LOGIN_ID,
          "transactionKey": cons!AUTHORIZE_DOT_NET_TRANSACTION_KEY
        },
        "transactionRequest": {
          "transactionType": "authCaptureTransaction",
          "amount": "100.00",
          "payment": {
            "creditCard": {
              "cardNumber": "5424000000000015",
              "expirationDate": "2025-12",
              "cardCode": "999"
            }
          }
        }
      }
    }
    ```

6.  Make sure **Automatically convert CDT, dictionary, or list to JSON** is selected.
7.  For **Response Body Parsing**, choose **Convert JSON to Appian value**.
8.  Click **Test Request**. You should receive a result with a status code of `200` and a body containing a `transactionResponse` with a message indicating that `"This transaction has been approved"`.

    ![Payment Success](images/integration_tutorial/payment_success_response.png)

9.  If you receive an unexpected result or an error, check the integration configuration, confirm your API Login Key and Transaction Key, and use the **HTTP Request** and **HTTP Response** tabs to diagnose the problem.
    -   Note that if you test multiple times with the same credit card number and amount, you may get results indicating that a duplicate transaction has been submitted. Change the amount to test additional transactions.

You now have a working integration! However, this integration isn't that useful because it can only charge a specific amount to a specific card.

### Add payment rule inputs

Add rule inputs for the credit card information and the transaction amount to allow the integration to be used for any payment.

1.  Expand the rule inputs pane on the right side of the screen. Since this integration is configured to modify data you'll notice that the **onSuccess** and **onError** rule inputs appear automatically.
    -   For more information on **onSuccess** and **onError** rule inputs, see [Call an Integration](Call_an_Integration.html#call-an-integration-to-modify-data-in-an-interface-component-or-web-api).
2.  Create the following additional rule inputs:
    -   **cardNumber** (Text)
    -   **expirationDate** (Number (Integer))
    -   **cvv** (Number (Integer))
    -   **amount** (Number (Decimal))
3.  Update the **Body** expression to use the new rule inputs:

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
    {
      "createTransactionRequest": {
        "merchantAuthentication": {
          "name": cons!AUTHORIZE_DOT_NET_API_LOGIN_ID,
          "transactionKey": cons!AUTHORIZE_DOT_NET_TRANSACTION_KEY
        },
        "transactionRequest": {
          "transactionType": "authCaptureTransaction",
    !        "amount": tostring(ri!amount),
          "payment": {
            "creditCard": {
    !            "cardNumber": ri!cardNumber,
    !            "expirationDate": tostring(ri!expirationDate),
    !            "cardCode": tostring(ri!cvv)
            }
          }
        }
      }
    }
    ```

    **Tip:**  We used `tostring()` for the amount, expirationDate, and cvv rule inputs because they are Number data types. However, when sending the request via JSON, Authorize.Net requires the values to be sent as a string. Since cardNumber is already a Text data type, it does not need to be converted to a string.

4.  Test the new configuration by providing test values for the four rule inputs. You can use the same values as in the original configuration (varying the amount), or you can experiment with other test values as described in the [Authorize.Net Testing Guide](https://developer.authorize.net/hello_world/testing_guide/).
5.  Be sure to save your integration.

### Add error handling

You can configure the error handling to return more appropriate errors that will help both you and the end user.

#### What you should know about error codes

By default, an integration will be considered successful if the system returns a status code of `200`. However, even with a `200` status code, the integration could still return an error.

For example, if the card is expired, the integration will respond with a `200` error code because the request was transmitted successfully. However, it will also contain an error message that the transaction was not completed because the card is expired.

In contrast, if there is something wrong with the URL, you will receive a `404` status code, which means that the requested URL could not be found. This means that the request was not transmitted successfully and will result in a different type of error message.

#### Identifying error parameters

Notice in the following expressions that the function variable `fv!result` and dot notation is used to identify the hierarchy of parameters in the response. For example, `fv!result.body.messages.resultCode` will identify the _resultCode_ parameter in the response.

![Dot Notation in Response](images/integration_tutorial/payment_success_response_dotnotation.png)

#### Adding error handling

1.  In the **Response** section, for **Error Handling** select **Override and define all error conditions**
2.  Update the **Success Criteria** expression with:

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
    if(
      fv!success,
    !  if(
        /*In the response, if the resultCode parameter is "Error,"
        or the errors parameter is not null,
        return false*/
    !    or(fv!result.body.messages.resultCode = "Error", not(isnull(fv!result.body.transactionResponse.errors))),
    !    false,
    !    true
    !  ),
      false
    )
    ```

3.  Update the **Error Message** expression with:

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
    !if(
    /*In the response, if the statusCode parameter is 200,
    return "Transaction Could not be Completed"
    and the value of the first errorText parameter*/
    !  fv!result.statusCode = 200,
    !  a!integrationError(
    !    title: "Transaction Could not be Completed",
    !    message: fv!result.body.transactionResponse.errors[1].errorText
    !  ),
    /*Otherwise, return the title, message, and detail of the IntegrationError*/
      a!integrationError(
        title: fv!error.title,
        message: fv!error.message,
        detail: fv!error.detail
      )
    !)
    ```

### Create the payment form

You will use the **AuthorizeCreditCardPayment** integration in an interface to allow users to pay for goods or services. The form data used in the interface is hardcoded. You will need to update the form to work with a real application.

1.  Create a new interface called **ProcessCreditCardPaymentUsingExternalSystem**.
2.  Open the interface, click **Expression mode** ![expression mode icon](images/expression-mode-icon.svg), then copy and paste the following expression into the **Interface Definition** to create the interface:

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
    126
    127
    128
    129
    130
    131
    132
    133
    134
    135
    136
    137
    138
    139
    140
    141
    142
    143
    144
    145
    146
    147
    148
    149
    150
    151
    152
    153
    154
    155
    156
    157
    158
    159
    160
    161
    162
    163
    164
    165
    166
    167
    168
    169
    170
    171
    172
    173
    174
    175
    176
    177
    178
    179
    180
    181
    182
    183
    184
    185
    186
    187
    188
    189
    190
    191
    192
    193
    194
    195
    196
    197
    198
    199
    200
    201
    202
    203
    204
    205
    206
     a!localVariables(
      local!gridData: {
        {description: "Mobile device for demos", category: "Hardware", qty: 2, unitPrice: 150, amount: 300},
        {description: "Video software upgrade", category: "Software", qty: 1, unitPrice: 50.99, amount: 50.99},
        {description: "Device accessories", category: "Miscellaneous", qty: 2, unitPrice: 30.99, amount: 61.98}
      },
      local!cardNumber,
      local!expirationDate,
      local!cvv,
      local!amount: sum(index(local!gridData, "amount", 0)),
      local!paymentComplete: false,
      local!paymentErrorMessage,
      local!paymentConfirmationMessage,
      a!formLayout(
        titleBar: "Submit Credit Card Payment",
        contents: a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                a!sectionLayout(
                  label: "Order Summary",
                  contents: {
                    a!richTextDisplayField(
                      label: "Total",
                      value: a!richTextItem(text: a!currency(
                        isoCode: "USD",
                        value: local!amount
                        ),
                      size: "LARGE")
                    ),
                    a!gridLayout(
                      label: "Items",
                      labelPosition: "ABOVE",
                      headerCells: {
                        a!gridLayoutHeaderCell(label: "Description"),
                        a!gridLayoutHeaderCell(label: "Category"),
                        a!gridLayoutHeaderCell(label: "Qty", align: "RIGHT"),
                        a!gridLayoutHeaderCell(label: "Unit Price", align: "RIGHT"),
                        a!gridLayoutHeaderCell(label: "Amount", align: "RIGHT")
                      },
                      rows: {
                        a!forEach(
                          items: local!gridData,
                          expression:
                          a!gridRowLayout(
                            contents: {
                              a!textField(
                                value: fv!item.description,
                                readOnly: true
                              ),
                             a!textField(
                               value: fv!item.category,
                               readOnly: true
                             ),
                             a!integerField(
                               value: fv!item.qty,
                               readOnly: true
                             ),
                             a!textField(
                               value: a!currency(
                                 isoCode: "USD",
                                 value: fv!item.unitPrice
                               ),
                               readOnly: true
                             ),
                             a!textField(
                               value: a!currency(
                                 isoCode: "USD",
                                 value: fv!item.amount
                                 ),
                                readOnly: true
                              )
                            }
                          )
                        ),
                        a!gridRowLayout(
                          contents: {
                            a!textField(
                              value: "",
                              readOnly: true
                            ),
                            a!textField(
                              value: "",
                              readOnly: true
                            ),
                            a!textField(
                              value: "",
                              readOnly: true
                            ),
                            a!textField(
                              value: "Total",
                              readOnly: true
                            ),
                            a!textField(
                              value: a!currency(
                                isoCode: "USD",
                                value: local!amount
                              ),
                              readOnly: true
                            )
                          }
                        )
                      },
                      selectionSaveInto: {},
                      validations: {},
                      shadeAlternateRows: true
                    )
                  }
                )
              }
            ),
            a!columnLayout(
              contents: {
                a!sectionLayout(
                  label: "Payment Information",
                  contents: {
                    a!textField(
                      label: "Card Number",
                      labelPosition: "ABOVE",
                      placeholder: "0000111122223333",
                      value: local!cardNumber,
                      saveInto: {
                        local!cardNumber,
                        a!save(local!paymentErrorMessage, null)
                      },
                      refreshAfter: "KEYPRESS",
                      required: true,
                      disabled: local!paymentComplete
                    ),
                    a!integerField(
                      label: "Expiration Date",
                      labelPosition: "ABOVE",
                      placeholder: "MMYY",
                      value: local!expirationDate,
                      saveInto: {
                        local!expirationDate,
                        a!save(local!paymentErrorMessage, null)
                      },
                      refreshAfter: "KEYPRESS",
                      required: true,
                      disabled: local!paymentComplete
                    ),
                    a!integerField(
                      label: "cvv",
                      labelPosition: "ABOVE",
                      placeholder: "999",
                      value: local!cvv,
                      saveInto: {
                        local!cvv,
                        a!save(local!paymentErrorMessage, null)
                      },
                      refreshAfter: "KEYPRESS",
                      required: true,
                      disabled: local!paymentComplete
                    ),
                    if(local!paymentComplete,
                    {
                      a!richTextDisplayField(
                        value: {
                          a!richTextImage(image: a!documentImage(document: a!iconIndicator(icon: "STATUS_OK"))),
                          a!richTextItem(text: "Payment Complete! ", size: "MEDIUM"),
                          a!richTextItem(text: "Transaction ID " & local!paymentConfirmationMessage, style: "UNDERLINE")
                        }
                      )
                    },
                    a!buttonLayout(
                      primaryButtons: {
                        a!buttonWidget(
                          label: "Place Your Order",
                          saveInto: {},
                          style: "SOLID",
                          disabled: not(isnull(local!paymentErrorMessage)),
                          loadingIndicator: true,
                          validate: true
                        )
                      }
                    )
                    ),
                    a!richTextDisplayField(
                      value: a!richTextItem(text: "Credit card transactions are handled by our secure payment processor. We do not store your credit card information.", style: "EMPHASIS")
                    ),
                    a!richTextDisplayField(
                      value: a!richTextItem(text: "When you click the 'Place Your Order' button, we'll send you an email message acknowledging receipt of your order. Your contract to purchase an item will not be complete until we send you an email notifying you that the item has been shipped.", style: "EMPHASIS")
                    )
                  },
                  validations: if(isnull(local!paymentErrorMessage),
                  {},
                  local!paymentErrorMessage
                  )
                )
              }
            )
          }
        ),
        buttons: a!buttonLayout(
          primaryButtons: {
            a!buttonWidget(
              label: "Continue",
              submit: true,
              style: "SOLID",
              disabled: not(local!paymentComplete),
            )
          }
        )
      )
    )
    ```

3.  The interface will display and you can enter credit card information, but nothing will be submitted when you click the **Place Your Order** button because we haven't yet added the integration.

    ![](images/integration_tutorial/payment_form_inputs.png)

Notice that when you click the **Place Your Order** button, an animated loading indicator appears on the button while it's processing. On interfaces like this one that take longer to load submissions, the loading indicator animation lets users know that their request is being processed.

### Call the integration from the payment form

You'll now update the form to call the **AuthorizeCreditCardPayment** integration so that credit card transactions are sent to Authorize.Net.

#### Adding the integration to the interface

Add the integration to the interface using the following steps:

1.  In the interface expression, call the integration into the **Place Your Order** button by copying and pasting the following expression into the button's _saveInto_ parameter:

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
     {
       rule!AuthorizeCreditCardPayment(
       cardNumber: local!cardNumber,
       expirationDate: local!expirationDate,
       cvv: local!cvv,
       amount: local!amount,
       onSuccess: {
         /* Handle successful payment and show confirmation */
         a!save(local!paymentErrorMessage, null),
         a!save(local!paymentComplete, true),
         a!save(
           local!paymentConfirmationMessage,
           fv!result.body.transactionResponse.transId
         ),
       },
       onError: {
         /* Handle HTTP error */
         a!save(local!paymentErrorMessage, fv!error.message),
       }
     )
     }
    ```

2.  Test the completed form with a variety of inputs to see what happens. To help you try out different scenarios, you can find test credit card numbers and their associated details at [Authorize.Net Testing Guide](https://developer.authorize.net/hello_world/testing_guide/).
    -   **Note:** If you send a transaction that will cause an error, such as a duplicate transaction, you may see an error at the top of the interface. This message lets the designer know there was an integration error, but it will not be shown to the end user. You can dismiss the error message to see the resulting interface.
3.  Be sure to save your interface.

#### On success and on error scenarios

When processing the results of the integration, the interface in this tutorial handles several different scenarios:

-   If an HTTP error (such as a `404` status code) or a network error (such as a request timeout) occurs, the **onError** input will be executed. When this happens the interface will show the error message in the function variable `fv!error.message` to the user.
-   If the call to the integration returns a `200` status code, the **onSuccess** input will be executed. The interface parses the response body in `fv!result.body` and updates the form depending on the if the response contains an error or not.
    -   If the body contains an error message (such as duplicate transaction or invalid credit card number), the interface will show that error message to the user.

        ![](images/integration_tutorial/payment_form_error.png)

    -   If the body contains a successful transaction ID, the interface will show that ID as a confirmation to the user.

        ![](images/integration_tutorial/payment_form_success.png)

**Tip:**  When [creating your own integrations](Create_an_Integration.html) test different scenarios in the integration object to see how the external system responds. The integration object shows the result and error that will be returned when the integration is called from an interface (or other object) so that you can decide how to handle each response.

## View unsettled transactions

You'll use the Transaction Reporting API to [get the list of unsettled transactions](https://developer.authorize.net/api/reference/index.html#transaction-reporting-get-unsettled-transaction-list).

### Create the unsettled transactions integration

Create a new integration and configure it by following these steps:

1.  In the **Build** view, click **New** > **Integration**.
2.  Select **Use a connected system** and use the **Connected System** picker to select **Authorize.Net**.
3.  Name the integration **GetUnsettledTransactionList** and select **Create**.
4.  For **Method**, select **POST**.
5.  For **Usage**, select **Queries data**.
    -   Selecting **POST** automatically switches **Usage** to **Modifies data**. However, since this integration retrieves a list of transactions and _does NOT modify data_, you must change the default value. See [Querying Data versus Modifying Data](Call_an_Integration.html#querying-data-versus-modifying-data) on the Call an Integration page for more information.
6.  In the **Request Body** section, for **Content-Type** select **JSON (application/json)**.
    -   The Authorize.Net API also supports XML (text/xml), but JSON is easier to work with in this scenario.
7.  In the expression box, copy and paste the following expression to create the request body:

    ```
    1
    2
    3
    4
    5
    6
    7
    8
    {
      "getUnsettledTransactionListRequest": {
        "merchantAuthentication": {
          "name": cons!AUTHORIZE_DOT_NET_API_LOGIN_ID,
          "transactionKey": cons!AUTHORIZE_DOT_NET_TRANSACTION_KEY
        }
      }
    }
    ```

8.  Make sure **Automatically convert CDT, dictionary, or list to JSON** is selected.
9.  For **Response Body Parsing**, choose **Convert JSON to Appian value**.
10.  Click **Test Request**. You should receive a result with a status code of `200` and a body containing a list of `transactions`.

     -   Make sure you have recently submitted transactions using the [credit card payment integration](#charge-a-credit-card). If you haven't submitted any successful payment transactions the results will be empty. Authorize.Net settles transactions daily, so you may need to submit new transactions to make sure that the result is populated.

     ![](images/integration_tutorial/unsettled_success_response.png)

11.  If you receive an unexpected result or an error, check the integration configuration, confirm your API Login Key and Transaction Key, and use the **HTTP Request** and **HTTP Response** tabs to diagnose the problem.

You now have a working integration! However, this integration isn't that useful because it can only get the default page of results.

### Add paging/sorting rule inputs

Add rule inputs to allow the integration to control how the transaction list is retrieved. You'll use a PagingInfo data type and transform it into the paging and sorting inputs expected by the Authorize.Net API.

1.  Expand the rule inputs pane on the right side of the screen.
2.  Create a rule input named **pagingInfo** of type PagingInfo.
3.  Update the **Body** expression to use the new rule input:

    **Tip:**  This expression comes from Authorize.Net's [get unsettled transaction list](https://developer.authorize.net/api/reference/index.html#transaction-reporting-get-unsettled-transaction-list) documentation. We replaced the `name:` and `transaction:` key fields with the constants we created earlier. We also used rule inputs to pass sorting information into the integration. We will be setting the sorting parameters in the local!pagingInfo variable in the [interface](#create-the-transactions-grid).

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
    {
      "getUnsettledTransactionListRequest": {
        "merchantAuthentication": {
          "name": cons!AUTHORIZE_DOT_NET_API_LOGIN_ID,
          "transactionKey": cons!AUTHORIZE_DOT_NET_TRANSACTION_KEY
        }`,`
    !    "sorting": {
    !      "orderBy": ri!pagingInfo.sort[1].field,
    !      "orderDescending": not(ri!pagingInfo.sort[1].ascending)
    !    },
    !    "paging": {
    !      "limit": ri!pagingInfo.batchSize,
    !      "offset": tointeger((ri!pagingInfo.startIndex - 1) / ri!pagingInfo.batchSize) + 1
    !    }
      }
    }
    ```

4.  Test the new configuration by providing test values using `a!pagingInfo()` and `a!sortInfo()`. For example, you can enter the following expression:

    -   **Note:** You can change the startIndex, batchSize, and sort field to test different results. However, only `id` and `submitTimeUTC` are supported for sorting.

    ```
    1
    2
    3
    4
    5
    6
    7
    8
    a!pagingInfo(
      startIndex: 1,
      batchSize: 2,
      sort: a!sortInfo(
        field: "submitTimeUTC",
        ascending: false
      )
    )
    ```

5.  Be sure to save your integration.

### Create the transactions grid

In this section you will use the **GetUnsettledTransactionList** integration in a paging grid with the ability to page and sort the list of transactions.

1.  Create a new interface called **ViewUnsettledCreditCardTransactionsUsingExternalSystem**.
2.  Open the interface, click **Expression mode** ![expression mode icon](images/expression-mode-icon.svg), then copy and paste the following expression into the **Interface Definition** to create the interface:

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
    =a!localVariables(
      /* Set up the initial paging and sorting values */
      local!pagingInfo: a!pagingInfo(
        startIndex: 1,
        batchSize: 1000,
        sort: a!sortInfo(
          field: "submitTimeUTC",
          ascending: false)
      ),
      /* Call the external system to return transactions using the paging info provided in local!pagingInfo*/
      local!transactionListPage: rule!GetUnsettledTransactionList(pagingInfo: local!pagingInfo).result.body.transactions,
      {
        a!gridField(
          data: local!transactionListPage,
          pageSize: 5,
          columns: {
            a!gridColumn(
              label: "Transaction ID",
              sortField: "id",
              value: fv!row.transId
            ),
            a!gridColumn(
              label: "Type",
              value: fv!row.accountType
            ),
            a!gridColumn(
              label: "Account",
              value: fv!row.accountNumber
            ),
            a!gridColumn(
              label: "Amount",
              value: a!currency(
               isoCode: "USD",
               value: if(isnull(local!transactionListPage), {}, fv!row.settleAmount)
               )

            ),
            a!gridColumn(
              label: "Submitted Time (UTC)",
              sortField: "submitTimeUTC",
              value: if(isnull(local!transactionListPage), {}, fv!row.submitTimeUTC)
            )
          }
        )
      }
    )
    ```

3.  The grid will display and you can sort and page through the available transactions.

    ![](images/integration_tutorial/unsettled_grid_success.png)

4.  Be sure to save your interface.

## Troubleshooting

If you encounter problems when configuring the integrations, refer to the [Authorize.Net API documentation](https://developer.authorize.net/api/reference/index.html) and use the integration object to test different configurations and input values and to view the HTTP request and response.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...