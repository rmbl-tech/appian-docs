---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_webservicewrite.html
original_path: fnc_scripting_webservicewrite.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# webservicewrite() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**webservicewrite**( _config, data_ )

Returns a Writer that can be used as the setter of a variable created using the bind() function. When saving into the variable on an interface, the Writer will invoke the web service configured by a WsConfig object with the supplied input data.

See also: [bind()](fnc_evaluation_bind.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`config`

 |

_WsConfig_

 |

Defines the configuration details of the web service to invoke and any authentication configurations that are required by the service. Use the [a!wsConfig](fnc_connector_ws_a_wsconfig.html) system function to construct the value for this argument.

 |
|

`data`

 |

_Dictionary_

 |

A dictionary of input objects that matches the message structure of the web service operation being invoked. The keys of the dictionary must correspond to the parameter names declared for the operation in the WSDL. The value of each key is itself a dictionary, with the keys based on the field names of the complex type defined as the input type in the WSDL. Keys are matched to parameter names case-sensitively. If the web service does not require an input, an empty dictionary should be passed, i.e. `{}`.

 |

## Returns

Writer

See also: [Writer](Appian_Data_Types.html#writer)

## Usage considerations

The notes section of the [webservicequery](fnc_scripting_webservicequery.html) function documentation apply to webservicewrite as well.

The webservicewrite function can only be used as the _set_ parameter of the bind function.

An error during invocation of the web service (a soap fault or http error) causes the entire save to fail. if an error occurs while writing, other variables that are part of the same save directive are still updated.

Client certificate/mutual SSL authentication can be enabled by uploading [client certificates](Appian_Administration_Console.html#client-certificates) in the Admin Console.

Services that use self-signed or internal SSL certificates can be enabled by uploading [trusted server certificates](Appian_Administration_Console.html#trusted-server-certificates) in the Admin Console.

See also: [bind()](fnc_evaluation_bind.html)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...