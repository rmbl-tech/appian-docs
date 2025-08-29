---
source_url: https://docs.appian.com/suite/help/25.3/Email_Headers_and_Footers.html
original_path: Email_Headers_and_Footers.html
version: "25.3"
title: "Email Headers and Footers"
page_id: "Email_Headers_and_Footers"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Email Headers and Footers

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Appian email messages use standard header and footer HTML files that you can update to suit your applications. The header and footer files are stored as Appian [documents](design-objects.html#document).

The file encoding used is UTF-8. Any HTML updates to these files must be encoded in UTF-8, if Unicode is used for the file encoding.

## Uploading a new standard email header or footer

The **emailHeader** and **emailFooter** files are created the first time Appian is started after installation.

To upload a new standard email header or footer:

1.  In your application, go to the **Build** view.
2.  Search for `E-mail Templates` and open this document folder.
3.  Select the checkbox next to the **emailHeader.html** or **emailFooter.html** document object.
4.  Click **MORE** > **NEW VERSION**.
5.  In the **Upload New Version** dialog, configure the following properties:

    | Property | Description |
    | --- | --- |
    | **New File** | Click **UPLOAD** to to upload a new version of the email header or footer. |
    | **File Type** | By default, this is set to **HTML**. You cannot change the file type. |
    | **Name** | The name of the document object. By default, this will be **emailHeader** or **emailFooter**. |
    | **Description** | A short description about the header or footer. |

6.  Click **UPLOAD**.

Restarting the application server will preserve any changes you've made to these files, but will restore any of these files that may have been inadvertently deleted.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...