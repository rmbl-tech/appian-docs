---
source_url: https://docs.appian.com/suite/help/25.3/OpenID_Connect.html
original_path: OpenID_Connect.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# OpenID Connect Authentication

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page provides detailed information about how Appian uses an existing OpenID Connect (OIDC) configuration to authenticate requests for an [HTTP connected system](http-connected-system.html). Appian developers can use this authentication type to give users seamless access to external resources through integration calls.

## Configure a connected system using OIDC

### Prerequisites

There are two steps you must complete before can use OIDC for authentication:

1.  Configure the connection. [OpenID Connect configuration](OpenID_Connect_User_Authentication.html) settings are managed in the Admin Console. These settings are used for all OIDC-based user authentication requests.
2.  Add users to the [OpenID Connect Integration Users system group](System_Groups.html#openid-connect-integration-users).

### Enable OpenID Connect authentication

Once you've completed the prerequisites, you can select **OpenID Connect** as the authentication mechanism for your HTTP connected system.

### Test OpenID Connect authentication

To verify that you can call an integration using your environment's OpenID Connect configuration, click **Inspect Tokens**. This will check the status of your access and refresh tokens against the OIDC provider. Since the same provider is used for any user authenticated and authorized by OIDC, you only need to test your account to ensure that the connection is established.

You will see one of a few possible messages depending on the result of the inspection.

If your tokens are valid and working as expected, you'll see the following message:

-   `Both an access token and refresh token were found for the OpenID Connect provider.`

If Appian locates an access token for your user but has no refresh token, you'll see the following warning:

-   `An access token was found for the OpenID Connect provider, but no refresh token was returned.`

If there is a problem with your tokens, the following error message is shown:

-   `Neither an access token nor a refresh token was found for the OpenID Connect provider.`

If an access token, refresh token, or both cannot be found, the OpenID Connect configuration may need to be updated by an administrator.

## Troubleshooting user authentication

If a user can sign in using OIDC, but they are unable call an integration built on an HTTP connected system using OIDC, check that they are in the [OpenID Connect Integration Users system group](System_Groups.html#openid-connect-integration-users).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...