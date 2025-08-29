---
source_url: https://docs.appian.com/suite/help/25.3/fnc_connector_ws_a_wsconfig.html
original_path: fnc_connector_ws_a_wsconfig.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!wsConfig() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!wsConfig**( _wsdlUrl, service, port, operation, wsdlCredentials, endpointcredentials, extensions_ )

Constructs the _config_ parameter to the `webservicequery()` and `webservicewrite()` functions.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`wsdlUrl`

 |

_Text_

 |

The url of the WSDL for the web service.

 |
|

`service`

 |

_Text_

 |

The service to invoke. The value that should be passed here is found in the WSDL for the web service as the value of the `name` attribute of the `<wsdl:service>` element. The name must be prefixed with the target namespace of the WSDL, and that namespace must be surrounded by braces. For example, if the target namespace of the wsdl is "http://example.org" and the `name` attribute of the `<wsdl:service>` element is "ExampleService," the value for this parameter would be `{http://example.org}ExampleService`.

 |
|

`port`

 |

_Text_

 |

The port within the given service to invoke. The value that should be passed here is found in the WSDL as the value of the `name` attribute of the `<wsdl:port>` element within the selected `<wsdl:service>` element. For example, if the port name is "ExampleSoap," the value for this parameter would be `ExampleSoap`.

 |
|

`operation`

 |

_Text_

 |

The operation on the web service to invoke. The value that should be passed here is found in the WSDL as the value of the `name` attribute of the `<wsdl:operation>` element within the `<wsdl:binding>` element that corresponds to the selected `<wsdl:port>` element. The name must be prefixed with the target namespace of the WSDL, and that namespace must be surrounded by braces. For example, if the target namespace of the wsdl is "http://example.org" and the `name` attribute of the `<wsdl:operation>` element is "echoHello," the value for this parameter would be `{http://example.org}echoHello`.

 |
|

`wsdlCredentials`

 |

_WsHttpCredentials_

 |

If the WSDL requires authentication credentials in order to access it, they must be provided as this parameter. Use the a!wsHttpCredentials system function to construct the value.

 |
|

`endpointcredentials`

 |

_WsHttpCredentials_

 |

If the web service endpoint requires authentication credentials in order to invoke the web service, they must be provided as this parameter. Use the a!wsHttpCredentials system function to construct the value.

 |
|

`extensions`

 |

_Any Type Array_

 |

Additional configurations are provided in the extensions parameter. If the web service requires that certain HTTP Headers should be passed, an array of WsHttpHeaderField constructed using `a!wsHttpHeaderField` can be passed. If the web service requires that WS-Security UsernameToken be used, a single WsUsernameToken or WsUsernameTokenScs can be passed.

 |

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Partially compatible |

Can be used with offline mobile if it is [loaded at the top of the form](offline-mobile-design-best-practices.html#working-with-partially-compatible-functions).

 |
| Sync-Time Custom Record Fields | Incompatible |  |
| Real-Time Custom Record Fields | Incompatible |

Custom record fields that evaluate in real time must be configured using one or more Custom Field functions.

 |
| Process Reports | Incompatible |

Cannot be used to configure a [process report](Process_Reports.html).

 |
| Process Events | Partially compatible |

If autoscale is enabled, can be used to configure a supported process event node (such as a start event or timer event).

 |
| Process Autoscaling | Compatible |

Can be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...