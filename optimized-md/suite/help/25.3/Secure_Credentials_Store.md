---
source_url: https://docs.appian.com/suite/help/25.3/Secure_Credentials_Store.html
original_path: Secure_Credentials_Store.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Secure Credentials Store

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Secure Credentials Store is a repository within Appian capable of storing credentials for third-party systems. The credentials are encrypted and stored within tables in the Appian data source. A single set of credentials are stored for each external system identified by an external system key. Credentials for an external system are stored as attribute/value pairs. The attributes are stored in plain text, and the values are encrypted.

You can use the stored credentials with the Call Web Service Smart Service when the configured web service requires the WS-Security UsernameToken profile. You can also use them with custom smart services and custom function plug-ins through the secure credentials store public Java API.

**External System**

A target integration system requiring credentials for authentication when a connection is established from Appian. An external system is identified within Appian by its external system key.

**External System Key**

A unique text identifier for an external system. This value is auto-generated based on the name of the external system.

**Credentials**

General term for a set of values necessary to authenticate and authorize a connection from Appian to an external system.

**Site-Wide Credentials**

A set of credentials used by the Appian system to connect to another system. They identify an integration user that represents all or a set of Appian users in interactions between Appian and the external system.

**Per-User Credentials**

A set of credentials used by the Appian system to connect to another system as the current user. The user must be actively using the system in order to have their credentials used for authentication.

Per-user credentials are not available to users who authenticate via SAML.

**Attributes and Values**

Attributes are text identifiers for a portion of the credentials. For example, "username" and "password" may be used as attributes to identify the username and password portions of the credentials.

Values are what correspond to the attributes. For example, "thomas.hopkins" may be a value that corresponds to the "username" attribute and "S1nc|$w1m" may be a value that corresponds to the "password" attribute.

Values are encrypted in the secure credentials store. Attributes are not.

**Masked Attributes**

The values of masked attributes are shown in a password field on the user interface, which hides the values, whereas the values of unmasked attributes display as plaintext in the user interface.

The value of an attribute is stored as encrypted text regardless of the masking property of the attribute.

## Managing third-party credentials

The credentials stored in the Secure Credentials Store are managed using the Third-Party Credentials admin page in the Admin Console.

See also: [Admin Console](Appian_Administration_Console.html#third-party-credentials)

## Using the public Java API

The public Java API allows custom smart service and custom function plug-in developers to use credentials stored in the Secure Credentials Store in order to integrate with external systems.

For more details and code examples, see also:

-   [Custom Smart Service Plug-ins](Custom_Smart_Service_Plug-ins.html#handling-credentials-securely)
-   [Custom Function Plug-ins](Custom_Function_Plug-ins.html#handling-credentials-securely)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...