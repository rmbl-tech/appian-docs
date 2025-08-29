---
source_url: https://docs.appian.com/suite/help/25.3/reference-js-api.html
original_path: reference-js-api.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# JavaScript API

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

The Component Plug-in JavaScript API allows you to interact with the rest of the interface on which your component is placed. This page provides an API reference for people familiar with JavaScript and the use of components in an Appian [interface](interface_overview.html).

**Tip:**  This version of Appian supports component plug-ins that use [SDK version](reference-manifest.html#component) 2.0.0. Refer to the [Integration SDK compatibility table](integration-sdk-versions.html) for version details.

## Loading the Component Plug-in JavaScript API

To load the Component Plug-in JavaScript API, use the `APPIAN_JS_SDK_URI` token in a script tag in the HTML file used as the [html-entry-point](reference-manifest.html#component) of your component. The token will automatically replaced with the proper JavaScript URL when the plug-in is deployed.

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
<!DOCTYPE html>
<html>
  <head>
    <!-- This script loads the Component Plug-in JavaScript API -->
    <script src='APPIAN_JS_SDK_URI'></script>
  </head>
  <body>
  </body>
</html>
```

## API reference

### Appian.Component.onNewValue(newValueCallback)

Registers a function to receive updated values when any component parameter values change due to initial interface load or re-evaluation (such as when the user interacts with the interface).

##### Parameters

-   `newValueCallback`(function): Function to handle receiving new values. All component values will be passed (including the values for `required` and `height` parameters). These values are passed as a null-prototype Object where object properties correspond to parameters names in the component definition and values correspond to the current parameter value in the interface.

##### Returns

None

##### Example

```
1
2
3
4
5
6
7
Appian.Component.onNewValue(function(newValues) {
  var required = newValues.required;
  var height = newValues.height;
  var csId = newValues.connectedSystem;

  // Initialize component
});
```

### Appian.Component.saveValue(parameterName, newValue)

Sets a new value for a component parameter, triggering the corresponding saveInto to update the interface.

##### Parameters

-   `parameterName` (string): Name of parameter in the component definition
-   `newValue` (Varies): New value for the parameter. The value must match the parameter type in the component definition. See the [type conversion table](component-design.html#parameter-types-and-javascript-conversion) for details.

##### Returns

None

### Appian.Component.setValidations(validationMessages)

Sets validation messages for the component. To clear all validations invoke with an empty array.

##### Parameters

-   `validationMessages` (`string[]`): Validation messages to display in the interface

##### Returns

None

### Appian.Component.invokeClientApi(connectedSystem, friendlyName, parameters)

Invokes a [client API](server-side-logic-for-cp.html) exposed by an associated [connected system plug-in](connected-system-plug-in-landing.html). This allows the component to access server-side logic and secure values stored in a [connected system](Connected_System_Object.html).

##### Parameters

-   `connectedSystem` (object): Reference to the connected system. This should be a value passed in from a `ConnectedSystem` component parameter.
-   `friendlyName` (string): Operation name defined by the connected system plug-in that maps to a specific Java method.
-   `parameters` (object): Parameters expected by the client API (as defined in the connected system plug-in code).

##### Returns

`Promise`: A [promise](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises) that will be resolved (request success) or rejected (request failure) with a response object.

When the HTTP status code is between 200 and 299 the success handler is called. The response object passed to the success handler contains a `payload` property containing the response defined by the client API implementation correspond to the `Map<String,Object> resultMap` returned in the `ClientApiResponse`.

When the HTTP status code is outside of that range, the error handler is called. The response object passed to the error handler contains an `error` property containing the response defined by the client API implementation correspond to the `Map<String,Object> resultMap` returned in the `ClientApiResponse`.

If a connection error or other problem occurs, the response object passed to the error handler contains an empty `error` property.

See also: [Using Promises - MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises)

##### Example

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
function getToken(userId) {
  const payload = { id: userId };

  // Call the connected system client API to retrieve a token
  Appian.Component.invokeClientApi(connectedSystem, "getToken", payload)
    .then(handleTokenResponse, handleTokenError);
}

function handleTokenResponse(response) {
  token = response.payload.token;

  // Use the token...
}

function handleTokenError(response) {
  if (response.error.errorMessage) {
    // Show the error message returned by the connected system
    Appian.Component.setValidations([response.error.errorMessage]);
  } else {
    // Indicate that some other problem happened
    Appian.Component.setValidations(["An unspecified error occurred"]);
  }
}
```

### Appian.getLocale()

Gets the user's [locale/language code](Appian_Administration_Console.html#locale-settings) based on their Appian user settings, or the system-wide default if the user hasn't set a preference.

##### Parameters

None

##### Returns

`string`: The user's locale string (For example: `en-US`)

### Appian.getAccentColor()

Gets the accent color of the current Appian environment in hexadecimal format. Different accent colors can be defined for [Tempo](Appian_Administration_Console.html#branding), [sites](sites_object.html#branding), and [embedded interfaces](Themes_for_Embedded_Interfaces.html#configure-a-theme).

##### Parameters

None

##### Returns

`string`: The current accent color in hexadecimal format (For example: `#1d659c`)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...