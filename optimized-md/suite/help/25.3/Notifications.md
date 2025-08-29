---
source_url: https://docs.appian.com/suite/help/25.3/Notifications.html
original_path: Notifications.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# User Notifications Settings

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

User notification settings allow you to override the system default task and news notification settings to meet your specific needs. This page describes how to modify these notification settings and determines what system generated emails or mobile push notifications you receive.

If you would like to create a designer-generated notification, check out the [Send E-Mail](Send_Email_Smart_Service.html) smart service.

## Editing notification settings

To access your notification settings, navigate to the user profile menu and select **Settings**.

![/Notification Settings User Profile Menu](images/Notification_Settings_User_Profile_Menu.png)

In the user settings page, you will be able to configure both **Email Notifications** and **Mobile Notifications**.

![/Notification Settings Pages](images/Notification_Settings_Pages.png)

### Notes

-   The settings are the same across email and mobile delivery types with a single exception. The **Tasks have been escalated** setting is only available on email.
-   Designers can disable task notifications on a [per-task](Process_Node_and_Smart_Service_Properties.html#advanced-options) basis.
-   The **Email Notification** page and the **Mobile Notification** page are only visible if they are enabled in the Admin Console ([email](Appian_Administration_Console.html#email) , [mobile](Appian_Administration_Console.html#mobile)).

## Options

When the **toggle is off** for a category, all the settings in this category will be turned off and no notifications will be sent. ![/Notification Settings Toggle Off](images/Notification_Settings_Toggle_Off.png)

When the **toggle is on** for a category, you can select your notification preference using one of three predefined options.
![/Notification Settings Predefined Options](images/Notification_Settings_Predefined_Options.png)

The tasks and news sections below identify how the detailed notification settings are associated to the predefined options. Each detailed notification setting below is also prefixed by its sub category as seen in the user interface.

### Tasks

-   Any task activity related to me occurs.
    -   New Tasks: Tasks assigned to me.
    -   New Tasks: Tasks assigned to me and others.
    -   Task Updates: Social tasks assigned to me have been closed.
    -   Task Updates: Social tasks sent by me have been closed.
    -   Task Updates: Comments added on social task assigned to me.
    -   Task Updates: Comments added on social task sent by me.
    -   Task Updates: Tasks have been escalated (_email only_).
-   New tasks are assigned to me.
    -   New Tasks: Tasks assigned to me.
    -   New Tasks: Tasks assigned to me and others.
-   Selected task events occur (custom).
    -   _(You select the settings manually with this option)_.

### News

-   Any news related to me occurs.
    -   Published News: Kudos given to me.
    -   Published News: Message sent to me.
    -   Published News: Message sent to me and others.
    -   Published News: New event created by the system on my behalf.
    -   Shared News: Shared with me.
    -   Shared News: Shared with a group I belong to.
    -   Shared News: My news has been shared with others.
    -   Hazards On: Events created by the system on my behalf.
    -   Hazards On: System events I commented on or starred.
    -   Hazards On: Events created by the system on my behalf that I have commented on or starred.
    -   Comments On: Messages I sent.
    -   Comments On: Posts I created.
    -   Comments On: Kudos I gave.
    -   Comments On: Kudos I received.
    -   Comments On: Kudos I commented on or starred.
    -   Comments On: Posts or messages I commented on or starred.
    -   Comments On: Events created by the system on my behalf.
    -   Comments On: System events I commented on or starred.
    -   Comments On: Events created by the system on my behalf that I have commented on or starred.
-   Important news related to me occurs.
    -   Published News: Kudos given to me.
    -   Published News: Message sent to me.
    -   Published News: Message sent to me and others.
    -   Shared News: Shared with me.
    -   Shared News: Shared with a group I belong to.
    -   Hazards On: Events created by the system on my behalf.
    -   Hazards On: System events I commented on or starred.
    -   Hazards On: Events created by the system on my behalf that I have commented on or starred.
    -   Comments On: Messages I sent.
    -   Comments On: Posts I created.
    -   Comments On: Kudos I received.
-   Selected news events occur (custom).
    -   _(You select the settings manually with this option)_.

## Mobile

Mobile push notifications for iOS and Android are only available on Appian Cloud and are encrypted end-to-end.

A banner is displayed when the mobile device receives a push notification. When the banner is tapped, the user is navigated to the pertinent location in the Appian mobile app.

![mobile push notification](images/Mobile_Push_Notification.png)

### Requirements

-   Appian (iOS) app 17.2 or above running on iOS 10 or later.
-   Appian (Android) app 17.2 or above.
-   Mobile push notifications are enabled in the [Admin Console](Appian_Administration_Console.html#mobile).
-   Push notifications are enabled in the mobile application.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...