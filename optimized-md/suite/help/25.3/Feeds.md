---
source_url: https://docs.appian.com/suite/help/25.3/Feeds.html
original_path: Feeds.html
version: "25.3"
title: "Feeds"
page_id: "Feeds"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Feeds

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Feeds allow users to stay up-to-date with process milestones and other important process-driven events.

Users can [subscribe to a feed](Settings_Page.html#news-subscriptions) in order to see it contents. When subscribed, any feed entry associated with that user will appear in their personal [News](News.html) feed.

**Note:**  To allow users to view and subscribe to a feed, the feed must belong to an application where the **Publish application actions in Tempo** option is enabled. [Learn how to enable this setting](#allow-users-to-view-the-feed).

Once a feed is created it becomes available for use in the [Post Event to Feed](Post_Event_to_Feed_Smart_Service.html) and [Post System Event to Feed](Post_System_Event_to_Feed_Smart_Service.html) smart services. Note that:

-   All users targeted in the Viewer Group of the smart service can see the event or system event in their News feed regardless of their permissions to the associated application.
-   Users can subscribe/unsubscribe to a feed through the event or system event feed entry on the News feed.

## Create a feed

To create a feed:

1.  In your application, go to the **Build** view.
2.  Click **NEW > Feed**.
3.  In the Feed Properties dialog, configure the following properties:

| Property | Description |
| --- | --- |
| **Name** | The name of the feed. We recommend that you follow the [standard object naming conventions](Standard_Object_Names.html). |
| **Description** | A short description of the feed. |
| **Show in Catalog** | Determines whether users can subscribe to this feed in their [user settings](Settings_Page.html#news-subscriptions). By default, this checkbox is selected. |

1.  Click **CREATE**.
2.  In the **Review News Feed Security** dialog, configure your [feed security](#prodlink-security).
3.  Click **SAVE**.

## Allow users to view the feed

To allow users to view and subscribe to the feed, it must belong to an application where the **Publish application actions in Tempo** option is enabled.

To enable this setting:

1.  In your application, go to **Settings** and select **Application Properties**.
2.  In the **Application Properties** dialog, select the **Publish application actions in Tempo**.
3.  Click **SAVE CHANGES**.

## Edit a feed

To edit a feed:

1.  In your application, go to the **Build** view.
2.  Select the feed name to open it.
3.  In the **Feed Properties** dialog, make an necessary updates.
4.  Click **SAVE**.

## Delete a feed

To delete a feed:

1.  In your application, go to the **Build** view.
2.  Select the checkbox next to the name of the feed.
3.  Click **DELETE**.
4.  In the **Delete Feed?** dialog, ensure there are no objects that depend on the feed.

    **Note:**  If there are objects that depend on the feed, then deleting the feed will cause an error to appear in those objects.

5.  Click **DELETE**.

**Note:**  Deleting a feed does not delete its entries in the News feed and does not prevent users from subscribing or unsubscribing from its entries.

## Security

**Note:**  Only users with at least **Viewer** [permissions](object-security.html#permission-levels-in-role-maps) to the [application](application-settings.html#prodlink-security) will be able to subscribe to a feed through their [user settings](Settings_Page.html#news-subscriptions).

The [security](object-security.html) role map of a feed controls which developers can see or modify it and its properties.

If [default security groups](creating-applications.html#default-security-groups) are configured for your application, the default security groups prepopulate the role map when you create a feed. If default security groups are _not_ configured for your application, you are automatically assigned **Administrator** permissions for any feed you create. System administrators can always access a feed, regardless of object-level permissions.

See [Editing Object Security](object-security.html#editing-object-security) to modify a feed's security.

The following table outlines the actions that can be completed for each [permission level](object-security.html#permission-levels-in-role-maps) in a feed's security role map:

| Actions | Administrator | Editor |
| --- | --- | --- |
| Edit the site definition | Yes | Yes |
| View the security | Yes | Yes |
| Delete the feed | Yes | No |
| Update the security | Yes | No |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...