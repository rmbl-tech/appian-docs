---
source_url: https://docs.appian.com/suite/help/25.3/OpenID_Connect_User_Authentication.html
original_path: OpenID_Connect_User_Authentication.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# OpenID Connect User Authentication

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

[OpenID Connect](OpenID_Connect.html) (OIDC) is a modern identity standard built on top of the OAuth 2.0 protocol. Similar to [SAML](SAML_for_Single_Sign-On.html), Appian's OIDC option redirects users to your external identity provider (IdP) to establish single sign-on (SSO). When configured, Appian users can sign in using OIDC.

## How OIDC works with Appian

Appian's OIDC option uses a service-provider-initiated flow to authenticate and identify users. The following actions occur when a user wants to sign in:

1.  Appian sends an authorization request to the identity provider.
2.  The IdP prompts the user for their credentials and verifies them.
3.  The IdP returns access and identity data to Appian, allowing the user to access the system.

**Note:**  IdP-initiated sign-in flows are not supported.

### Configure an OIDC identity provider

You can add one or more OIDC identity providers in a given Appian environment.

When you have multiple IdPs configured, each IdP will specify an authentication group so Appian knows which IdP to check for a given user.

Ideally, no user should be in more than one authentication group. If a user is in multiple authentication groups, the order of the IdPs in the grid determines which IdP a user will be able to sign-in with. Groups higher in the list have higher priority.

To add an OIDC identity provider:

1.  In the [Admin Console](Appian_Administration_Console.html#openid-connect), under **AUTHENTICATION**, click **Single Sign-On**.
2.  On the **OpenID Connect** tab, select **Enable OpenID Connect authentication**.
3.  Click **ADD OIDC IDENTITY PROVIDER**.
4.  On the OpenID Connect Authentication dialog, do the following:
    1.  Configure the [Appian Settings](#appian-settings).
    2.  Configure [Group Membership Synchronization](#group-membership-synchronization).
    3.  Configure [Attribute Mapping](#attribute-mapping).
5.  If you are signed in as a user that's a member of the selected **Authentication Group**, click **TEST THIS CONFIGURATION** and sign in with your current user. This ensures that you can still sign in to Appian. _This is mandatory so that you do not accidentally lock yourself out_.
6.  Click **DONE**.
7.  On the OpenID Connect tab, click **SAVE CHANGES**.

### Enabling OpenID Connect authentication

Once enabled, you can configure the OIDC authorization endpoints as default sign-in page when users navigate to Appian.

To set OpenID Connect as the default authentication method:

1.  In the [Admin Console](Appian_Administration_Console.html#openid-connect), under **AUTHENTICATION**, click **Sign-In Page**.
2.  For **Default Sign-In Page**, select **OpenID Connect**.
3.  Click **SAVE CHANGES**.

Users who aren't in the selected Authentication Group for OIDC will still be able to log in with Appian native authentication by navigating to `suite/?signin=native`.

### Appian settings

The Appian Settings are used to configure the connection with OpenID Connect and determine which Appian users will authenticate using it.

| Field | Description |
| --- | --- |
| Description | The name of the OIDC configuration. |
| Web Address Identifier | The URL where unauthenticated users are redirected when they want to sign in to Appian. |
| Client ID | The client identifier for your OpenID provider. |
| Client Secret | The client secret for your OpenID provider. |
| Protocol | The protocol you to use to configure your endpoints. This can either be the [OpenID Connect Discovery 1.0](https://openid.net/specs/openid-connect-discovery-1_0.html) protocol or the [OpenID Connect Core 1.0](https://openid.net/specs/openid-connect-core-1_0.html) protocol.

This choice determines which of the fields you see below. |
| OpenID Connect Discovery Endpoint | The URL that points to the [OpenID Connect Discovery Endpoint](https://openid.net/specs/openid-connect-discovery-1_0.html#ProviderConfigurationRequest). This endpoint will return metadata about your OpenID Provider. Among the data returned are several important URLs: issuer URL, authorization endpoint, token endpoint, UserInfo endpoint, and JWKS endpoint.

Must start with `https://`.

[Trusted server certificates](Appian_Administration_Console.html#trusted-server-certificates) are automatically applied when connecting to this endpoint. |
| Issuer URL | The URL that the OpenID Provider asserts as its issuer identifier. Must start with `https://`. |
| Authorization Endpoint | The URL that points to the OpenID provider's authorization endpoint. Must start with `https://`. |
| Token Endpoint | The URL that points to the OpenID provider's token endpoint. Must start with `https://`.

[Trusted server certificates](Appian_Administration_Console.html#trusted-server-certificates) are automatically applied when connecting to this endpoint. |
| UserInfo Endpoint | The optional URL that points to the OpenID provider's UserInfo endpoint. This will return claims about the authenticated user. To obtain the requested claims about the user, the client makes a request to the UserInfo endpoint using an access token obtained through OpenID Connect authentication. These claims are represented by a JSON object that contains a collection of name and value pairs for the claims.

If this is left blank, then attributes and group sync will be performed using the claims in the ID token returned by the token endpoint. If it is populated, then attributes and group sync will leverage the claims returned by this endpoint.

Must start with `https://`. |
| JWKS Endpoint | The URL that points to the OpenID provider's JWKS endpoint. Must start with `https://`.

[Trusted server certificates](Appian_Administration_Console.html#trusted-server-certificates) are automatically applied when connecting to this endpoint. |
| End Session Endpoint | The optional URL that points to the OpenID provider's end session endpoint. This can be used to trigger single sign-out, as detailed in the [OpenID Connect spec](https://openid.net/specs/openid-connect-rpinitiated-1_0.html).

To use the end session endpoint a client application will redirect the user's browser to the end session URL. All applications that the user has logged into via the browser during the user's session can participate in the sign-out.

Must start with `https://`. |
| Scope | A space-separated list of scopes to be included with each authentication request. This list must start with `openid` and may also include the following optional values if supported by the identity provider: `profile`, `email`, `address`, `phone`, and `offline_access`. |
| Username Claim | The key for the claim in the ID token that corresponds to the Appian username. |
| Authentication Group | A group containing all users that should authenticate through this IdP.

We recommend you have at least one administrator account that does not authenticate through OIDC so that you can never lock yourself out of Appian.

Note: this authentication group will come first in [priority order before SAML authentication groups](SAML_for_Single_Sign-On.html#identity-provider-ordering). The only exception is environments which have PIEE authentication enabled; in that case, no OIDC, SAML, or LDAP IdPs will work. |
| Callback URL (Read-Only) | This read-only field shows the callback URL for your environment. You must enter it in the configurations for your OpenID provider. |

### Group membership synchronization

Appian has the ability to synchronize a user's group memberships based on the claims that are returned by the OpenID Provider in the ID token or from the User Info endpoint.

Only groups of a single [group type](Group_Types.html) will be synchronized. Users will be added to any groups of this type that have an [attribute value](#group-type-attribute) that matches the elements in the claim returned by the OpenID provider and removed from any groups of this type that do not have a match. If there is no Appian group that matches the claim returned, that value will be ignored and the other remaining groups that do match will synchronize. The synchronizing process will not create an Appian group if one is missing.

#### Synchronize Appian group membership

When selected, Appian will update a user's group memberships when they sign it.

#### Group type

Select the [group type](Group_Types.html) that contains the groups that are eligible for membership syncing.

#### Group type attribute

Enter the name of the [group type attribute](Group_Types.html#group-type-attributes) that should be matched against the response returned by the OpenID provider. The claim should be a List of Text. In the below image, the selected claim is `groups`.

![/oidc group membership sync](images/openid_connect_user_authentication/oidc_group_sync_configurations.png)

This **Group Type Attribute** can have any name so long as it matches the attribute value defined on your selected **Group Type**.

For example, look at this sample JSON snippet that might be returned by the **User Info Endpoint**:

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
{
    "sub": "00uid4BxXw6I6TV4m0g3",
    "name": "John Doe",
    "nickname": "Jimmy",
    "given_name": "John",
    "middle_name": "James",
    "family_name": "Doe",
    "profile": "https://example.com/john.doe",
    "zoneinfo": "America/Los_Angeles",
    "locale": "en-US",
    "updated_at": 1311280970,
    "email": "john.doe@example.com",
    "email_verified": true,
    "address" : {
        "street_address": "123 Hollywood Blvd.",
         "locality": "Los Angeles",
        "region": "CA",
        "postal_code": "90210",
        "country":"US"
        },
    "phone_number": "+1 (425) 555-1212",
    "groups": [
        "Faculty",
        "English Department"
        ]
}
```

To sync the user into the corresponding groups, you would need two groups configured like this:

![/oidc_faculty](images/openid_connect_user_authentication/oidc_faculty_group.png)

This first group matches the first role because the value of the selected attribute `groups` matches the value `Faculty` in the JSON response.

![/oidc_english_department](images/openid_connect_user_authentication/oidc_english_department.png)

This second group matches the second role because the value of the selected attribute `groups` matches the value `English Department` in the JSON response.

### Attribute mapping

Appian also has the ability to synchronize user data returned by an OpenID Provider. Each user attribute can be mapped to a claim in either the ID Token or the JSON response returned by the **User Info Endpoint**.

Mapping of nested claims is only supported for the standard OIDC [address claim](https://openid.net/specs/openid-connect-core-1_0.html#AddressClaim).

This includes:

-   `address/formatted`
-   `address/street_address`
-   `address/locality`
-   `address/region`
-   `address/postal_code`
-   `address/country`

#### Create new users upon sign-in

When selected, if the connecting user does not have an Appian account, one will be created for them. Account creation requires that the username, first name, last name, and email address attributes be populated. Users will be automatically added to the [authentication group](#appian-settings) for the identity provider when they are created.

#### Update user attributes upon sign-in

When selected, if the connecting user already has an Appian account, attributes from the JSON response will be copied into the user's Appian profile.

### Connected system authentication with OIDC

Your HTTP connected systems can call integrations on your users' behalf using the OIDC configuration. This lets users avoid additional sign-in steps when an application needs to access another system in your enterprise.

To enable connected system authentication with OIDC:

1.  Select the **OpenID Connect for HTTP connected systems** checkbox.
2.  Click **SAVE CHANGES**.

## Unauthenticated User Settings

The settings for unauthenticated users are configured in the [Sign-In Page](Appian_Administration_Console.html#sign-in-page) section of the Admin Console.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...