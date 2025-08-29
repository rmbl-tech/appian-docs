---
source_url: https://docs.appian.com/suite/help/25.3/PIEE_User_Authentication.html
original_path: PIEE_User_Authentication.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# PIEE User Authentication

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Procurement Integrated Enterprise Environment (PIEE) is the primary enterprise procure-to-pay (P2P) application for the Department of Defense and its supporting agencies. PIEE user authentication can be used for single sign-on to procurement-related systems. This article describes how to configure PIEE authentication in the Appian Administration Console.

## How to Add a PIEE Identity Provider

You can add a single PIEE identity provider for a given Appian environment. If you choose to do so, it will take precedence over other configured identity providers that use [SAML](SAML_for_Single_Sign-On.html) or [LDAP](Appian_Administration_Console.html#ldap-authentication).

To add a PIEE identity provider:

1.  In the [Admin Console](Appian_Administration_Console.html#piee-authentication), under **AUTHENTICATION**, click **Single Sign-On**.
2.  Click the **PIEE** tab.
3.  Select **Enable PIEE authentication**.
4.  Configure the [Appian Settings](#appian-settings).
5.  Configure [Group Membership Synchronization](#group-membership-synchronization).
6.  Configure [Attribute Mapping](#attribute-mapping).
7.  Click **SAVE CHANGES**.

**Caution:**  Ensure that the Administrator account you're signed into is **not** in the Authentication Group you select in the Appian Settings section. This will prevent you from accidentally locking yourself out of the environment.

### Enabling PIEE Authentication

When you check the box to enable PIEE authentication, it will disable user authentication with any configured identity providers that use [SAML](SAML_for_Single_Sign-On.html) or [LDAP](Appian_Administration_Console.html#ldap-authentication). However, if you configure the **Authentication Group** in the [Appian Settings](#appian-settings) correctly, certain users will still be able to log in with [Appian Authentication](Authentication.html#appian-authentication) instead of PIEE authentication.

### Appian Settings

The Appian Settings are used to configure the connection with PIEE and determine which Appian users will authenticate using it.

| Field | Description |
| --- | --- |
| Client ID | ID provided by the PIEE system during the registration process. |
| Client Secret | The password provided by the third-party system during the registration process. This field is masked to prevent unauthorized users from seeing and should be treated as a password. |
| Authorization Endpoint | The endpoint that Appian redirects the browser to in order to obtain an authorization code. |
| Token Endpoint | The endpoint that returns tokens in exchange for an authorization code, client ID, and client secret. |
| User Data Endpoint | The endpoint that returns user data for a given user ID. |
| Authentication Group | A group of users who will authenticate through this identity provider. These users will only be able to log in using PIEE authentication.

Any users who aren't in this group will only be able to log in using [Appian Authentication](Authentication.html#appian-authentication) by navigating to `/suite/portal/login.jsp`. |

**Caution:**  Ensure that the Administrator account you're signed into is **not** in the group you select for Authentication Group. This will prevent you from accidentally locking yourself out of the environment.

### Group Membership Synchronization

Appian has the ability to synchronize a user's group memberships based on the JSON response returned by PIEE.

Only groups of a single [group type](Group_Types.html) will be synchronized. Users will be added to any groups of this type that have an [attribute value](#group-type-attribute) that matches the elements in the JSON response returned by the **User Data Endpoint** and removed from any groups of this type that do not have a match. If there is no Appian group that matches a value in the JSON response, that value will be ignored and the other remaining groups that do match will synchronize. The synchronizing process will not create an Appian group if one is missing.

#### Synchronize Appian group membership

When selected, Appian will update a user's group memberships when they sign it.

#### Group Type

Select the [group type](Group_Types.html) that contains the groups that are eligible for membership syncing.

#### Group Type Attribute

Enter the name of the [group type attribute](Group_Types.html#group-type-attributes) that should be matched against the JSON response returned by the **User Data Endpoint**. In the below image, `locationCd|role`.

![/piee group membership sync](images/piee_group_membership_sync.png)

This **Group Type Attribute** can have any name so long as it matches the attribute value) defined on your selected **Group Type**.

However, the value set on the group will need to use the format `<locationCd>|<role>`. For example, look at this sample JSON snippet that might be returned in the PIEE JSON response:

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
"roles": [
            {
                  "extension": "NA",
                  "role": "Contractor",
                  "groupName": "Sample Group",
                  "groupPath": "TOP\\Groups",
                  "locationCd": "1234"
            },
{
                  "extension": "NA",
                  "role": "Specialist",
                  "groupName": "Sample Group",
                  "groupPath": "TOP\\Groups",
                  "locationCd": "5678"
            }
      ],

```

To sync the user into the corresponding groups, you would need two groups configured like this:

![/PIEE Group 1234 Contractors](images/PIEE_Group_1234_Contractors.png)

![/PIEE Group 5678 Specialists](images/PIEE_Group_5678_Specialists.png)

This first group matches the first role because the value of the selected attribute `1234|Contractor` matches the value in the JSON response created by truncating the role `Contractor` onto the locationCd `1234` with a bar `|` delimiting the two.

This second group matches the first role because the value of the selected attribute `5678|Specialist` matches the value in the JSON response created by truncating the role `Specialist` onto the locationCd `5678` with a bar `|` delimiting the two.

### Attribute Mapping

Appian has the ability to synchronize data based on the JSON response returned by PIEE. Each attribute can be mapped to a top level element in the JSON response returned by PIEE's **User Data Endpoint**.

#### Create new users upon sign-in

When selected, if the connecting user does not have an Appian account, one will be created for them. Account creation requires that the username, first name, last name, and email address attributes be populated. Users will be automatically added to the [authentication group](#appian-settings) for the identity provider when they are created.

#### Update user attributes upon sign-in

When selected, if the connecting user already has an Appian account, attributes from the JSON response will be copied into the user's Appian profile.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...