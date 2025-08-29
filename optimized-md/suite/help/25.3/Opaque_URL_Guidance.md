---
source_url: https://docs.appian.com/suite/help/25.3/Opaque_URL_Guidance.html
original_path: Opaque_URL_Guidance.html
version: "25.3"
title: "Opaque URL Guidance"
page_id: "Opaque_URL_Guidance"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Opaque URL Guidance

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page describes the purpose of opaque URLs and provides guidance on using them correctly. All design objects in Appian have a unique identifier that Appian uses internally called an object ID. This object ID is typically an integer and can be used by developers to reference the object. Similarly, Appian generates URLs for end users that consistently link to the same location once you have the URL. The URL is able to always link to the same place because it has a unique identifier too, which is called an opaque ID.

An **opaque ID** is an alphanumeric string that is generated based on the source object ID and used in URLs. For example, look at this URL to a record summary view in Tempo: `https://mysite.appiancloud.com/suite/tempo/records/item/lMBwrdY9jHB7bMizo2etvZu6KRcaUYy0NlFYky-4RhT0UxhXgl-GvwNLQ4iLa2tPWkqGU_Q9vGJMmNtH8-slOEYh5NjWzjwui3K2otJx4m0XQBzTg/view/summary`

In the URL above, the string of alphanumeric characters between `/item/` and `/view/` is the opaque ID for this record. Since this is consistent, this opaque ID can also be used to return the same record summary view on a site by applying the ID in the site URL: `https://mysite.appiancloud.com/suite/sites/employee_portal/record/lMBwrdY9jHB7bMizo2etvZu6KRcaUYy0NlFYky-4RhT0UxhXgl-GvwNLQ4iLa2tPWkqGU_Q9vGJMmNtH8-slOEYh5NjWzjwui3K2otJx4m0XQBzTg/view/summary`

URLs to other page types such as reports and actions use the same paradigm. In general, opaque URLs are useful because they provide uniformity across each page and add an extra level of security through a layer of abstraction between the URL and the source object.

## Updates to task and document URLs

Starting in 20.3, opaque URLs are now also used in tasks and direct document download links. This is most noticeable using tasks; when accessing any task through the Tempo task list or from a process task link, the URL will show with an opaque identifier like this: `https://mysite.appiancloud.com/suite/tempo/tasks/task/IWqCc5nohDtGP1F0`

Prior to 20.3, task and direct document download links used a numeric object ID directly in the URL. Because this behavior was convenient for developers, some applications may have used this to construct URLs for custom links that could be used outside of Appian, such as in emails or responses returned from web APIs.

Now that opaque URLs are available for tasks and documents, you can update any custom links to also use opaque URLs. To construct opaque URLs from an object ID, there are two functions that will generate the corresponding opaque identifier for tasks and documents:

-   `a!urlForTask()` returns the opaque URL of a task given the task ID. It can either return the full URL or only the opaque identifier.
-   `document()` returns the opaque identifier of a document given the document ID and the property `"url"`.

Of course, using opaque URLs is a great way to be consistent with other object types, but you may already have applications that depend on the old behavior and need to work immediately on upgrade. To support this, the upgrade process is set up to allow both opaque and non-opaque URLs. Specifically:

-   Environments upgraded to 20.3 or later from a version 20.2 or earlier will initially support **both** opaque URLs and numeric object IDs in the URL for tasks and documents.
-   Environments that are created new in 20.3 or later will **only** support opaque URLs for tasks and documents.

## Disallowing non-opaque URLs

Both kinds of URLs enforce access to only the users specified in their role maps. However, the numeric IDs are assigned in increasing order, which makes it easier to scan all IDs for objects with misconfigured security. For customers who wish to only allow opaque URLs after upgrading to 20.3 or later, we've also provided the ability to disallow non-opaque URLs. Before configuring your environment to disallow numeric IDs, there are a few prerequisites to confirm that your applications use only opaque URLs.

### Prerequsities

-   Verify that your environment does not use any links with numeric IDs. The [Task Errors Log](Logging.html#task-errors) will log any occurrences of users accessing a task using a numeric ID, as well as provide the user and task ID for troubleshooting. For example, suppose the following entry is added to the log:

```
1
2020-06-11 13:54:38,_h-0000e49e-ee38-8000-e9f0-1f1e819f1e94_1897,User accessed a task using an integer in the URL. Accessed Task: [13649].
```

The user UUID can be used in the search box in the users view of the Appian Designer to find the user who accessed this task. Also, a process report that shows all tasks with and task IDs can be used to identify the source of the task with the provided ID.

-   Mobile customers should update to the latest version of the mobile app. Versions 20.3 and later will support disallowing non-opaque URLs.

### Appian Cloud customers

Once the prerequisites are complete, Appian Cloud customers should open a support case to request removing support for non-opaque URLs.

### Self-managing customers

Self-managing customers can disallow using non-opaque URLs by updating configurations in the `custom.properties` file. The following properties should be removed or commented out in `custom.properties`:

```
1
2
conf.tasks.accessibleById=true
conf.content.download.byId=true
```

This change must be applied to all application servers to take effect. The property for tasks (`conf.tasks.accessibleById`) is hot deployable, while the property for documents (`conf.content.download.byId`) requires an application server restart to take effect. See the [Post-Install Configurations](Post-Install_Configurations.html) for more information on custom configurations using `custom.properties`.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...