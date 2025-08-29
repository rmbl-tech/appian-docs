---
source_url: https://docs.appian.com/suite/help/25.3/Appian_Engine_Connection_Restrictions.html
original_path: Appian_Engine_Connection_Restrictions.html
version: "25.3"
title: "Appian Engine Connection Restrictions"
page_id: "Appian_Engine_Connection_Restrictions"
section: "Installing a Secure Token"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian Engine Connection Restrictions

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

Appian restricts communications between the engine servers and the application server(s) using a security token. It is possible to run Appian without the token, which causes an error message to be logged.

Appian Engines are bound to your application server(s) using a security token.

-   The security token prevents unauthorized calls to the engines that might cause denial of service.
    -   Unauthorized calls can be made by unauthorized network intrusions or by common security applications that scan server ports.
    -   When a custom security token is used, only trusted systems are permitted to make calls to the engines.
-   The security token can be any string of 256 characters (not simply alpha-numeric).

## Installing a Secure Token

A default security token is automatically installed by the Appian setup program. The default security token (appian.sec) is a 256 character string of letters. All default tokens are identical.

### Generating a Custom Security Token

1.  With the application server shut down and engine servers shut down, generate a random 256 character string of alpha-numeric characters using a text editor.
    -   [www.random.org](https://www.random.org/strings/?num=16&len=16&digits=on&loweralpha=on&unique=on&format=plain)
    -   Remove any line breaks if you use the string supplied by the external link.
2.  Save the new security token in the following location:
    -   `<APPIAN_HOME>/conf/`
3.  When an appian.sec file is placed in this directory, it is used instead of the default security token.
    -   Note: If you search for the `appian.sec` file, you will find the default token file in several directories. These do not need to be deleted or modified. The file placed in `<APPIAN_HOME>/conf/` takes precedence.
4.  (Multi-server installations) Save the `appian.sec` token in the location listed above on each server in your instance, including servers that only run Appian engines. Security tokens on each server in an instance must be identical.
5.  Generate a unique security token for each installation to retain the full security benefits of this feature.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...