---
source_url: https://docs.appian.com/suite/help/25.3/Authentication.html
original_path: Authentication.html
version: "25.3"
title: "Authentication"
page_id: "Authentication"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Authentication

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page provides guidance on the authentication mechanisms that Appian supports. Read on to find out which mechanism best meets your organization's needs.

## Identity management

Authentication is only a part of the larger identity management strategy you need to consider for your system. The authentication mechanism you pick determines how users access the Appian system from various devices, but it does not determine how users are created in the system or what authorizations they will have once authenticated. Although you may be using an external authentication provider, Appian requires that local user accounts are created in the personalization engine.

## External authentication versus local authentication

Due to the nature of centralized user management, certain system authentication features only apply to locally managed accounts.

The following table lists authentication features and whether they are enforced for locally authenticated or externally authenticated users. Locally authenticated user credentials are validated by Appian.

| Feature | Local Authentication | External Authentication |
| --- | --- | --- |
| [Deactivation of Inactive Users](Appian_Administration_Console.html#account-locking) | Yes | Yes |
| [Disabled Login for Deactivated Users](Appian_Administration_Console.html#account-locking) | Yes | Yes |
| [Password Complexity Requirements](Appian_Administration_Console.html#password-format) | Yes | No |
| [Password Expiration](Appian_Administration_Console.html#password-expiration) | Yes | No |
| [Password Expiration Warning](Appian_Administration_Console.html#password-expiration) | Yes | No |
| [Account Locking](Appian_Administration_Console.html#account-locking) (due to failed login attempts) | Yes | No |
| [Temporary Passwords](Appian_Administration_Console.html#password-expiration) | Yes | No |

**Note:**  If you configure external authentication, login failures in the external system are not logged as failed logins to Appian.

### Resetting passwords with external authentication

When external authentication is enabled, the password reset process must be handled by the external authentication mechanism. The password reset feature performs in the following manner when external authentication is enabled.

-   The link used to change and reset the user's password remains available.
-   If a user clicks **Reset Password** an email is still sent.
-   If a user clicks an emailed link to reset their password, it is _not_ reset.

## Remember me authentication

Appian authentication and SAML authentication both support the ability to remember users for a certain amount of time. This means that users won't be asked to sign in again until a specific time period has passed.

Remember me uses an authentication token to allow users to bypass the Appian or SAML identity provider sign in screen. The authentication token is a cookie that replaces the need to enter a username and password and is used only to create an authenticated browser session for a given user on a specific browser or mobile app.

System administrators can modify the authentication validity period and disable the capability site-wide through configuration.

System administrators are never granted a remember me token and must authenticate with their username and password every time they access the system.

You can enable remember me separately for Appian authentication and SAML authentication.

### Remember me for Appian authentication

If remember me is enabled for [Appian authentication](Appian_Administration_Console.html#remember-me), users can select a **Remember Me** checkbox when signing in to Appian.

For Appian authentication, remember me is enabled by default—a user must provide their username and password once every two weeks for each browser on which they access Appian.

Remember me will also work for users with [multi-factor authentication](Appian_Administration_Console.html#multi-factor-authentication) enabled. When they navigate to Appian within the configured time frame, they won't be required to log in or provide a verification code.

### Remember me for SAML authentication

If remember me is enabled for a [SAML identity provider](SAML_for_Single_Sign-On.html#remember-me), all users that are configured for the identity provider will automatically be remembered for the specified number of days. This setting can be enabled for users signing in either through web browsers, the Appian Mobile app, or both.

Each identity provider that you add can have this configured differently. See [SAML for Single Sign-On](SAML_for_Single_Sign-On.html#how-to-add-a-saml-identity-provider) for more information.

### How remember me works

By default, an authentication token is generated for each browser or mobile app on which the user accesses Appian, and this token lasts for the configured amount of time (the validity period).

When an authentication token expires or becomes otherwise invalidated, a user is redirected to either the Appian sign in page or the SAML providers sign in page.

Clearing authentication tokens will not invalidate an active browser session, and a browser session can expire without authentication being invalidated. See the section [Validity period vs. active browser session](#validity-period-vs-active-browser-session) for more information.

Clearing an authentication token does not have any impact on a current active browser session, and only takes effect the next time the user attempts to authenticate.

#### Validity period vs. active browser session

Remember me's validity period is the time during which an authentication token is valid. This period is the duration of time for which the System administrator has configured remember me to work in the Admin Console. The validity period can be shortened or terminated by events such as password resets or explicit logouts, and can only be changed by a System administrator.

An active browser session refers to the browsing session a user has after they have authenticated and before the session timeout occurs. Sessions can be configured to last for a specific duration by a System Administrator, and accounts for both active and idle portions of time. Session time is configurable in the [Admin Console](Appian_Administration_Console.html#session-timeout), and by default is 65 minutes.

#### Clearing authentication tokens by administrators

System administrators can clear authentication tokens for individuals or entire organizations. This means the token will be removed from the Appian data source so that any attempt to use that token will not result in an authenticated session.

The following will clear all authentication tokens associated with a user:

-   Deactivating a user.
-   Resetting the password for a user. Keep in mind that authentication tokens associated with an active browser session for a user will not be cleared.

#### Clearing authentication tokens by users

Users can clear their own authentication tokens in the following ways:

-   For Appian authentication, changing their own password clears all authentication tokens associated with that user, except the authentication token associated with their current session.
-   Clearing cookies in a browser clears the authentication tokens associated with that browser.
-   Clicking Sign Out clears all authentication tokens associated with the current browser or mobile app.

### Authentication logging

Successful authentication via a remember me token is logged as a successful login. If a user attempts to access Appian using an expired authentication token, this is not logged as a failed login attempt; the user is redirected to the login page to provide their username and password.

### Remember me best practices

#### Remember me and external authentication

Remember me does not interfere with external authentication configuration supported by Appian. System administrators may want to consider configuring (or disabling) remember me to comply with your organization's authentication requirements.

Customers using external authentication integration with strict password expiration policies may want to disable remember me as users whose passwords have expired in the external identity management system are able to access Appian with a valid remember me authentication token until that token expires or is revoked.

#### Using remember me for SAML with group membership synchronization

Users who authenticate with a valid remember me authentication token will not trigger a group membership synchronization with the SAML identity provider as they would when signing in normally.

Therefore, if you are using [Group Membership Synchronization](SAML_for_Single_Sign-On.html#group-membership-synchronization) and you need group membership to be absolutely up to date, you may not want to enable remember me for that identity provider.

#### Deactivating remember me users in a SAML identity provider

If remember me is enabled, when deactivating a user with the SAML identity provider, be sure to also deactivate the user in Appian.

If a user has a valid remember me token, they will still be able to access Appian with that token until their validity period expires. This means that users will still be able to access Appian even if they are deactivated with the SAML identity provider, unless they are deactivated in Appian as well.

#### Clearing authentication tokens when disabling SAML

If remember me is enabled for Appian authentication, when you disable SAML for a user that has already been remembered, that user will still be able to sign in. The remember me tokens that were issued prior to SAML becoming disabled will still be valid.

To clear authentication tokens for these users, do one of the following:

-   Disable remember me for Appian authentication.
-   Deactivate (and immediately reactivate if desired) the affected users.

If remember me for Appian authentication is already disabled, no further action is required.

## Configuring authentication

The following authentication mechanisms are available with Appian.

| Method | Browser | Mobile | SSO | Effort |
| --- | --- | --- | --- | --- |
| [Appian Authentication](Authentication.html#appian-authentication) | Form Login | Yes | No | ZERO |
| [LDAP Authentication](Authentication.html#ldap-authentication) | Form Login | Yes | No | LOW |
| [OpenID Connect Authentication](Authentication.html#openid-connect-authentication) | Provider specific | Yes | Yes | MEDIUM |
| [PIEE Authentication](Authentication.html#piee-authentication) | Provider specific | No | Yes | MEDIUM |
| [SAML Authentication](Authentication.html#saml-authentication) | Provider specific | Yes | Yes | MEDIUM |

Appian can authenticate users via other authentication mechanisms (such as Kerberos, request header pre-authentication, central authentication service, or certificate-based authentication) by integrating with a [SAML](Authentication.html#saml-authentication) identity provider that uses those mechanisms to authenticate users.

Customers upgrading from a version of Appian prior to 7.11 should note that support for custom Spring Security configurations has been deprecated and Appian encourages you to convert your authentication configuration to one of the three out-of-the-box authentication mechanisms listed below.

### Appian authentication

This is the standard Appian authentication mechanism that is configured out of the box and allows for configuration of password policies.

For a complete list of configuration options, see [Appian Authentication](Appian_Administration_Console.html#appian-authentication).

### LDAP authentication

Appian allows you to configure user authentication against an external directory server. This method does not require work with configuration files and is done through the Admin Console. It allows usage of the same corporate logon information but does not support Single Sign-On.

For a complete list of configuration options, see [LDAP Authentication](Appian_Administration_Console.html#ldap-authentication).

### OpenID Connect authentication

OpenID Connect (OIDC) is a modern standard that's built on top of the OAuth 2.0 protocol. When configured, OIDC can be used to establish single sign-on (SSO).

Administrators can configure user authentication against an OpenID Provider in the [Administration Console](Appian_Administration_Console.html#openid-connect).

When OpenID Connect authentication is enabled, unauthenticated users without a [web address identifier](SAML_for_Single_Sign-On.html#web-address-identifier) in their URL will be redirected based on the [default sign-in page](SAML_for_Single_Sign-On.html#choosing-a-default-sign-in-page).

For instructions on configuring OpenID Connect as well as a complete list of configuration options, refer to [OpenID Connect User Authentication](OpenID_Connect_User_Authentication.html).

### PIEE authentication

**Note:**  PIEE user authentication is a preview feature. It is disabled by default. To enable the feature, you will need to [open a support case](https://community.appian.com/support/) and get permission from Engineering.

The Procurement Integrated Enterprise Environment (PIEE) is the primary enterprise procure-to-pay (P2P) application for the Department of Defense and its supporting agencies. PIEE user authentication can be used for single sign-on to procurement-related systems. This article describes how to configure PIEE authentication in the Appian Administration Console.

Administrators can configure user authentication against a SAML identity provider server in the [Administration Console](Appian_Administration_Console.html#piee-authentication).

When PIEE authentication is enabled, it will disable user authentication with any configured identity providers that use [SAML](SAML_for_Single_Sign-On.html) or [LDAP](Appian_Administration_Console.html#ldap-authentication). However, if you configure the **Authentication Group** in PIEE's [Appian Settings](PIEE_User_Authentication.html#appian-settings) correctly, certain users will still be able to log in with [Appian Authentication](#appian-authentication).

### SAML authentication

SAML is a set of standards that govern communication between a service provider (in this case Appian), a client, and an identity provider. The standards allow for secure exchange of authentication information over multiple domains and environments.

Administrators can configure user authentication against a SAML identity provider server in the [Administration Console](Appian_Administration_Console.html#saml-authentication).

When SAML authentication is enabled, unauthenticated users without a [web address identifier](SAML_for_Single_Sign-On.html#web-address-identifier) in their URL will be redirected based on the [default sign-in page](SAML_for_Single_Sign-On.html#choosing-a-default-sign-in-page).

For instructions on configuring SAML identity providers as well as a complete list of configuration options, refer to [SAML for Single Sign-on](SAML_for_Single_Sign-On.html).

## Troubleshooting

The following troubleshooting methods are useful when researching common problems with authentication. Otherwise, contact Appian Support if you need assistance configuring or troubleshooting external authentication.

### Analyze network traffic

Network traffic analyzers can help diagnose problems related to communication between the user's browser and the server. Utilize your browser's built-in network capture tools for high level information. If insufficient, use other tools like WireShark and Fiddler to provide very detailed network traffic data.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...