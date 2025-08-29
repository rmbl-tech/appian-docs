---
source_url: https://docs.appian.com/suite/help/25.3/Web_Browser_Configuration.html
original_path: Web_Browser_Configuration.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Web Browser Configuration

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

As Appian provides a Web-based environment for building composite applications, we rely on a default configurations of supported Web browsers for testing. Because it's possible that your organization may enable or disable certain configurations that would impair your ability to use Appian features or access the Appian application, we recommend the following:

-   Use a supported Web browser; see [Web Browsers](System_Requirements.html#web-browsers).
-   Configure pop-up blocking plug-ins or features to always allow pop-ups from Appian.
-   Set privacy options to allow you to accept cookies from Appian. Third-party cookies are not used or required by the system.

Additional configuration considerations are described below.

### Process Modeler configurations

The Appian Process Modeler is [supported](System_Requirements.html#appian-feature-support-by-browser) for Edge, Firefox, Chrome, and Safari.

-   With or without the pop-up blocking feature disabled, Google toolbar is not compatible with the Process Modeler.
-   Windows Firewall must be disabled when using the Appian Process Modeler.
-   Additional browser customizations or plug-ins may negatively impact application functionality.
-   Because Debug mode opens in a new window, you will need to disable Block pop-up windows when using Safari. This issue does not affect other web browsers.

### Required configurations

#### XMLHttpRequest

This web browser API is used by modern web applications (such as Google Maps) to enable XML-based requests and responses from a web server/application server. It sends and receives XML and plain text data that is used to update the current web page without the need to load a new web page on the client.

-   Native XML HTTP Support is required by Appian.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...