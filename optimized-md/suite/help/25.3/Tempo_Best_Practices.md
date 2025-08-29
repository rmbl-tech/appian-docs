---
source_url: https://docs.appian.com/suite/help/25.3/Tempo_Best_Practices.html
original_path: Tempo_Best_Practices.html
version: "25.3"
title: "Tempo Best Practices"
page_id: "Tempo_Best_Practices"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Tempo Best Practices

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page lists lessons learned and helpful guidelines to consider when creating Tempo events, system events, hazards, or comments for your users.

## Do not use the administrator account for posting

When using either the Post Comment to Feed Entry Smart Service or the Post Event to Feed Smart Service, choose a real, named user as the author for attribution instead of the Administrator account to generate the post.

The Administrator account should be reserved for administration. Collaboration in the Tempo feed should always be conducted by named users in the system.

## Make sure readers understand the importance of a post quickly

When posting an event to Tempo, write messages with the goal of enabling your readers to instantly recognize the relevance and significance of the message.

-   Use the first few words to clarify the importance of the message.
-   Minimize the use of standard (rote or boilerplate) phrases in your Tempo events.
    -   Consider listing priority or status information first.
-   If you must use the same words in each message, list those phrases at the end of the message.
    -   Avoid beginning any messages with rote (boilerplate) text.
-   Consider moving reference information to an Event Data node input.

See also: [Populating Label Value Inputs](Populating_Label_Value_Inputs.html)

Example of Phrasing with Excessive Boilerplate:

**A new Technical Support case, #100005 - Cannot connect to server: User John Doe**.

-   This message starts with a rote phrase **A new Technical Support case**, which is to be repeated each time the message is posted.
-   Reference information is listed before pertinent details, which are listed at the end of the message.

### Recommended message

Example of Phrasing Emphasizing Importance:

**Priority 1 - Cannot connect to server: User John Doe. (Case #100005)**

-   This message starts with pertinent details.
-   Reference information is listed last.
-   Rote phrases do not appear.

## Don't overuse system-generated events

Don't overuse system-generated events or comments in the News feed. Too many system-generated events can drown out actual social collaboration. This devalues the feed and actually discourages ad-hoc collaboration.

The best model for interaction in the News feed is:

1.  A key business event or milestone is published and creates awareness.
2.  User (non-system) collaboration occurs around that event. Connections are formed. Knowledge is shared. Actions are taken.
3.  A small number of notable milestones (for example, an SLA violation) are added to the event by the system (avoid recurring hazards).

The News feed should not be used as an event log to track every status change. Instead, use reports and dashboards for displaying audit or activity history information.

## Avoid scheduling hazard alerts on repeat

When using the Post Hazard to Feed Entry Smart Service, make sure not to configure the node to repeat.

-   Doing so can cause an alert to post to Tempo multiple times before the problem is fixed.
-   This avoids any clutter of hazard alerts on the Tempo feed, especially for users that can't do anything about the hazard.

See also: [Post Hazard to Feed Entry Smart Service](Post_Hazard_to_Feed_Entry_Smart_Service.html) and [Starting an Activity on a Regular Interval](Process_Node_and_Smart_Service_Properties.html#starting-an-activity-on-a-regular-interval)

### Recommended action

Assign a task to the necessary user related to the problem instead, such as a task to review the hazard.

See also: [Assignment Tab](Process_Node_and_Smart_Service_Properties.html#assignment-tab)

## Make sure your entry or comment does not exceed the byte limit

The limit for Tempo feed entries is 4,000 bytes.

When using a smart service to create a Tempo event, system event, hazard, or comment, the smart service will cancel by exception if the Message parameter evaluates to more than 4,000 bytes.

To ensure your value does not exceed 4,000 bytes, use the `lenb()` function to check the length of your text in bytes. If you are using a process variable, rule, or constant that results in a value not of type Text, make sure to convert the value to text before it is evaluated by `lenb()`.

See also: [lenb()](fnc_text_lenb.html)

**Note:**  The `len()` function returns the number of characters of a text, while the feed entry limit is based on bytes, and the `leftb()` function does not support all UTF-8 characters, so Appian does not recommend using these functions to confirm the value's byte length.

## Use existing groups as recipients

Avoid creating new groups to manage viewing permissions for News feed entries and system events. Instead, choose from existing users and groups whenever possible to create the pool of viewers you need. This prevents the unnecessary accumulation of groups in the system.

## See also

-   [Post Comment to Feed Entry Smart Service](Post_Comment_to_Feed_Entry_Smart_Service.html)
-   [Post Event to Feed Smart Service](Post_Event_to_Feed_Smart_Service.html)
-   [Post System Event to Feed Smart Service](Post_System_Event_to_Feed_Smart_Service.html)
-   [Post Hazard to Feed Entry Smart Service](Post_Hazard_to_Feed_Entry_Smart_Service.html)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...