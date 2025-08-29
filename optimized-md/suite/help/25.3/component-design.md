---
source_url: https://docs.appian.com/suite/help/25.3/component-design.html
original_path: component-design.html
version: "25.3"
title: "Design Considerations"
page_id: "component-design"
section: "Web content or component plug-in?"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Design Considerations

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Before you create a component plug-in make sure you've considered the design guidance on this page.

**Note:**  Before you invest time developing a custom component plug-in, [review the interface components available](SAIL_Components.html) in the Appian platform to see if an existing component meets your requirements. Be sure to explore the [SAIL Design System](sail/home.html) as well for inspiration and design guidance.

## Web content or component plug-in?

The [web content](Web_Content_Component.html) component can display content from a URL in an Appian interface. Component plug-ins can also display content like HTML and JavaScript in an interface. So when do you use web content and when do you use a component plug-in?

**Short answer: Always use web content unless you have a good reason not to!**

Why should web content be your first choice?

-   It's available out of the box in every Appian environment.
-   It's simple and easy to configure using just a URL.
-   It supports a wide range of embedded web sites.
-   It's fully supported by Appian.

By contrast, component plug-ins:

-   Must be created and tested by a web developer.
-   Must adhere to a specific set of [guidelines](component-review-guidelines.html)\*.
-   Must be [reviewed](component-review-process.html) by Appian before being used in applications.
-   Must be installed separately by an administrator.
-   May not be maintained by the creator who listed it on the AppMarket.

\* Applies only to components you plan to list on the Appian AppMarket.

When should you use component plug-ins?

1.  **When you can use an existing component plug-in from the [AppMarket](https://community.appian.com/b/appmarket).** Before building your own component, see if there's an existing plug-in that meets your needs. Not only does this save you the time and cost of development, you might find that the plug-in is supported by the developer.
2.  **When you have a web developer.** Plug-ins are intended for a small subset of developers, not for the developers that build Appian applications. If you don't have the right expertise to create plug-ins, it's better to stick with what's already available in the platform.
3.  **When you need bi-directional interaction with the interface.** Web content can only be configured with an initial URL. It can't provide additional inputs or receive updates as the user interacts with the embedded site. If you need an interactive experience similar to standard Appian components where you can **set values** and **receive updated values** from the component, use a component plug-in. If you find that your component's design doesn't require any [**input-output** or **event** parameters](reference-manifest.html#parameter), it's a sign that you may not need full interactivity and should reconsider whether you can just use a web content component.
4.  **When you have complex integration or authentication requirements.** If you can embed another system using a URL in a web content component that's a better option, but sometimes you need to perform complex calls or use authentication protocols that can't be encoded in a simple URL. Component plug-ins give you added flexibility when dealing with these requirements or when relying on [third-party libraries](component-ext-libs.html) designed for custom applications.

## Common parameters

To help speed up development, all plug-in components inherit a set of parameters for common attributes like the label, instructions, and tooltip. Avoid adding these parameters to your component so you don't end up with duplicate parameters.

The inherited parameters are:

-   **label** (Text): Text to display as the field label.
-   **labelPosition** (Text): Determines where the label appears. Valid values: “ABOVE” (default), “ADJACENT”, “JUSTIFIED”, “COLLAPSED”.
-   **instructions** (Text): Supplemental text about this field.
-   **helpTooltip** (Text): Displays a help icon with the specified text as a tooltip. The help icon does not show when the label position is “COLLAPSED”.
-   **required** (Boolean): Determines if a value is required to submit the form. Default: false.
-   **disabled** (Boolean): Determines if the user is prevented from interacting with the field. Default: false.
-   **validations** (List of Text String): Validation errors to display below the field when the value is not null.
-   **height** (Text): Determines the layout height. Valid values: “SHORT”, “MEDIUM”, “TALL”, “AUTO” (default).
-   **showWhen** (Boolean): Determines whether the component is displayed on the interface. When set to false, the component is hidden and is not evaluated. Default: true.

Only the **required** and **height** parameters are included in the values passed to your component in the function registered using [**Appian.Component.onNewValue**](reference-js-api.html#appian.component.onnewvalue\\(newvaluecallback\\)).

## Parameter types and JavaScript conversion

The following table lists the [Appian data types](Appian_Data_Types.html) supported by component plug-ins and their corresponding parameter and JavaScript types. Parameter types are defined in the [plug-in manifest](reference-manifest.html#parameter) file. Conversion between Appian data types and JavaScript types is done automatically.

| Appian Data Type | Parameter Type | JavaScript Type |
| --- | --- | --- |
| Boolean | `Boolean` | Boolean primitive |
| Number (Decimal) | `Decimal` | Number primitive |
| Number (Integer) | `Integer` | Number primitive |
| Text | `Text` | String primitive |
| Dictionary | `Dictionary` | Untyped object |
| Variant | `Variant` | Untyped object |
| Connected System | `ConnectedSystem` | Untyped object |

-   Lists of any Appian data type are converted to arrays of the associated JavaScript type.
-   `ConnectedSystem` parameters should only be used to call [**Appian.Component.invokeClientApi**](reference-js-api.html#appian.component.invokeclientapi\\(connectedsystem,-friendlyname,-parameters\\)). Don't attempt to modify the value.

**Tip:**  **Date**, **Time**, and **Date and Time** Appian types are not supported by component plug-ins. Use a pre-formatted date/time `Text` parameter or an epoch-formatted `Integer` parameter instead.

## Using server-side logic

Component plug-ins can call [client APIs](server-side-logic-for-cp.html) exposed by connected system plug-ins to run logic on the server using the [**Appian.Component.invokeClientApi**](reference-js-api.html#appian.component.invokeclientapi\\(connectedsystem,-friendlyname,-parameters\\)) method. The component's client-side code (running in the user's browser) can pass in request parameters and then use values in the client API response to update what's shown to the user, call out to a third-party system, etc.

### Protecting sensitive values

The primary reason for using client APIs is to execute logic that depends on sensitive values like third-party system credentials. For example:

1.  [Twilio's client libraries](https://www.twilio.com/docs/voice/client/javascript/quickstart) need to make authenticated requests to Twilio servers.
2.  Authentication is based on a system-wide **Account SID** and **Auth Token**, which are sensitive credential values that should never be sent to the user's browser (since they could be extracted by the user).
3.  Instead of using the Account SID and Auth Token directly, Twilio client libraries use a **Capability Token** which is calculated from those values using an algorithm that executes on the server.
4.  The sensitive values never leave the server, and the capabilities token returned to the browser is specific to that user so it no longer matters that they can see the value.

Often the credentials needed to make system-to-system calls using integrations are the same values used to generate client-side tokens. Storing these credentials securely in a connected system makes them available to both integrations and component plug-ins.

**Caution:**  Never directly expose connected system credentials using a client API! Always return a calculated value based on the credentials. If you're using a client library or integrating with a system that doesn't support this pattern, contact the developer or vendor to ask about how to securely integrate from JavaScript running in a user's browser.

### Sharing common configuration

Not all values stored in a connected system need to be sensitive. You might find it useful to have a connected system hold settings that control how to communicate with another system. In addition to using those values across backend [integrations](Integration_Object.html), you can expose them with a client API and use them in your component as well. If the value changes you can update the connected system once and all the related integrations and components adjust automatically. For example:

1.  You're integrating with [DocuSign](https://developers.docusign.com/) and want to allow developers to use their DocuSign **Sandbox** when building an application, but then switch to the DocuSign **Production** platform once they're done.
2.  The two DocuSign environments have different authentication URLs (`https://**account**.docusign.com` versus `https://**account-d**.docusign.com`).
3.  Your connected system plug-in can offer a toggle between these two DocuSign environments.
4.  Your component plug-in can use a client API call to retrieve the current environment from the connected system and then communicate with the appropriate DocuSign URL.
5.  Updating the connected system to point to the DocuSign production environment will automatically update the behavior of the component.

In this case because the values aren't sensitive, there's no risk in exposing them directly using the client API.

**Note:**  Don't use servlet plug-ins or [web APIs](Web_APIs.html) to perform server-side logic. Both are harder to use from your component than a connected system (which can be accessed with a build-in API). Servlets don't have the ability to store credentials and other values securely. Web APIs are a design object and can't be packaged with your plug-in, so your component would depend on a designer to correctly configure a web API before it worked properly.

### Using a Java library

Sometimes you're connecting to a third-party system that provides a Java library but no JavaScript library, or the JavaScript library lacks certain features. In these cases you can use client APIs to expose capabilities from the Java library to your component's JavaScript code.

## Cookies and local storage

In traditional web applications, developers can use browser cookies or local storage to save data between user's visits.

In component plug-ins, you should always use Appian to save data instead by returning any information that needs to be persisted to the interface using the [**Appian.Component.saveValue**](reference-js-api.html#appian.component.savevalue\\(parametername,-newvalue\\)) method. This lets the Appian designer decide how and where to store data related to their application.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...