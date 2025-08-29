---
source_url: https://docs.appian.com/suite/help/25.3/Connectors.html
original_path: Connectors.html
version: "25.3"
title: "Connector Functions"
page_id: "Connectors"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Connector Functions

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Connector Functions allow developers to build integrations between Appian and other popular enterprise software platforms. The connectors are available as functions that are intended to be used with interface expressions to build rich record lists and dashboards to present a unified view of data from disparate systems.

See [Connector Functions](Connector_Functions.html) for a list of the connector functions and the syntax for using them.

## Setting up connectors

Connectors require some additional setup before they can be used. All connectors require credentials to access the target system. Some connectors also require settings to be enabled on the target system or additional libraries to be deployed on the Appian application server(s).

### Authentication

In order to authenticate with the target system, the connectors retrieve credentials from the secure credentials store.

A system administrator user must set up credentials in the secure credentials store. See the [Admin Console](Appian_Administration_Console.html#third-party-credentials) documentation for details on setting up sets of credentials. Most connectors require two credentials fields named "Username" and "Password." See each connector's Authentication section for details on the credentials fields that need to be present.

The credentials that the connectors use for authentication are identified based on the `scsExternalSystemKey` parameter present in each connector function. Each function also takes a `usePerUserCredentials` parameter, which determines whether the values of system-wide credentials should be used when authenticating with the target system (`false`) or whether the individual credentials set by the current user should be used (`true`). As a best practice, the system administrator should create a constant of type Text with the value set to the identifier key and developers should use that constant for the value of the `scsExternalSystemKey` parameter.

#### System-wide vs. per-user authentication

As described above, the designer can choose to use the connector function with per-user or system-wide credentials. To make the choice that is right for the integration, determine whether Appian should appear as a single "integration user" when connecting to the external system, or whether it should appear to the external system that each individual user is connecting.

System-wide credentials are set in the Third-Party Credentials page of the Admin Console. Per-user credentials are set by individual users in the Third-Party Credentials settings page.

Some reasons to choose system-wide credentials:

-   Users do not have individual login credentials to the target system.
-   The integration calls for a standard set of privileges to apply for all users when reading and/or writing data.

Some reasons to choose per-user credentials:

-   All of the users of Appian that will interact with the integrated records also have login credentials to the target system.
-   Each user interacting with the connectors should have their own individual privileges on the target system apply when reading and/or writing data.
-   The target system has rate limits on their API access which apply to the user that is connecting to the system and you want to connect from Appian as separate users instead of a single integration user to avoid the limit.

## Reading data with connectors

The connectors provide functions for reading data from the target system. The functions request the data in accordance with the target system's API and return the data in the same format as returned by the target system, but transformed into an Appian dictionary. All functions that read have a common return type, which wraps the data returned from the target system while providing some additional error handling capabilities.

### Return types

The connector functions that read from the target system all return the same Dictionary data structure, which contains a field that indicates whether the read was successful and fields that contain the result or error.

```
1
2
3
4
Return Structure
  - success (Boolean)
  - result (Any Type)
  - error (Any Type)
```

If successful, the `result` field will have a value and the `error` field will be empty. If a failure occurs, the `error` field will be populated and the `result` field will be empty. The fields are as follows:

| Field | Type | Description |
| --- | --- | --- |
|
**success**

 |

Boolean

 |

`true` if the read was successful, otherwise `false`.

 |
|

**result**

 |

Any Type

 |

A dictionary data structure containing the fields and data returned by the target system; specific results are described with each function below.

 |
|

**error**

 |

Any Type

 |

A dictionary structure containing additional information about the error that occurred. The fields are:

-   **title**: A short description of the error that occurred.
-   **message**: An error message with details about the error that occurred that can be used for troubleshooting.

 |

### Error handling

Should an error occur while retrieving data from the target system, the connector function will still return a value instead of throwing an exception that would cause the entire expression to fail to evaluate. This allows developers to gracefully handle connectivity, authentication, or other errors in a way that can still allow the user interface to render at least partial information. When the error occurs, the `success` field of the return value will be set to `false`. The `error` field will have addition information about the error that occurred.

In order to provide the optimal user experience, developers should design the interface that is using the connector function to inspect the `success` field and either display an error message in place of the content that would have been retrieved from the target system, or hide the problematic section altogether.

A common error will be an authentication failure, especially when using per-user credentials. A user that has not yet entered their credentials on the Third-Party Credentials settings page will trigger such an error when visiting a record dashboard that uses a connector to that system. By checking for an error, the designer can provide a helpful message to the user to check their credentials rather than causing the entire record dashboard to fail.

The examples in the Connector Functions documentation demonstrates using this return format for error handling.

See also: [Connector Functions](Connector_Functions.html)

## Writing data with connectors

Connector functions that modify data on the target system are implemented as Writers. Writers can only be used on interfaces and must be used in conjunction with the `bind()` function. Connector functions that write data (create, update, delete, etc.) can be used to modify data in an external system directly from a dashboard or form. The write occurs after all local variables have been saved into. Writers do not return a response.

Connector functions are transactional within themselves, but there are no transaction boundaries that include other connector functions that may be writing data as part of the same re-evaluation. An update to one system may succeed even though an update to another system may fail. For example, if a record dashboard is designed such that an Account is updated in Salesforce, and a document is copied to SharePoint when a user clicks a button, it is possible for the Account update to Salesforce to fail and the document transfer to SharePoint to still succeed.

See also:

-   [Writer](Appian_Data_Types.html#writer)
-   [bind()](fnc_evaluation_bind.html)

### Error handling

If an error occurs when a connector function writes data to an external system, the error will manifest as an expression failure error message in a dialog on the user interface. Connector functions that write data do not return a response, so there is no mechanism to capture the error response and modify the user interface to hide a section or show a custom error message like there is for connector functions that read data.

### Troubleshooting

When designing records that use the connector functions, it may be useful to see additional information about what is being requested of the external system and what that system is returning in response. To have this information printed to the application server log file in the `<APPIAN_HOME>/logs` directory, uncomment the following line in `appian_log4j.properties`:

```
1
log4j.logger.com.appian.integration=DEBUG
```

Note that this configuration should be commented out or set to `ERROR` level in production environments, except for when troubleshooting as the logging can have a negative impact on performance.

## Web Service Helper

[**a!httpAuthenticationBasic**](/suite/help/25.3/fnc_connector_http_a_httpauthenticationbasic.html) - Creates an object that contains the information required to perform HTTP Basic authentication.

[**a!httpFormPart**](/suite/help/25.3/fnc_connector_http_a_httpformpart.html) - Creates an HTTP form part which can be passed in an integration’s multipart request body.

[**a!httpHeader**](/suite/help/25.3/fnc_connector_http_a_httpheader.html) - Creates an HTTP header object which can be passed to an HTTP function.

[**a!httpQueryParameter**](/suite/help/25.3/fnc_connector_http_a_httpqueryparameter.html) - Creates an HTTP query parameter object which can be passed to an HTTP function.

[**a!scsField**](/suite/help/25.3/fnc_connector_http_a_scsfield.html) - Creates an object which contains the information required to access data in the Secure Credentials Store.

[**a!wsConfig**](/suite/help/25.3/fnc_connector_ws_a_wsconfig.html) - Constructs the _config_ parameter to the `webservicequery()` and `webservicewrite()` functions.

[**a!wsHttpCredentials**](/suite/help/25.3/fnc_connector_ws_a_wshttpcredentials.html) - Constructs a WsHttpCredentials object for use with `a!wsConfig`.

[**a!wsHttpHeaderField**](/suite/help/25.3/fnc_connector_ws_a_wshttpheaderfield.html) - Constructs a WsHttpHeaderField object for use with `a!wsConfig`.

[**a!wsUsernameToken**](/suite/help/25.3/fnc_connector_ws_a_wsusernametoken.html) - Constructs a WsUsernameToken object for use with `a!wsConfig`.

[**a!wsUsernameTokenScs**](/suite/help/25.3/fnc_connector_ws_a_wsusernametokenscs.html) - Constructs a WsUsernameTokenScs object for use with `a!wsConfig`.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...