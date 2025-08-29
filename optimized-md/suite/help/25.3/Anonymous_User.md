---
source_url: https://docs.appian.com/suite/help/25.3/Anonymous_User.html
original_path: Anonymous_User.html
version: "25.3"
title: "Anonymous User"
page_id: "Anonymous_User"
section: "Enabling anonymous access"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Anonymous User

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

The Anonymous user is a system account that does not require authentication using credentials. It is disabled in Appian, by default.

The Anonymous account:

-   Must be enabled if you need to send email messages to start process models.
-   Is denied access to all other objects, pages, applications, or items in the portal other than the right to trigger a process using email.
-   Is automatically in the [Application User Role](User_Roles.html#application-user-role) without you needing to add it to the role's group. Adding the anonymous user to another user role has no effect; it will always be considered in the Application User Role.

## Enabling anonymous access

Enable the anonymous account by creating the following setting in [custom.properties](Custom_Configurations.html).

```
1
conf.suite.ANONYMOUS_ACCESS=true
```

After making any changes to this property restart both the application server and the Appian services.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...