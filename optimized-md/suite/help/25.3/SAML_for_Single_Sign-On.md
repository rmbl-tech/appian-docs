---
source_url: https://docs.appian.com/suite/help/25.3/SAML_for_Single_Sign-On.html
original_path: SAML_for_Single_Sign-On.html
version: "25.3"
title: "SAML for Single Sign-On"
page_id: "SAML_for_Single_Sign-On"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# SAML for Single Sign-On

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Security Assertion Markup Language (SAML) is an XML-based specification for exchanging authentication information online, typically to establish single sign-on (SSO) and single logout. This article describes how SAML works with Appian and how to configure SAML in the [Admin Console](Appian_Administration_Console.html#saml-authentication).

For information about multi-factor authentication, see [Configuring Multi-Factor Authentication](https://community.appian.com/w/the-appian-playbook/112/configuring-multi-factor-authentication-mfa).

## How SAML works with Appian

In the SAML specification, there are three roles:

1.  **Principal** (User): The client attempting to connect to a service.

2.  **Identity Provider** (IdP): The provider of identity information and authentication.

3.  **Service Provider** (SP): The provider of the requested service.

Using the SAML model, the user attempting to connect to Appian is the **Principal** (User), Appian is the **Service Provider** (SP), and the customer is the **Identity Provider** (IdP).

### Single sign-in

For a typical SP-initiated login, when a user attempts to connect to Appian, Appian redirects the user's browser to the IdP. The IdP makes an authentication decision and returns that decision to the user's browser, which then sends that decision to Appian. Appian acts on that decision, either permitting or denying the user access to the requested resource without the user having to manually sign in.

The sequence diagram below offers more specificity to an SP-initiated login process.

![Diagram of the SP initiated login process](images/SAML_diagram.png)

**Note:**  Appian also supports IdP-initiated login, but not from embedded environments or mobile.

The login.microsoftonline.com authentication flow is not supported in an iframe from Appian Embedded interfaces.

### Single logout

Appian also supports single logout, which is the ability to have a user log out of one system behind SSO, and have that cause the user to also be logged out of other systems behind the same SSO. Not all identity providers support single logout.

Single logout can be initiated either by Appian, referred to as "SP-initiated logout," or by the identity provider or other systems behind SSO, which are both referred to as "IdP-initiated logout."

For **IdP-initiated logout**, Appian invalidates the session for the user that made the logout request.

For **SP-initiated logout**, Appian includes a `SessionIndex` and `NameId` in the SAML `LogoutRequest`, which indicates to the IdP which user's sessions should be ended.

### Requirements

All communications between the Appian and the IdP (for both sign-in and sign-out) must be performed with signed SAML assertions. If Appian receives an unsigned SAML assertion from the IdP, Appian will reject it. Appian supports SAML-based SSO using the **SAML 2.0** specification and **SHA-256** signature method algorithm.

To configure Appian to work with SAML, you will need:

-   **A SAML identity provider** using SAML 2.0 and SHA-256 signature method algorithm. Appian supports signed, encrypted SAML assertions up to the AES-256 standard. In order to make use of this capability, the Appian environment must be running on an Appian Cloud instance. Otherwise, self-managed Appian environments will need to be running OpenJDK 17.

-   **PEM-formatted certificate** for signing (contains a private key that should be trusted by your IdP).
    -   This certificate is only used for signing SAML assertions that come from the Appian instance you upload it to.
    -   The certificate does not need to be associated with your site's domain.
    -   Once you have uploaded the certificate, you will not be able to download later.
    -   The private key in the certificate should not be encrypted. Appian will encrypt the private key when the certificate is uploaded.
    -   We ask you to provide the certificate because Appian cannot automatically generate a certificate that will be guaranteed to be accepted by your identity provider. You can create one yourself, or obtain one from a third-party certificate authority. For more information, see [How to Create a Self-Signed Certificate for SAML Authentication](https://community.appian.com/support/w/kb/330/kb-1108-how-to-create-a-self-signed-certificate-for-saml-authentication).
-   **Identity provider metadata** (this is a file that will contain information like the entity ID). The entity ID or issuer ID in the uploaded IdP metadata file must match the issuer ID found in the SAML response. Appian requires the entity ID within IdP metadata files to be unique across multiple SAML configurations. Attempting to upload IdP metadata files containing identical entity IDs will result in an error and be prevented by the system. It is not recommended to manually modify an IdP metadata file, prior to uploading to Appian in order to circumvent this restriction, as this may result in users not being able to access Appian. The code block below is an example metadata file.

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
27
28
29
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<EntityDescriptor entityID="idp" xmlns="urn:oasis:names:tc:SAML:2.0:metadata">
   <IDPSSODescriptor WantAuthnRequestsSigned="true" protocolSupportEnumeration="urn:oasis:names:tc:SAML:2.0:protocol">
      <KeyDescriptor use="signing">
         <ds:KeyInfo xmlns:ds="http://www.w3.org/2000/09/xmldsig#">
            <ds:X509Data>
<ds:X509Certificate>MIIDWzCCAkOgAwIBAgIEO2TuCzANBgkqhkiG9w0BAQsFADBeMQswCQYDVQQGEwJ1czELMAkGA1UECBMCdmExDzANBgNVBAcTBnJlc3RvbjEPMA0GA1UEChMGYXBwaWFuMQ8wDQYDVQQLEwZhcHBpYW4xDzANBgNVBAMTBmNsaWVudDAeFw0xNDA3MjExMjI3MTFaFw0xNDEwMTkxMjI3MTFaMF4xCzAJBgNVBAYTAnVzMQswCQYDVQQIEwJ2YTEPMA0GA1UEBxMGcmVzdG9uMQ8wDQYDVQQKEwZhcHBpYW4xDzANBgNVBAsTBmFwcGlhbjEPMA0GA1UEAxMGY2xpZW50MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAn1SQDNOTNI7FjOjIrUXcRYcgifNNiT4sTlWar9EN1/5h43kpiN1URmUQ9DD4nGB4apaLuHIElgkmX5+KJ307qXm+mRh3AzCnKTm2bp/KnKcxBwZDdwAkV0h4U5hAnUadSQxA65J/QK/NqdffI7278MJfs7c977vrIn4nf2XjHKO50eUL86CupqBDqtSy38+hwBQZ8WjRP76hYX30N8pYcugXaV4v5kcboydM4omVynkByiQB2AY+DT3MydiqZkPgwlUr3PEFgwvxonF1yN/TVCEhW2emyIkoxVyYvJv3D3po6zNo4cxRHTUAsbSF2vzirZ1kVBzCuvnnWzYT+oILgwIDAQABoyEwHzAdBgNVHQ4EFgQUxhuiihv58Lqk78g9OIl76lUlCP0wDQYJKoZIhvcNAQELBQADggEBAALmaVweB1IZ/ZLl22KIcco34Jp8A6RAedXRTmyFF++hzV3UNDo/nBGzvsJBnrIZHAFSorlvnfih8GTyD8rxoRAa2OlYmEbpnW0fsSu1cVBK//uCffCxRTKqqRkq/5p3XE7WM1gX8tKQ8OqUutbbx4dVu2h92MDj8xeOc7odKQWvAF7RNie7gTMcCbiEG6pp2m6C9DvRLebT1a70X/v/9GcxiR1OClzaGVCfmnvuLngCpLnWDSTY6+vK9e9vzfnqTd1oHUIeqPFDzJV/rMfU2vkDZDQyvupeuKdTzE5Zud4McBE3cCNc5NiO6AbT2S14wj+TfrarjB5IBF7cG6dKuZY=
               </ds:X509Certificate>
            </ds:X509Data>
         </ds:KeyInfo>
      </KeyDescriptor>
      <ArtifactResolutionService index="0" isDefault="true" Binding="urn:oasis:names:tc:SAML:2.0:bindings:SOAP" Location="https://idp.example.com/ArtifactResolver/metaAlias/idp"/>
      <ManageNameIDService Binding="urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect" Location="https://idp.example.com/IDPMniRedirect/metaAlias/idp" ResponseLocation="https://idp.example.com/IDPMniRedirect/metaAlias/idp"/>
      <ManageNameIDService Binding="urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST" Location="https://idp.example.com/IDPMniPOST/metaAlias/idp" ResponseLocation="https://idp.example.com/IDPMniPOST/metaAlias/idp"/>
      <ManageNameIDService Binding="urn:oasis:names:tc:SAML:2.0:bindings:SOAP" Location="https://idp.example.com/IDPMniSoap/metaAlias/idp"/>
      <NameIDFormat>urn:oasis:names:tc:SAML:2.0:nameid-format:persistent</NameIDFormat>
<NameIDFormat>urn:oasis:names:tc:SAML:2.0:nameid-format:transient</NameIDFormat>
<NameIDFormat>urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress</NameIDFormat>
<NameIDFormat>urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified</NameIDFormat>
      <SingleSignOnService Binding="urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST" Location="https://idp.example.com/SingleSignOnService/"/>
      <SingleSignOnService Binding="urn:oasis:names:tc:SAML:2.0:bindings:SOAP" Location="https://idp.example.com/SSOSoap/metaAlias/idp"/>
      <SingleLogoutService Binding="urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST" Location="https://idp.example.com/SingleLogOutService"/>
      <SingleLogoutService Binding="urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect" Location="https://idp.example.com/SingleLogOutService"/>
      <SingleLogoutService Binding="urn:oasis:names:tc:SAML:2.0:bindings:SOAP" Location="https://idp.example.com"/>
      <NameIDMappingService Binding="urn:oasis:names:tc:SAML:2.0:bindings:SOAP" Location="https://idp.example.com/NIMSoap/metaAlias/idp"/>
      <AssertionIDRequestService Binding="urn:oasis:names:tc:SAML:2.0:bindings:SOAP" Location="https://idp.example.com/AIDReqSoap/IDPRole/metaAlias/idp"/>
      <AssertionIDRequestService Binding="urn:oasis:names:tc:SAML:2.0:bindings:URI" Location="https://idp.example.com/AIDReqUri/IDPRole/metaAlias/idp"/>
   </IDPSSODescriptor>
</EntityDescriptor>
```

## How to add a SAML Identity Provider

You can add multiple identity providers and configure the [per-IdP settings](#per-idp-settings) differently for each.

For example, if you want to enable [remember me](#remember-me) for certain groups and disable it for others, add two identity providers. Configure different [authentication groups](#authentication-group) for each identity provider. For one of the identity providers, enable remember me. For the other, disable remember me.

To add a SAML identity provider:

1.  In the [Admin Console](Appian_Administration_Console.html#saml-authentication), under **AUTHENTICATION**, click **Single Sign-On**.
2.  Click the **SAML** tab.
3.  Click **ADD SAML IDENTITY PROVIDER**.
4.  Configure the [Appian Settings](#appian-settings) and [Service Provider Metadata](#service-provider-metadata).
5.  Upload the [Generated Metadata](#generated-metadata) file to your IdP.
6.  Configure the [Identity Provider Information](#identity-provider-information), [Remember Me](#remember-me) , [Group Membership Synchronization](#group-membership-synchronization), and [Attribute Mapping](#attribute-mapping).
7.  Click **Test This Configuration** to verify that your configuration is valid.
8.  Click **Done** to close the **Add SAML Identity Provider** dialog.
9.  On the SAML Authentication page, configure the [global settings](#global-settings).
10.  If you are logged in using SAML, click **Verify My Access** and sign in with your current user. This ensures that you can still sign in to Appian. _This is mandatory so that you do not accidentally lock yourself out_.
11.  Click **SAVE CHANGES**.

### Adding additional Identity Providers

Adding additional IdPs is just like adding the first. Simply follow the steps outlined above to add additional ones. At the same time, keep the following items in mind while adding additional IdP:

-   Configure the [unauthenticated user settings](#unauthenticated-user-settings) carefully. They will determine how users get sent to the correct IdP sign-in page.
-   For your mobile users, ensure they all have the correct [URL](#web-address-identifier) to get to their sign-in page.
-   Ensure your [authentication groups](#authentication-group) and [ordering](#identity-provider-ordering) are both correctly configured.

### Identity Provider ordering

When you have multiple IdPs configured, your IdPs should all be using [authentication groups](#authentication-group), and no user should be in multiple authentication groups. If, however, a user is in multiple authentication groups, the order of the IdPs in the grid determines which IdP a user will be able to sign-in with. Groups higher in the list have higher priority.

**Caution:**  Priority ordering is intended to be used as a fallback in case of error. Reordering IdPs with improperly governed authentication groups can result in inadvertently giving a user access to the wrong account if your IdPs have conflicting usernames.

## Global settings

This section describes the settings available on the main SAML Authentication page. These settings apply to the entire environment.

### Enable SAML

Select this to use SAML to authenticate users. If not selected, all other fields on this page are disabled.

### Remember IdP selection for non-SAML users

Enable this setting if you want Appian to use [cookies](#sign-in-page-cookies) to determine where users should be sent to sign-in.

### OAuth 2.0: SAML Bearer Assertion Flow

Enable this setting if you want Appian to enable the [OAuth 2.0: SAML Bearer Assertion Flow](oauth_saml_bearer_assertion_flow.html) for users in the [OAuth 2.0 SAML Bearer Assertion Users](System_Groups.html#oauth-20-saml-bearer-assertion-users) system group.

### Use a default sign-in page

When selected, unauthenticated users are sent to the chosen sign-in page if they have neither a [Web Address Identifier](#web-address-identifier) in their URL nor a [browser cookie](#sign-in-page-cookies). In the dropdown, you can choose between any of your IdP sign-in pages and Appian's native authentication sign-in page.

See [Choosing a default sign-in page](#choosing-a-default-sign-in-page) for more information.

**Note:**  This behavior applies to both SAML and [OpenID Connect](OpenID_Connect_User_Authentication.html) authentication.

### Have users choose their sign-in page

When selected, unauthenticated users are sent to the sign-in page selection screen if they have neither a [Web Address Identifier](#web-address-identifier) in their URL nor a [browser cookie](#sign-in-page-cookies) on their browser. This is a screen that allows users to identify which sign-in page they use based on administrator-configured prompts and links.

![Sign-In Page Selection Example](images/saml_sso/SelfSelectionPage.png)

This screen should be used as a fallback for users signing-in through SP-initiated sign-in. Ideally, users should only see this screen once and use [cookies](#sign-in-page-cookies) for future unauthenticated requests.

See [Choosing a default sign-in page](#choosing-a-default-sign-in-page) for more information.

**Note:**  This behavior applies to both SAML and [OpenID Connect](OpenID_Connect_User_Authentication.html) authentication. However, you must have at least one IdP configured to use SAML in order to have users choose their sign-in page.

#### Identity Provider choices prompt

Enter the text to display to the user as a prompt to assist them in choosing their sign-in page. This text appears at the top of the sign-in page selection screen.

#### Identity Provider choices

Enter the identity providers that you want to appear in the sign-in page selection screen.

To add a new identity provider link to the sign-in page:

1.  Click **Add Identity Provider Link**.
2.  Choose the **Identity Provider**. The chosen **Identity Provider** must have a [Web Address Identifier](#web-address-identifier) configured.
3.  Provide a **Label**. The **Label** will appear on the page and link to the chosen **Identity Provider**.

To remove an identity provider from the list, click **X**.

An IdP can appear on the page multiple times or no times, depending on your business needs. If multiple sets of users sign-in through the same IdP, for example Contractors and Partners, you may want a link for each of them to assist in their selection. If all users of one type, for example internal users, sign-in through IdP-initiated sign-in or embedded, omit them from the list.

## Per-IdP settings

This section describes the settings that apply to specific identity providers. These settings are available when you edit an existing identity provider, or when [adding a new identity provider](#how-to-add-a-saml-identity-provider).

### Appian Settings

#### Description

Enter a **Description** to identify this IdP in the grid of all SAML IdPs.

Pick a short description that will help other administrators identify the IdP. The description has no other functional impact.

#### Web Address Identifier

Add a **Web Address Identifier** if you do not plan on setting this IdP's sign-in page as default.

The Web Address Identifier allows users to access their specific sign-in page using a URL on both web and mobile devices. If a user has a valid Web Address Identifier to their url, they will be routed to the corresponding sign-in page and bypass the [default sign-in page](#use-a-default-sign-in-page)and [sign-in page selection screen](#have-users-choose-their-sign-in-page).

For example, if you have an IdP with the Identifier set to "employee", users can get to that identity's sign-in page by adding "signin=employee" to their url. So, if a user wanted to get to the Appian Designer through that IdP, they would follow the url "https://mysite.appiancloud.com/suite/design?signin=employee".

The web address identifier for OpenID Connect is "oidc".

#### Remember user's IdP selection

Enable this setting to enable [sign-in page cookies](#sign-in-page-cookies) for this IdP.

#### Authentication Group

Add an **Authentication Group** containing all users that should authenticate through this IdP.

Although this field isn't required if you want all users to authenticate through this IdP, it is best practice. This will make adding additional IdPs simpler. We recommend you have at least one administrator account that does not authenticate through SAML so that you can never lock yourself out of Appian.

**We strongly recommend you assign each identity provider a group to prevent being locked out of their site.**

When selected, a field will appear into which you can specify one Appian user group. If the connecting user is a member of that group, they will be signed into Appian, otherwise they will see an error page telling them that they aren't authorized.

![Error 401 - Unauthorized](images/saml_sso/image_1.png)

Any users who are configured to not use SAML authentication must go to `/suite/portal/login.jsp`.

### Service Provider Metadata

#### Service Provider Name

Enter a **Service Provider Name** to assign Appian in the generated metadata file.

This is how you choose to label Appian in the message that will be sent to the IdP when a user attempts to sign into Appian. This should be a unique name for both the service and identity providers.

#### Service Provider Entity ID

Enter a **Service Provider Entity ID** to assign Appian in the generated metadata file. This will typically be the Appian hostname.

**Note:**  Some browsers will detect the **Service Provider Entity ID** and the **Service Provider Signing Certificate Password** fields as username and password fields, and may auto-populate those fields. Be sure to clear any pre-populated fields in this form.

#### Service Provider Signing Certificate

Upload a PEM-formatted certificate for Appian to use when communicating with the IdP. In SAML, all communications between the SP and IdP are signed.

#### Service Provider Signing Certificate Password

If the certificate requires one, enter the **Service Provider Signing Certificate Password**. This is the password Appian uses to open the certificate to use it. Leave this blank if none is required.

#### Generated Metadata

After all Service Provider settings are complete, you should find some metadata in the **Generated Metadata** field. This will provide a link to download an XML file with the required connection information you'll need in your IdP. Upload that file to your IdP.

Make sure that the metadata file uploaded to Appian is consistent with the configurations defined with the identity provider. Specifically, the entity ID or issuer ID in the uploaded IdP metadata file must match the issuer ID found in the SAML response.

Appian requires the entity ID within IdP metadata files to be unique across multiple SAML configurations. Attempting to upload IdP metadata files containing identical entity IDs will result in an error and be prevented by the system. Do not manually modify an IdP metadata file prior to uploading to Appian in order to circumvent this restriction, or users may be unable to access Appian.

### Identity Provider Information

#### Identity Provider Metadata

Upload the **Identity Provider Metadata** for the identity provider being connected to Appian. This file will contain things like the address of the IdP and its supported protocols.

#### Username Location

Use these settings to indicate where the Appian username is provided in the SAML assertion.

##### NameID of the Subject

This option tells Appian to use the subject attribute from the authentication response.

If the username that you want to use is in the subject of the assertion (line 4), leave this box checked. If the username that you want to use is not what is in the subject of the assertion and is instead included as an attribute (line 16), uncheck this box.

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
<saml2:Assertion ID="6ea3a0dc-1a14-47ed-81ef-d2feb5189dc7" IssueInstant="2015-10-27T21:54:56.088Z" Version="2.0" xmlns:saml2="urn:oasis:names:tc:SAML:2.0:assertion">
   <saml2:Issuer Format="urn:oasis:names:tc:SAML:2.0:nameid-format:entity">idp</saml2:Issuer>
   <saml2:Subject>
      <saml2:NameID Format="urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified">john.smith</saml2:NameID>
      <saml2:SubjectConfirmation Method="urn:oasis:names:tc:SAML:2.0:cm:bearer">
         <saml2:SubjectConfirmationData Address="0:0:0:0:0:0:0:1" NotOnOrAfter="2015-10-27T21:56:36.088Z" Recipient="https://example.appiancloud.com/suite/saml/AssertionConsumer"/>
      </saml2:SubjectConfirmation>
   </saml2:Subject>
   <saml2:AttributeStatement>
      <saml2:Attribute Name="org.springframework.security.core.GrantedAuthority" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:basic">
         <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:string">all</saml2:AttributeValue>
      </saml2:Attribute>
   </saml2:AttributeStatement>
   <saml2:AttributeStatement>
      <saml2:Attribute Name="usernameAttribute" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:basic">
         <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:string">john.smith</saml2:AttributeValue>
      </saml2:Attribute>
   </saml2:AttributeStatement>
</saml2:Assertion>
```

##### AttributeValue of Username

This option tells Appian to use the username attribute from the authentication response.

In this example, the [Username Attribute](#username-attribute) field would need to be set to "usernameAttribute".

```
1
2
3
4
5
<saml2:AttributeStatement>
   <saml2:Attribute Name="usernameAttribute" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:basic">
      <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:string">john.smith</saml2:AttributeValue>
   </saml2:Attribute>
</saml2:AttributeStatement>
```

###### Username Attribute

This field is only enabled if **AttributeValue of Username Attribute** is selected for the [Username Location](#username-location). Set this value to the name of the attribute that holds the username in your IdP's SAML assertion.

#### Identity Provider Username

When "Retain Casing" is selected, Appian will use only the exact casing of the username provided by the IdP when logging into Appian or when looking up accounts. When "Use Lowercase" is selected, Appian will attempt to use both the original casing and the lowercase casing of the username sent by the IdP.

For example, if "Use Lowercase" is selected and Appian receives the username `John.Doe`, it will attempt to treat it as `john.doe`.

#### Authentication Method

Select the SAML authentication context class, which is the minimum authentication method that the IdP will accept. See [Authentication Context for the OASIS Security Assertion Markup Language (SAML) V2.0](https://docs.oasis-open.org/security/saml/v2.0/saml-authn-context-2.0-os.pdf) for more information about the options.

#### Identity Provider uses NTLM Authentication

If your IdP uses NTLM authentication, select this box.

### Remember Me

Remember me enables users to sign in once and stay signed in for a specified number of days. Administrators control whether this is enabled in web browsers only, Appian Mobile only, or both. They also control the number of days that users are remembered since their last sign in.

Remember me does not apply to Administrators. Administrators are automatically logged out when their session expires, which is based on the [Session Timeout](Appian_Administration_Console.html#session-timeout) period.

For more information about remember me, including best practices, see the [Authentication](Authentication.html#remember-me-authentication) page.

#### Enable on Web

Select this if you want all users configured for this identity provider to not have to sign in for the specified number of days after their last sign in. Only affects users who sign in through a web browser.

##### Maximum Remember Me Time (Days)

Enter the number of days after the last sign in that users will be remembered when they log in via a browser. Must be between 1 and 90 days.

#### Enable on Mobile

Select this if you want all users configured for this identity provider to not have to sign in for the specified number of days after their last sign in. Only affects users who sign in on the Appian Mobile app.

##### Maximum Remember Me Time (Days)

Enter the number of days after the last sign in that users will be remembered when they log in via the Appian Mobile app. Must be between 1 and 90 days.

### Group Membership Synchronization

Appian has the ability to inspect a SAML login response and synchronize a user's group memberships based on an assertion in the response.

For each [identity provider](#per-idp-settings), only groups of a single [group type](Group_Types.html) will be synchronized. Users will be added to any groups of this type that have an [attribute value](#group-type-property) that matches the values in the [SAML assertion](#saml-groups-attribute) and removed from any groups of this type that do not have a match. If there is no Appian group that matches a value in the SAML assertion, that value will be ignored and the other remaining groups that do match will synchronize. The synchronizing process will not create an Appian group if one is missing.

Because users who authenticate with remember me will not trigger a group membership synchronization if they already have a valid authentication token, you may want to consider disabling remember me if you need group membership to be up to date. See [Authentication](Authentication.html#using-remember-me-for-saml-with-group-membership-synchronization) for more information.

#### Synchronize Appian group membership

When selected, Appian will update a user's group memberships when they sign in.

#### Group Type

Select the [group type](Group_Types.html) that contains the groups that are eligible for membership synching.

#### Group Type Property

Enter the name of the [group type attribute](Group_Types.html#group-type-attributes) that should be matched against the [SAML attribute values](#saml-groups-attribute). In the below image, `memberOfValue`.

![Example Group Type Attribute](images/group_type_properties_saml.png)

#### SAML Groups Attribute

Enter the name of the SAML attribute that identifies the list of groups the user's groups. For example, `member-of`:

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
<saml2:AttributeStatement>
    <saml2:Attribute Name="member-of" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:basic">
        <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:string">
          Employee
        </saml2:AttributeValue>
        <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:string">
          Finance Department
        </saml2:AttributeValue>
        <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:string">
          Executive Team
        </saml2:AttributeValue>
    </saml2:Attribute>
</saml2:AttributeStatement>
```

### Attribute Mapping

Appian can sync user data included in SAML assertions with a user's profile in Appian.

#### Create new users upon sign-in

When selected, if the connecting user does not have an Appian account, one will be created for them. Account creation requires that the [username](#username-location), [first name](#first-name), [last name](#last-name), and [email address](#email) attributes be populated. Users will be automatically added to the [authentication group](#authentication-group) for the identity provider when they are created.

#### Update user attributes upon sign-in

When selected, if the connecting user already has an Appian account, attributes from the SAML assertions will be copied into the user's Appian profile.

#### First Name

The name of the SAML attribute that identifies where the user's first name can be found in the authentication response.

For example, `first-name`:

```
1
2
3
4
5
6
7
<saml2:AttributeStatement>
   <saml2:Attribute Name="first-name" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:basic">
      <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:string">
        Jonathan
      </saml2:AttributeValue>
   </saml2:Attribute>
</saml2:AttributeStatement>
```

#### Last Name

The name of the SAML attribute that identifies where the user's last name can be found in the authentication response.

For example, `last-name`:

```
1
2
3
4
5
6
7
<saml2:AttributeStatement>
   <saml2:Attribute Name="last-name" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:basic">
      <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:string">
        Smith
      </saml2:AttributeValue>
   </saml2:Attribute>
</saml2:AttributeStatement>
```

#### Nickname

The name of the SAML attribute that identifies where the user's nickname can be found in the authentication response.

For example, `nickname`:

```
1
2
3
4
5
6
7
<saml2:AttributeStatement>
   <saml2:Attribute Name="nickname" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:basic">
      <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:string">
        John
      </saml2:AttributeValue>
   </saml2:Attribute>
</saml2:AttributeStatement>
```

#### Email

The name of the SAML attribute that identifies where the user's email address can be found in the authentication response.

For example, `email-address`:

```
1
2
3
4
5
6
7
<saml2:AttributeStatement>
   <saml2:Attribute Name="email-address" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:basic">
      <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:string">
        jsmith@example.com
      </saml2:AttributeValue>
   </saml2:Attribute>
</saml2:AttributeStatement>
```

#### Home Phone

The name of the SAML attribute that identifies where the user's home phone number can be found in the authentication response.

For example, `home-phone`:

```
1
2
3
4
5
6
7
<saml2:AttributeStatement>
   <saml2:Attribute Name="home-phone" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:basic">
      <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:string">
        123-456-7890
      </saml2:AttributeValue>
   </saml2:Attribute>
</saml2:AttributeStatement>
```

#### Mobile Phone

The name of the SAML attribute that identifies where the user's mobile phone number can be found in the authentication response.

For example, `cell-phone`:

```
1
2
3
4
5
6
7
<saml2:AttributeStatement>
   <saml2:Attribute Name="cell-phone" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:basic">
      <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:string">
        123-456-7890
      </saml2:AttributeValue>
   </saml2:Attribute>
</saml2:AttributeStatement>
```

#### Office Phone

The name of the SAML attribute that identifies where the user's office phone number can be found in the authentication response.

For example, `office-phone`:

```
1
2
3
4
5
6
7
<saml2:AttributeStatement>
   <saml2:Attribute Name="office-phone" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:basic">
      <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:string">
        123-456-7890
      </saml2:AttributeValue>
   </saml2:Attribute>
</saml2:AttributeStatement>
```

#### Address 1

The name of the SAML attribute that identifies where the first line of the user's street address can be found in the authentication response.

For example, `street-address1`:

```
1
2
3
4
5
6
7
<saml2:AttributeStatement>
   <saml2:Attribute Name="street-address1" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:basic">
      <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:string">
        7950 Jones Branch Drive
      </saml2:AttributeValue>
   </saml2:Attribute>
</saml2:AttributeStatement>
```

#### Address 2

The name of the SAML attribute that identifies where the second line of the user's street address can be found in the authentication response.

For example, `street-address2`:

```
1
2
3
4
5
6
7
<saml2:AttributeStatement>
   <saml2:Attribute Name="street-address2" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:basic">
      <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:string">
        Suite 1100
      </saml2:AttributeValue>
   </saml2:Attribute>
</saml2:AttributeStatement>
```

#### Address 3

The name of the SAML attribute that identifies where the third line of the user's street address can be found in the authentication response.

For example, `street-address3`:

```
1
2
3
4
5
<saml2:AttributeStatement>
   <saml2:Attribute Name="street-address3" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:basic">
      <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:string"></saml2:AttributeValue>
   </saml2:Attribute>
</saml2:AttributeStatement>
```

#### City

The name of the SAML attribute that identifies where the user's city can be found in the authentication response.

For example, `city-address`:

```
1
2
3
4
5
6
7
<saml2:AttributeStatement>
   <saml2:Attribute Name="city-address" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:basic">
      <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:string">
        Tysons Corner
      </saml2:AttributeValue>
   </saml2:Attribute>
</saml2:AttributeStatement>
```

#### State

The name of the SAML attribute that identifies where the user's state can be found in the authentication response.

For example, `state-address`:

```
1
2
3
4
5
6
7
<saml2:AttributeStatement>
   <saml2:Attribute Name="state-address" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:basic">
      <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:string">
        Virginia
      </saml2:AttributeValue>
   </saml2:Attribute>
</saml2:AttributeStatement>
```

#### Zip Code

The name of the SAML attribute that identifies where the user's zip code can be found in the authentication response.

For example, `zip-code`:

```
1
2
3
4
5
6
7
<saml2:AttributeStatement>
   <saml2:Attribute Name="zip-code" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:basic">
      <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:string">
        22102
      </saml2:AttributeValue>
   </saml2:Attribute>
</saml2:AttributeStatement>
```

#### Country

The name of the SAML attribute that identifies where the user's country can be found in the authentication response.

For example, `country-address`:

```
1
2
3
4
5
6
7
<saml2:AttributeStatement>
   <saml2:Attribute Name="country-address" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:basic">
      <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:string">
        United States
      </saml2:AttributeValue>
   </saml2:Attribute>
</saml2:AttributeStatement>
```

#### Custom Field

The name of the SAML attribute that should be mapped to the custom fields on the Appian user profile.

For example, `department`:

```
1
2
3
4
5
6
7
<saml2:AttributeStatement>
   <saml2:Attribute Name="department" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:basic">
      <saml2:AttributeValue xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:string">
        Human Resources
      </saml2:AttributeValue>
   </saml2:Attribute>
</saml2:AttributeStatement>
```

## Unauthenticated user settings

This section describes the configurations that determine the logic for routing unauthenticated users to the correct sign-in page. When you have multiple IdPs connected to Appian, it's important to read and understand this section.

### Sign-in page cookies

Appian has the ability to store non-expiring cookies on users' browsers that tell Appian where the user should sign in.

There are two settings that affect sign-in page cookies:

-   The [Remember user's IdP selection](#remember-users-idp-selection) setting in the configuration dialog for the identity provider. This setting only affects users that the specific identity provider is configured for.
-   The [Remember IdP selection for non-SAML users](#remember-idp-selection-for-non-saml-users) on the main SAML Authentication page. This setting affects all users in the environment that use Appian authentication.

A cookie is set when a user successfully signs-in through an IdP that has **Remember user's IdP selection** enabled or when the user signs-in through the Appian native sign-in page when **Remember IdP selection for non-SAML users** is enabled. When someone with a cookie navigates to an Appian URL without a session, Appian will use the cookie to redirect the browser to the correct sign-in page for the user that last signed in with that browser. Appian will ignore the cookie if that sign-in page no longer has the feature enabled.

This feature creates a superior experience for users that leverage SP-initiated sign-in, but it can be problematic if you have users across different IdPs sharing the same computer as it is hard to recover from. If that is the case for your system, disable the feature for those users' IdPs.

For example, imagine a company with 3 IdPs: A, B, and C. IdP A is used by internal users that never interact with external users. External users, however, are split between IdPs B and C, and the company cannot guarantee that those users won't share a computer. So, the correct course of action would be to enable sign-in page cookies for IdP A but disable them for IdPs B and C.

### Choosing a default sign-in page

You can choose for unauthenticated users to either [Use a default sign-in page](#use-a-default-sign-in-page) or [Have users choose their sign-in page](#have-users-choose-their-sign-in-page). See the linked sections for more information about both of these options.

**Note:**  This configuration applies to both SAML and [OpenID Connect](OpenID_Connect_User_Authentication.html) authentication.

## Using login.gov as an Identity Provider

[Login.gov](https://login.gov) is an identity provider used by organizations associated with the United States federal government. Appian is compatible with Login.gov's SAML identity provider.

The following instructions assume that you have already registered your Appian instance with Login.gov with the identity protocol set to `saml`. See the [Login.gov documentation](https://login.gov/developers/) for more information on registration and on-boarding with Login.gov.

To use login.gov as an Identity Provider:

1.  Follow the steps in the [How to Add a SAML Identity Provider](#how-to-add-a-saml-identity-provider) section above.
2.  For the **Service Provider Entity ID**, use the value for the **Issuer** field from the application registered on Login.gov.
3.  For the **Identity Provider Metadata** file, provide the metadata file linked from [Login.gov's developer documentation](https://developers.login.gov/saml/#metadata).
4.  Set the **Signature Hashing Algorithm** to **SHA-256**
5.  Select one of the following from the **Authentication Method** dropdown: `http://idmanagement.gov/ns/assurance/loa/1` or `http://idmanagement.gov/ns/assurance/loa/3` (these are the only two authentication context classes compatible with Login.gov).
    -   If you selected the **LOA 1** context class (`http://idmanagement.gov/ns/assurance/loa/1`), make sure the **Create New Users Upon Sign-In** checkbox is unchecked. User creation is not available with this selection because Login.gov will not provide the necessary user information when this is selected. If the checkbox is checked, users will not be able to authenticate using Login.gov, even if they already exist in Appian.
    -   If you select the **LOA 3** context class (`http://idmanagement.gov/ns/assurance/loa/3`), check the **Create New Users Upon Sign-In** checkbox to allow users to be created in Appian the first time they sign in. Set the following fields to the attributes names that Login.gov returns in the SAML response:
        -   **Email Attribute:** `email`
        -   **First Name Attribute:** `first_name`
        -   **Last Name Attribute:** `last_name`
6.  Regardless of the **Authentication Method** selection, select the **AttributeValue of Username Attribute** radio button in the **Username Location** field, and set the **Username Attribute** field to `email` in order to use the user's email address as the Appian username. Otherwise, Login.gov uses UUIDs for the `NameID` in the SAML response, which would cause Appian to use the same UUID for the Appian username on user creation.
7.  Fill out the rest of the fields as appropriate. Note that it is highly recommended that the **Authentication Group** be set to a group that represents only those users that will authenticate using Login.gov.
8.  The **Test This Configuration** button will not work unless the administrator user with which you perform the test has a username in Appian that matches their email address in Login.gov.

Notes about using Login.gov as an identity provider:

-   Appian [Embedded Interfaces](Embedded_Interfaces.html) are not compatible with Login.gov authentication because Login.gov does not support initiating the login sequence from an iframe.
-   Login.gov does not support IdP-initiated login.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...