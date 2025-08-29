---
source_url: https://docs.appian.com/suite/help/25.3/server-side-logic-for-cp.html
original_path: server-side-logic-for-cp.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Client APIs

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page explains the concept of using a connected system plug-in to provide server-side logic for a component plug-in.

**Tip:**  You should only consider creating a Client API if you are creating a Component Plug-in.

## What is a Client API

Connected system plug-ins can expose **client APIs** that are called by [component plug-ins](component-plugins.html) to run logic on the server. Client APIs can access the configuration values stored in the connected system, including credentials. The component's client-side code (running in the user's browser) can pass in request parameters and then use values in the client API response to update what's shown to the user, call out to a third-party system, etc.

See also: [Using Server-Side Logic in Component Plug-ins](component-design.html#using-server-side-logic)

## Examples

[Text Detection Client API enabled Component Plug-in Example](https://github.com/appian/integration-sdk-examples)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...