---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_webservicequery.html
original_path: fnc_scripting_webservicequery.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# webservicequery() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**webservicequery**( _config, data_ )

Invokes a web service configured by a WsConfig object with the supplied input data. The result is a WsResult object which contains the result object, the HTTP status code of the response, whether or not an http error occurred, and any fault that was in the response. This function should only be used for invoking read-only web services to avoid [side effects](functions-side-effects.html). use the `webservicewrite()` function to invoke a web service that saves, modifies, or deletes external data.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`config`

 |

_wsconfig_

 |

defines the configuration details of the web service to invoke and any authentication configurations that are required by the service. use the [a!wsconfig](fnc_connector_ws_a_wsconfig.html) system function to construct the value for this argument.

 |
|

`data`

 |

_Dictionary_

 |

A dictionary of input objects that matches the message structure of the web service operation being invoked. The keys of the dictionary must correspond to the parameter names declared for the operation in the WSDL. The value of each key is itself a dictionary, with the keys based on the field names of the complex type defined as the input type in the WSDL. Keys are matched to parameter names case-sensitively. If the web service does not require an input, an empty dictionary should be passed, i.e. `{}`.

 |

## Returns

WsResult

The fields in the WsResult return value have the following meanings:

_httpStatusCode_ - the status code returned by the web service (200=OK, 500=Error, etc.)

_httpErrorOccurred_ - a Boolean value indicating whether or not an error occurred during the invocation of the web service

_fault_ - if a fault was returned by the web service, the fault details will be given in this field

_value_ - a dictionary containing the value returned by the web service

## Usage considerations

The data types required by the web service are created if they are not already present in the system the first time the expression function is invoked. If one or more data types already exists with the same name and namespace but with a different structure, the function returns an error. If a web service changes such that the data types need to change, simply deleting the data types and calling webservicequery() will not refresh their structure. In order to update the data types in this case, create a process model with the Call Web Service smart service and point it to the WSDL. Then use the Get/Refresh Services button on the Call Web Service smart service to refresh the data types. You must publish the process model to complete the update. You can optionally delete the process model afterward.

With respect to invoking a web service, this function has the same capabilities and limitations as the Call Web Service smart service.

If you need to connect to this web service using a [proxy server](Appian_Administration_Console.html#http-proxy) that configuration can be enabled in the Admin Console.

In order to properly send a WS-Security UsernameToken for authentication, the web service must declare the requirement as a WS-Policy assertion in the WSDL.

Client certificate/mutual SSL authentication can be enabled by uploading [client certificates](Appian_Administration_Console.html#client-certificates) in the Admin Console.

Services that use self-signed or internal SSL certificates can be enabled by uploading [trusted server certificates](Appian_Administration_Console.html#trusted-server-certificates) in the Admin Console.

If called multiple times in the same expression with the same parameters, only one query is made to the web service when the expression is evaluated and the result is reused for each identical call. This caching only applies within a single expression evaluation. Return values are not cached in separate expressions, or in separate evaluations of the same expression.

See also: [Call Web Service Smart Service](Call_Web_Service_Smart_Service.html)

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

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
webservicequery(
  wsconfig: a!wsConfig(
    wsdlUrl: "http://webservices.daehosting.com/services/TemperatureConversions.wso?WSDL",
    service: "{http://webservices.daehosting.com/temperature}TemperatureConversions",
    operation: "{http://webservices.daehosting.com/temperature}FahrenheitToCelsius",
    port: "TemperatureConversionsSoap"
  ),
  inputVar: {
    FahrenheitToCelsiusSoapRequest: {
      nFahrenheit: 98.6
    }
  }
)
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...