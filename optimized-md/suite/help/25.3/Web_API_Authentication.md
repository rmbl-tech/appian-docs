---
source_url: https://docs.appian.com/suite/help/25.3/Web_API_Authentication.html
original_path: Web_API_Authentication.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Web API Authentication

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Authenticate Web API in Appian in 3 Ways

This video from [Academy Online](https://academy.appian.com/) introduces you to three ways to authenticate web APIs.

## Overview

This page explains how to call an Appian web API object.

-   To learn about web APIs and their configuration options, see [Web APIs](Web_APIs.html).
-   To learn the basic steps involved with creating an API, see [Creating Web APIs](Designing_Web_APIs.html).
-   For a real-world example of how to build and test web APIs in Appian, see the [Web API Tutorial](Web_API_Tutorial.html).

## Authentication

Web APIs can only be called by an authenticated Appian user or [service account](User_Roles.html#service-account-role).

There are five ways to authenticate when calling a web API:

1.  [API key authentication](#api-key-authentication)
2.  [Basic authentication](#basic-authentication)
3.  [OAuth 2.0 Client Credentials Grant](#oauth-20-client-credentials-grant)
4.  [Mutual TLS authentication](#mutual-tls-authentication)
5.  [Session-based authentication](#session-based-authentication)

If you wish to invoke an Appian Web API from another system, you cannot use session-based authentication.

### API key authentication

[API keys](Appian_Administration_Console.html#api-keys) can be used to authenticate Appian Web APIs. There are several advantages to using API keys over basic authentication:

-   **Security:** API keys are randomly generated and can't be used to log into Appian.
-   **Performance:** API keys work up to 10x faster than using username/password.
-   **Longevity:** API keys don't expire automatically, so you won't need to keep rotating credentials in systems that call Appian web APIs.

#### Service Accounts

Each API key is tied to a [service account](User_Roles.html#service-account-role). To invoke a web API with an API key, the associated service account must be granted access to that web API via [group management](Group_Management.html).

API keys and service accounts can be managed in the [Admin Console](Appian_Administration_Console.html#api-keys) by system administrators. Service accounts should be created in each environment with the **same username** and placed in the **same groups** so that permissions can be promoted to higher environments. API keys can only be used for the environment they're created in.

#### Using API Keys

Once object security has been configured for a service account, there are multiple ways to use API keys:

-   **appian-api-key Header:**
    `curl https://example.appian.com/suite/webapi/endpoint -H "appian-api-key: ${API_KEY}"`

-   **Bearer Token Header:**
    `curl https://example.appian.com/suite/webapi/endpoint -H "Authorization: Bearer ${API_KEY}"`

-   **Basic Authentication Header (with null username):**
    `curl -u :${API_KEY} https://example.appian.com/suite/webapi/endpoint`

-   **Basic Authentication Header (with null password):**
    `curl -u ${API_KEY}: https://example.appian.com/suite/webapi/endpoint`

**Note:**  If you encounter a **404 error** while using an API key, make sure that the corresponding service account has been [added to a group](Group_Management.html) that has permission to call the web API.

### Basic authentication

Users that use [Appian authentication](Authentication.html#appian-authentication) or [LDAP authentication](Authentication.html#ldap-authentication) can use their Appian username and password to call web APIs:

`curl -u ${USERNAME}:${PASSWORD} https://example.appian.com/suite/webapi/endpoint`

Basic authentication cannot be used by members of the SAML [system group](System_Groups.html) or Service Accounts system group.

### OAuth 2.0 Client Credentials grant

The OAuth 2.0 Client Credentials grant can also be used to invoke web APIs.

OAuth 2.0 is the industry-standard protocol for authorization, and should generally be used when possible.

#### Service accounts

Like API keys, each OAuth 2.0 client is tied to a [service account](User_Roles.html#service-account-role). To invoke a web API with an OAuth 2.0 client using the Client Credentials grant, the associated service account must be granted access to that web API via [group management](Group_Management.html).

OAuth 2.0 clients and service accounts can be managed in the [Admin Console](Appian_Administration_Console.html#appian-oauth-20-clients) by system administrators. Service accounts should be created in each environment with the **same username** and placed in the **same groups** so that permissions can be promoted to higher environments. OAuth 2.0 clients can only be used for the environment they're created in.

**Tip:**  OAuth 2.0 clients can use the same service accounts as API keys. This makes it very easy to update a call using API keys to use the OAuth 2.0 Client Credentials grant instead. If you use the same service account, you won't even need to update object security.

#### Using the OAuth 2.0 Client Credentials grant

One option for using the Client Credentials grant to authenticate web APIs is to use an [Appian OAuth 2.0 client](Appian_Administration_Console.html#appian-oauth-20-clients). We implemented the OAuth 2.0 Client Credentials grant as defined by the [IETF RFC 6749](https://tools.ietf.org/html/rfc6749#section-4.4) standard. For our implementation, the [scope parameter](https://tools.ietf.org/html/rfc6749#section-4.4.2) must either be blank or omitted entirely.

Another option for using the Client Credentials grant to authenticate web APIs is to use a [third-party OAuth 2.0 client](Appian_Administration_Console.html#third-party-oauth-20-clients). The third-party OAuth provider must provide an access code in the JWT format to work with Appian.

**Note:**  If you encounter a **404 error** while using the Client Credentials grant, make sure that the corresponding service account has been [added to a group](Group_Management.html) that has permission to call the web API.

To learn how to use an Appian connected system to invoke a web API with the Client Credentials Grant, see [OAuth 2.0: Client Credentials Grant](oauth_client_credentials.html).

### Mutual TLS authentication

Mutual TLS (mTLS) authentication verifies the identity of both the client and server before a web API request is fulfilled. Your organization may want to use this stricter authentication when web APIs provide access to sensitive data.

This authentication option must be [configured by an administrator](Appian_Administration_Console.html#mutual-tls) by uploading the client certificates that the environment should trust. Then, web API requests using these client certificates will be recognized and authenticated by Appian.

**Note:**  Only X.509 v3 client certificates are supported.

When mutual TLS is enabled, it applies to all web APIs and all applications in an environment. Web API requests from [portals](portal-object.html) will not work if mTLS is enabled.

#### Construct a web API request for mutual TLS authentication

When mTLS is enabled, client requests that invoke a web API must meet the following requirements.

1.  Configure your HTTP client to use the client certificate and the client certificate chain when connecting to your web API.
2.  The combined size of all request headers and the client certificate cannot exceed 8 KB.
3.  The request must still include the required credentials for the API request ([OAuth 2.0](#oauth-20-client-credentials-grant), [API key](#api-key-authentication), or [basic](#basic-authentication)).
4.  The request URL must specify port 8443. For example, the request URL to get customer data may look something like `https://example.appiancloud.com:8443/suite/webapi/customers`.

### Session-based authentication

Session-based authentication is reserved for browser-initiated web API calls. A session can be established using either the standard Appian sign-on page or via a [SAML SSO configuration](SAML_for_Single_Sign-On.html). When a user invokes an Appian web API from their browser (for instance to populate a task list for use with an [embedded interface](Embedded_Interfaces.html)), session cookies will be honored.

**Note:**  If your environment has [mutual TLS authentication for web APIs](Appian_Administration_Console.html#mutual-tls) enabled, each user will need to install the relevant client certificates in their browser (such as [Google Chrome](https://support.google.com/chrome/answer/10468685?hl=en&ref_topic=7437824&sjid=5232409191761879155-NA#zippy=%2Cmanage-certificates)).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...