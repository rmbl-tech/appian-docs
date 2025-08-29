---
source_url: https://docs.appian.com/suite/help/25.3/Settings_Page.html
original_path: Settings_Page.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# User Settings

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

User settings allow you to make changes to your general, news subscription, password, third-party credential, email notification, mobile notification, and accessibility settings. To access your settings, click your user picture in the top-right corner, then click **SETTINGS**.

## General

The **General** tab allows you to configure the settings described below.

### Internationalization

The user internationalization settings include **Locale**, **Time Zone**, and **Calendar**.

To set your internationalization preferences:

1.  Modify the settings via the dropdown lists.
2.  Click **SAVE CHANGES**.
3.  Refresh your web browser to have your changes take effect.

**Note:**  You cannot customize your settings if your system administrator has specified a [system-wide locale](Appian_Administration_Console.html#forcing-system-wide-locale-settings).

### Designer Preferences

In the [designer role](User_Roles.html#designer-role), you can use the **Display object type favicons in browser tabs** setting to control the favicon that displays in your browser tab:

[![images/user_settings_favicons_25_2.png](images/user_settings_favicons_25_2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img225)

[![](images/user_settings_favicons_25_2.png)](#_)

When this setting is enabled:

-   Object type icons display in the browser tabs of corresponding objects so that you can more easily differentiate between your Appian tabs at-a-glance.
-   Your preference overrides any environment-specific favicon branding set by system administrators in the [Admin Console](Appian_Administration_Console.html#branding).

This setting is enabled by default. The favicon replacement works on all [supported browsers](System_Requirements.html#web-browsers) with the exception of Safari, where object type favicons are only displayed for process models, process reports, and data stores.

### Process HQ

The **Appearance** setting allows you to choose your theme for [Process HQ](processhq.html). By default, Process HQ displays in dark theme.

[![images/phq-light-theme-comparison.png](images/phq-light-theme-comparison.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img226)

[![](images/phq-light-theme-comparison.png)](#_)

## Password

The **Password** tab will be available if your environment uses Appian to authenticate its passwords.

To change your password, select this tab and fill out the fields for your old password, new password, and your new password again to confirm it. Any requirements your password must follow will display next to the **New Password** field. You must meet these criteria to complete the change.

## Third-Party Credentials

The **Third-Party Credentials** tab provides a list of other software systems that have been integrated with Appian by a system administrator. Click on the name of one of the systems to provide your personal credentials for that system. When Appian calls that system on your behalf, it will authenticate using the credentials you provide.

The credentials you provide here are encrypted and stored securely in Appian. The credentials can only be decrypted and used when you are logged in and using Appian.

Each system in the list will display the word _Configured_ or a non-sensitive portion of your credentials, such as your username, if credentials have been configured for that system. Otherwise, the system will be listed as _Not Configured_.

You should provide credentials for each of the systems listed in this section if you have a login to that system. That way, Appian will succeed when attempting to perform an action on that system on your behalf.

To permanently remove a set of credentials so that they are no longer stored in Appian, click the **Forget My Credentials** button when viewing the credentials for a configured system.

## Email Notifications

The **Email Notification** tab will only be available if email is enabled in the [Admin Console](Appian_Administration_Console.html#email).

The **Email Notification** tab allows you to override the system default task and news email [notification settings](Notifications.html) to meet your specific needs. These notification settings determine what system generated task and news email notifications you receive.

## Mobile Notifications

The **Mobile Notification** tab will only be available if mobile push notifications are enabled in the [Admin Console](Appian_Administration_Console.html#mobile).

The **Mobile Notification** tab allows you to override the system default task and news mobile push [notification settings](Notifications.html) to meet your specific needs. These notification settings determine what system-generated task and news mobile push notifications you receive.

## News Subscriptions

The **News Subscriptions** tab is only available when you view your user settings in Tempo.

Your system administrator creates the topic-specific news feeds for your organization. When an entry is added to a specific feed, such as a process milestone or process completion event, only users subscribed to that feed will see it in their News feed.

The **News Subscriptions** tab lists all available feeds you can subscribe to.

The radio buttons adjacent to each news feed indicate if you're unsubscribed, subscribed, or have a personalized subscription to that news feed.

### Subscribe

To subscribe to a feed, select **Subscribed** or **Personalized** adjacent to the news feed name.

Selecting **Subscribed** subscribes you to all events added to that feed. A selected radio button indicates you have subscribed.

Selecting **Personalized** subscribes you to only events added to that news feed and targeted specifically to a group in which you're a member. Your system administrator needs to configure this option. Check with them before enabling it. A selected radio button indicates you have subscribed to **Personalized**.

### Unsubscribe

To unsubscribe from a feed, select **Unsubscribed** adjacent to the news feed name. Once you unsubscribe, you will no longer see events in your News feed from that specific feed.

You can also unsubscribe from a feed from the News feed directly by hovering over an event and clicking the **Unsubscribe** button that appears. To unsubscribe from a feed directly on mobile devices:

-   For iOS devices
    1.  Swipe right on an event posting to reveal additional options.
    2.  Select **Unsubscribe**.
-   For Android devices
    1.  Tap on the overflow menu for the News event.
    2.  Select **Unsubscribe**.

## Accessibility

The **Accessibility** tab allows you to modify your display settings. These settings make it easier for users with visual impairments to navigate forms, grids, and interfaces.

There are two accessibility options you can enable:

-   **Increase outline and border contrast**
-   **Show fill patterns on charts**

**Note:**  These options will not apply to the Appian Mobile application or embedded interfaces.

Once you select an option, click **SAVE CHANGES** and then refresh your web browser. The accessibility features will then be available on all Sites, Tempo, and interfaces.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...