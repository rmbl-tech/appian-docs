---
source_url: https://docs.appian.com/suite/help/25.3/Appian_Administration_Console.html
original_path: Appian_Administration_Console.html
version: "25.3"
title: "Appian Administration Console"
page_id: "Appian_Administration_Console"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian Administration Console

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page provides guidance on how to configure your system, authentication, and integration settings and monitor system activity in the Appian Administration Console (the Admin Console). The Admin Console is where system administrators can update certain configuration properties through the web interface. Users must be system administrators to make changes in the Admin Console.

## Access the Admin Console

To access the Admin Console in your Appian environment, open the navigation menu , then select **Admin Console**.

Only [system administrators](User_Management.html#manage-user-rights-and-security) can access the Admin Console and make changes to the configurations. The Administrator user is specifically prohibited from accessing the Admin Console in order to ensure that all changes can be traced to a specific named user rather than a shared account.

All changes made through the Admin Console are logged to an audit log. The log captures the username of the user that made the change, along with the previous and new values of the changed property.

See also: [Appian Admin Console Logging](Logging.html#admin-console)

## System

The following pages relate to system administration.

### Branding

The **Branding** page allows you to manage the name, logos, and colors that appear in Tempo interfaces on web browsers.

Note that these branding settings do not apply to:

-   [Sites](sites_object.html) or [portals](portal-object.html). For site and portal branding, see [Designing Sites and Portals](sail/ux-site-branding.html#branding).
-   [Appian Mobile](Appian_for_Mobile_Devices.html). For custom branding in Appian Mobile, see the [Custom Mobile Applications](Custom_Mobile_Applications.html) documentation.
-   [Embedded interfaces](Embedded_Interfaces.html). To learn about custom styling for embedded interfaces, see [Themes](#themes).

**Note:**  Clicking the **SAVE CHANGES** button will cause the updated values to become live in the system. As a best practice, experiment with various color configurations in a development environment before applying them to a production system.

All branding modifications result in an audit log message with the username of the user who made the change, the previous values, and the new values.

#### Identity

-   **Site name** - The site name appears as the browser window title and in emails sent from the system.
-   **Logo** - The logo appears on the login page and on the left side of the end-user interfaces. The Appian logo in the upper-right corner of the end-user interface cannot be branded. The logo is automatically resized for use in each interface. The logo file should be a PNG file with a transparent background and must be less than 100KB. As an alternative to uploading an image, the logo can be configured to point to a static image hosted on a separate web server. Use this option when your company web assets, such as logos, are hosted on a content delivery network. The default logo is the Appian logo.
-   **Logo Alternative Text** - The alternative text provided in this configuration is used for the logo's alt attribute and announced by screen readers in Tempo. The value should describe the logo to visually impaired users, including any text that is part of the logo. It does not apply to the email logo. Default is: `Logo`.
-   **Email Logo** - The logo appears at the top of system-generated emails to users, such as those sent when a task is assigned or when a user is added as a participant to a post. The same recommendations mentioned above for the logo apply to the email logo.
-   **Favicon** - The favicon (short for "favorite icon") is the small icon that appears in the browser tab or URL bar. Provide an ICO file with sizes 16x16 and 32x32. Like the logo, the favicon file must be less than 100KB. The favicon can also be configured to point to an externally-hosted favicon file. Use this option when using a content delivery network. The default favicon is the Appian "A" icon.
-   **Display Site-Wide Banner** - This option determines whether or not to show a banner at the top of all pages in the Appian environment. Currently, this banner only shows up in web.
    -   **Banner Message** (Required) - The text to display in the site-wide banner. This field is only visible after selecting **Display Site-Wide Banner**.

#### Colors

-   **Header Bar** - The color of the header bar in the end-user environment. The default value is `#416b88`.
-   **Navigation Labels** - The color of the navigation labels in the header bar (News, Tasks, Records, etc.). The default value is `#ffffff`.
-   **Navigation Highlight** - The color of the navigation labels when a user hovers over the label with the cursor. Also, the color of the underline that indicates which navigation label is currently selected.The default value is `#f8e85b`.
-   **Filter Group Title** - The color of the title that appears above the filter groups in the left navigation pane (for example, "Status" on the **Tasks** tab). The default value is `#222222`.
-   **Accent Color** - Affects the color of many elements in all interfaces, including buttons, links, active field border colors, milestone bars, section titles, etc. Avoid grayscale colors (black, white, and gray) that are similar to colors used for interface elements and avoid green/red colors that are used to indicate positive/negative values. The default value is `#1d659c`.
-   **Loading Bar** - The color of the bar at the top of the page that indicates when the system is processing. The default value is the accent color.
-   **Wallpaper** - The color of the background that surrounds the main content area. The default value is `#ebf1f7`.
-   **Email Header Color** - The color of the top part of system-generated emails to users. The default value is `#1d659c`.
-   **Email Accent Color** - The color of the navigation button in system-generated emails to users. The default value is `#1d659c`.
-   **Banner** - The background color for the site-wide banner. The default value is `#666666`.
-   **Banner Text** - The color of the text for the site-wide banner. The default value is `#ffffff`.

### Data retention

The **Data Retention** page allows you to manage the following settings:

-   **News Entry Deletion** - Allow users to delete news entries and social tasks that they have authored, as long as no one has commented on them. By default, this setting is enabled.

-   **Deployment Packages Cleanup** - Automatically delete deployment packages (ZIP files) after a specified number of days. By default, this setting is enabled and set to 30 days. Appian recommends setting 30 days or less for package cleanup to ensure optimum disk space.

    **Note:**  Deployments with deleted packages will still appear in the [**Deploy**](deployments-view.html) view history. However, these deployments will be [archived](deployments-view.html#view-archived-deployments) and have limited functionality. Packages deleted by this setting are logged as being deleted by the Administrator user.

-   **Record Document Cleanup** - This setting only applies to [documents managed by record types](manage-docs-with-records.html). It will automatically delete documents without an associated record if they have not been modified for a certain number of days. By default, the number of days is set to 30.

    This setting is enabled by default in environments that do not have any document management record types. If your environment already has document management record types, you will need to enable this setting to apply the cleanup schedule to all document management record types. Developers can also [customize or disable the document cleanup schedule](manage-docs-with-records.html#clean-up-documents) on individual record types.

### File upload

The **File Upload** page allows customers to manage the following settings:

-   **Enable Real-Time Virus Scanning (Cloud Only)** - When enabled, all files under 25MB that are uploaded in the following places will be scanned immediately upon upload: Tempo News, Social Tasks, interfaces in all locations (Tempo, Sites, and Embedded interfaces), the Admin Console, and the Appian Designer. Nightly scans will continue even if real-time scanning is disabled. Files found to contain viruses are logged in the [blocked files audit log](Logging.html#blocked-files).
-   **Block files with the specified extensions** - If chosen, Appian will block any file with an extension listed in the **Extensions to Block** field. Choosing this option allows you to disable the feature by leaving the **Extensions to Block** input blank.
    -   **Extensions to Block** - A case-insensitive list of extensions to block separated by whitespace (spaces, tabs, or new lines). The values provided are matched exactly as written, case excluded. For example, specifying "jpg" will not block "jpeg" files.
    -   **Block files without an extension, for example, "my\_file." and "my\_file"** - When enabled, files without an extension will be blocked. If file type verification is enabled, this field will be checked and disabled because files without an extension do not have a valid type.
-   **Only allow files with the specified extensions** - If chosen, Appian will block any file with an extension not listed in the **Extensions to Allow** field.
    -   **Extensions to Allow** - A case-insensitive list of extensions to exclusively allow separated by whitespace (spaces, tabs, or new lines). The values provided are matched exactly as written, case excluded. For example, specifying "jpg" will not allow "jpeg" files.
    -   **Allow files without an extension, for example, "my\_file." and "my\_file"** - When enabled, files without an extension will be allowed. If file type verification is enabled, this field will be unchecked and disabled because files without an extension do not have a valid type.
-   **Block any file with an extension that does not match the underlying file type** - When enabled, Appian will analyze the file contents of uploaded files to determine the type of the file. If Appian successfully identifies the file type and the type does not match the extension, the file will be blocked regardless of the configured extension list. If the underlying file type or the file type associated with the extension cannot be determined, the extension will be trusted and checked against the extension list above.
-   **Apply above settings to contents of compressed files** - If checked, Appian will inspect the contents of .zip and similar files and block if they violate the rules above

**Note:**  Appian applies these settings exclusively to files uploaded via the [File Upload component](File_Upload_Component.html). Files uploaded to Appian through other methods do not use these settings.

Furthermore, file extension rules will not be applied to System Administrators.

#### Using file type verification effectively

File type verification can be toggled on and off through the checkbox labeled "Block any file with an extension that does not match the underlying file type". To fully leverage this powerful feature, we recommend enabling it in coordination with a list of extensions to allow rather than a list of extensions to block. We recommend this for two reasons:

1.  It is more secure. It is very difficult to enumerate all possible extensions that could be dangerous to your users.
2.  They work well together. If Appian finds an extension or file type that it does not recognize, it assumes that the file has a valid extension. The purpose of this feature is to allow proprietary file extensions that may not be in our database through. It does mean, however, that users can rename files to a nonsense file extension, like "asdf", to bypass the list of blocked extensions and file type verification. A list of exclusively permitted file extensions avoids this issue.

### Internationalization

The **Internationalization** page allows you to configure the locales available to users, as well as the primary locale, time zone, and calendar that will be the default for all users in the environment.

#### Map translation strings

The **Map Translation Strings** banner and button only appear in the **Internationalization** page if your environment includes record field values that are translation strings. When translation strings are generated from record field values, the translation strings are added to the translation set and Appian generates a system record type to hold the newly generated translation strings.

The system record type for the generated translation strings is automatically synced whenever the relevant translation set is updated, deleted, or edited by importing Excel files. If an error or issue occurs with automatic syncs, use the **MAP** button in the **Map Translation Strings** banner to manually map the translation strings to their corresponding values in the system record type.

**Note:**  Note that translation strings not generated from record field values are not included in the system record type. The system record type for the generated translation strings is related to the record type containing the translation string record field values. The system record type for the generated translation strings supports all Appian supported locales.

#### Locale settings

The locale settings affect the language of Appian-generated text and the format of dates, times, and numbers. By default, it does not affect text that is configured by developers in design objects. To translate the text that is configured by developers in design objects, use a [translation set](translation-set-object.html).

The table below lists the locales that Appian supports.

**Appian Supported Locales**

| Locale | Locale Code | Locale Support |
| --- | --- | --- |
| Appian Mobile/
[Non-SAIL interfaces](Application_Portal.html) | Appian |
| --- | --- |
| **Arabic** | \[ar\] | No | Yes |
| **Chinese** (Simplified) | \[zh\_CN\] | Yes | Yes |
| **Chinese** (Traditional) | \[zh\_HK\] | Yes | Yes |
| **Dutch** (Netherlands) | \[nl\] | Yes | Yes |
| **English** (United Kingdom) | \[en\_GB\] | Yes | Yes |
| **English** (United States) | \[en\_US\] | Yes | Yes |
| **French** (Canada) | \[fr\_CA\] | Yes | Yes |
| **French** (France) | \[fr\_FR\] | Yes | Yes |
| **French** (Switzerland) | \[fr\_CH\] | Yes | Yes |
| **German** (Germany) | \[de\] | Yes | Yes |
| **Greek** (Greece) | \[el\] | Yes | Yes |
| **Hebrew** | \[iw\] | No | Yes |
| **Italian** (Italy) | \[it\] | Yes | Yes |
| **Japanese** (Japan) | \[ja\] | Yes | Yes |
| **Korean** (South Korea) | \[ko\] | Yes | Yes |
| **Polish** (Poland) | \[pl\] | Yes | Yes |
| **Portuguese** (Brazil) | \[pt\] | Yes | Yes |
| **Russian** (Russia) | \[ru\] | Yes | Yes |
| **Spanish** (Mexico) | \[es\] | Yes | Yes |
| **Swedish** (Sweden) | \[sv\] | Yes | Yes |
| **Thai** | \[th\] | Yes | Yes |
| **Turkish** | \[tr\] | Yes | Yes |

##### Enabled locales

The enabled locales are the locales available for users to select as their [user locale](Settings_Page.html#general).

The user locale affects:

-   The language of Appian-generated text, like the text in Appian Designer and the Admin Console.
-   The format of dates, times, and numbers.

If you use a [translation set](translation-set-object.html) to translate your applications, the user locale can also affect the interface text that displays to end users. For example, you can use translation sets to translate instructions, labels, and tooltips in your interface. If you've provided translations in the user locale of your end users, they will see the translated interface text in their user locale.

To enable a locale, select it from the **Enabled Locales** dropdown, then click **SAVE CHANGES**.

When enabling locale settings, consider:

-   Appian must have at least one locale enabled. If no locales are selected, you must enable at least one locale before you can save your changes.
-   For Appian Mobile applications, start and task forms appear in the locale preference set in Appian, News feed entries appear in the locale they were entered, and the remaining aspects of the mobile application, such as button names and titles, are determined by the device's language setting. The device's language setting does not need to be enabled as a locale in Appian to translate the button names correctly.
-   The [Process Modeler](process-model-object.html#overview) is translated to the developer's preferred locale, except for the following areas: the node and smart service palette, the font palette, and some validation messages.
-   When locale is set to Arabic, the interface displays from right-to-left rather than left-to-right and default alignment for interface components and grid columns is right rather than left.
-   Non-SAIL interfaces used in ([Application Portal \[Deprecated\]](Application_Portal.html)) support all languages except Arabic and Hebrew.

##### Disabling locales

To disable a locale, remove the check from the corresponding entry in the **Enabled Locales** dropdown list.

If a user's preferred locale is set to a locale you have disabled, the primary system locale for the environment displays to the user instead. Users then can select a new preferred locale from one of the remaining locales that are enabled for your environment at any time.

##### Selecting a primary locale

To specify a default locale for your environment to use for all users that have not selected their own preferred locale, select a locale from the **Primary Locale** dropdown list. Only enabled locales are listed here.

##### Forcing system-wide locale settings

To force all users in the environment to use the primary locale regardless of user preferences, select the **Always override users' selected locale** checkbox.

**Note:**  If your environment uses [translation sets](translation-set-object.html) to translate applications, do not enable the **Always override users’ selected locale** option. If this option is enabled, all users will see user display text in the primary system locale, regardless of their selected user locale.

#### Date and time settings

The preferred locale setting governs the format of dates and numbers that are displayed by the system. For example, if the preferred locale is set to **English (US) \[en\_US\]**, the date is displayed with the month preceding the day. The same date, when the preferred locale is set to **Spanish \[es\]**, is displayed with the day preceding the month.

##### Display formats used by default locales

The following table lists the date and time formats used when a certain default locale is selected (or is the only enabled locale).

| Preferred Locale | Date and Time Format | Example |
| --- | --- | --- |
| US English (en\_US) | Month Day, Year Hour:Minute AM/PM | Dec 15, 2010 3:32 PM |
| UK English (en\_GB) | Day Month Year Hour:Minute | 15 Dec 2010 15:32 |
| French (ca\_FR) | Year-Month-Day Hour:Minute | 2010-12-15 15:32 |
| Spanish (es\_MX) | Day/Month/Year Hour:Minute | 15/12/2010 15:32 |

Hours displayed in US English use a 12-hour clock with an AM or PM designation.

##### Number formats

The separators between digits in a number change based on the preferred locale. For example, if the preferred locale is **English (US)** \[en\_US\], a comma (**,**) is used as a separator (1,000). If, however, the preferred locale is set to **German \[de\])**, a full stop (**.**) is used as the separator (1.000).

#### Calendar settings

According to the US Naval Observatory, the Gregorian calendar is the internationally accepted civil calendar. This is the default calendar used in Appian.

##### Selecting a primary calendar

To change the default Gregorian calendar to a different calendar, select a calendar from the **Primary Calendar** dropdown list. Options include the calendars listed below.

**Islamic calendars**

You can select from three Islamic calendars, which use slightly different leap year patterns and different means for calculation.

| Type | Leap Years | Description |
| --- | --- | --- |
| 1 | 2 5 7 10 13 16 18 21 24 26 29 | Kūshyār ibn Labbān (11th cent. CE)
Ulugh Beg (15th cent. CE)
Similar to the "Kuwaiti algorithm" |
| 2 | 2 5 7 10 13 15 18 21 24 26 29 | Most Commonly Used |
| Um Al Qura Calendar
تقويم أم القرى | Not applicable | Based on observation or astronomical calculation. |

The leap year patterns are based on the following logic:

-   There are 11 leap years in a 30-year cycle. Noting that the average year has 354 11/30 days and a common year has 354 days, at the end of the first year, the remainder is 11/30ths of a day.

The difference between calendar type 1 and type 2 centers on when the leap day is added.

-   With calendar type 1, whenever the remainder is at least half a day (15/30ths of a day) a leap day is added to that year, reducing the remainder by one day.
-   With calendar type 2, when the remainder exceeds 15/30ths of a day, a leap day is added.

The difference between the Type 1 and Type 2 leap-year schemes are shown in the following table, which lists the remainder for each year in the 30-year cycle.

| Year | Type 1 remainder | Type 2 remainder | Year | Type 1 remainder | Type 2 remainder | Year | Type 1 remainder | Type 2 remainder |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | 11/30 | 11/30 | 11 | 1/30 | 1/30 | 21 | 7/10 \* | 7/10 \* |
| 2 | 22/30 \* | 22/30 \* | 12 | 2/5 | 2/5 | 22 | 1/15 | 1/15 |
| 3 | 1/10 | 1/10 | 13 | 23/30 \* | 23/30 \* | 23 | 13/30 | 13/30 |
| 4 | 7/15 | 7/15 | 14 | 2/15 | 2/15 | 24 | 4/5 \* | 4/5 \* |
| 5 | 5/6 \* | 5/6 \* | 15 | 1/2 \* | 1/2 | 25 | 1/6 | 1/6 |
| 6 | 1/5 | 1/5 | 16 | \-2/15 | 13/15 \* | 26 | 8/15 \* | 8/15 \* |
| 7 | 17/30 \* | 17/30 \* | 17 | 7/30 | 7/30 | 27 | \-1/10 | \-1/10 |
| 8 | \-1/15 | \-1/15 | 18 | 3/5 \* | 3/5 \* | 28 | 4/15 | 4/15 |
| 9 | 3/10 | 3/10 | 19 | \-1/30 | \-1/30 | 29 | 19/30 \* | 19/30 \* |
| 10 | 2/3 \* | 2/3 \* | 20 | 1/3 | 1/3 | 30 | 0 | 0 |

**Islamic calendar epoch**

The epoch defines the starting point of the Calendar (the first day of year one). The following epochs can be selected for Islamic Type 1 and 2 calendars.

| Epoch | Day 1 / Year 1 | Description |
| --- | --- | --- |
| A | 15/July/622 CE/Julian | Thursday or Astronomical Epoch |
| B | 16/July/622 CE/Julian | Friday or Civil Epoch |

##### Setting a system-wide calendar

To override all users' preferred calendar settings with the primary calendar, select the **Always override users' selected calendar** checkbox when selecting the primary calendar.

**Note:**  Selecting the **Always override users' selected calendar** checkbox ensures that user preferences are never enforced. Irrespective of user preferences, the primary setting is then always applied.

#### Selecting a primary time zone

Locale preferences and time zone preferences affect how dates and times may be displayed. For example, a process start time of Oct 12, 2011 at 5:00 pm Eastern is displayed differently for a user with Spanish locale and Central time zone preferences.

| Process start time | User's Preferred Setting | User's Preferred Time Zone | Displayed start time |
| --- | --- | --- | --- |
| Oct 12, 2011 at 5:00 PM Eastern Daylight Time | Spanish - Mexico | Ciudad de México (México) (America/Mexico\_City) | 12/10/2011 at 4:00 PM GMT-05:00 |

As with locales, system administrators must also specify a primary time zone for the environment. At installation, the primary time zone is set to Greenwich Mean Time (GMT). To specify another primary time zone for the environment, select a time zone from the **Primary Time Zone** dropdown list. This recommended list is based on the selected locale. System administrators can override the default list of recommended time zones or add a list for a new locale by modifying the `custom.properties` file.

To override all users' preferred time zone settings with the primary time zone, select the **Always override users' selected time zone** checkbox.

When selecting a Continental US time zone, we recommend using the following settings.

-   Eastern - America/New\_York
-   Central - America/Chicago
-   Mountain - America/Denver
-   Pacific - America/Los\_Angeles

A process model can take a specific time zone, which is used by each process spawned from the model. Alternatively, models can be configured to use the time zone preference of the user who starts the process model. This is set in the process model's properties.

**Note:**  Selecting the **Always override users' selected time zones** checkbox ensures that user preferences are never enforced. Irrespective of user preferences, the primary setting is then always applied.

### Mobile

The **Mobile** page allows you to manage settings for your organization's mobile devices:

-   **Enable Push Notifications** - Push notifications are only available on Appian Cloud and are encrypted end-to-end. The default is that push notifications are enabled.
-   **Enable Offline Mobile** - When offline mobile is enabled, data may be stored on mobile devices to support offline use. The default is that offline mobile is enabled. Encryption of data stored on devices relies on the mobile operating system's native encryption capabilities. Data is encrypted by default on all iOS devices. Some Android devices don't encrypt data by default. Go to the security settings on your Android device to enable encryption.
-   **Enable Location Capture** - This feature allows designers to configure any task to capture user location when submitted from the mobile application. For location to be included with the submitted form, users are required to grant location access to the application. The default is for location capture to be enabled.
-   **Prompt Users to Download App** - Displays a redirect page to encourage users to open links in the native mobile application (if already installed), or to install the application. The logo and the button accent color can be configured by changing the **Logo** and **Accent Color** on the [**Branding**](#branding) page.

    ![/Appian Mobile  Redirection](images/Appian_Mobile__Redirection.jpg)

    -   **iOS App Download Link** - Download URL for the iOS application. The default URL points to the Appian Mobile iOS application on the iOS App Store.
    -   **Android App Download Link** - Download URL for the Android application. The default URL is the Appian Mobile Android application on the Google Play Store.

        **Note:**  The redirect page will not be displayed from the Safari browser running on [iPadOS](https://www.apple.com/ipados/ipados-preview/), due to a change made by Apple that makes Safari running on an iPad indistinguishable from Safari running on a desktop.

-   **Require Minimum iOS App Version** - Should Appian iOS apps that connect to this server be required to be at or above a certain version? The default is that there is no minimum version.
    -   **Minimum iOS App Version** - The minimum version number for an Appian iOS app that can connect to this server.
-   **Require Minimum Android App Version** - Should Appian Android apps that connect to this server be required to be at or above a certain version? The default is that there is no minimum version.
    -   **Minimum Android App Version** - The minimum version number for an Appian Android app that can connect to this server.

### Permissions

The **Permissions** page allows you to control user actions to various actions on Tempo.

#### User profile

The **User Profile** section allows you to specify what information users are allowed to update from their user profiles, and whether users will be able to see the profile details of other users.

##### Editable fields

The fields that are set to be not editable here are displayed but disabled to users in their user profiles. Each checkbox on the page corresponds to a set of user profile fields as follows:

-   **Profile Photo** - Profile photo
-   **Cover Photo** - Cover photo
-   **Name** - First name, middle name, nickname
-   **Email** - Email address
-   **Phone numbers** - Office telephone, mobile telephone
-   **Location** - City, state, country
-   **Supervisor** - Supervisor
-   **Title** - Title
-   **Blurb** - Blurb

##### Default user profile visibility

If this option is selected (the default) users will be able to see the [profile details](User_Profile_Visibility.html) of a user if that user's role map has no viewers configured and notification emails sent by Appian will include users' display names. If unselected, no users will see that user's details unless they are explicitly added in the viewers role of that user and notification emails sent by Appian will only include users' usernames, not their display names. Regardless of the value given for this property, if the viewers role is non-empty, only those users set in the viewers role will be able to see that user's profile details.

#### Quick apps

**Note:**  The [Quick Apps Designer](Quick_Apps_Designer.html) is deprecated and will be removed in a future release of Appian.

Update Quick Apps settings on the **Permissions** page in the Admin Console. This section contains the configurations to enable Quick App creation.

##### Add users to the quick app creators role

This link opens the Quick App Creators group. Adding users to this role gives them access to the [Quick Apps Designer (Deprecated)](Quick_Apps_Designer.html).

##### Quick apps data source

The data source chosen in this dropdown is the location where tables will be generated and updated for new Quick Apps. No Quick Apps can be created until a value is selected here.

Changing this value will only affect new Quick Apps. Any existing Quick Apps will remain connected to the data source selected at the time they were created, even when the Quick App is updated from the Quick Apps Designer.

**Note:**  The Appian user must have the following permissions to the connected data source for Quick Apps to work correctly: CREATE, ALTER, DROP, INSERT, UPDATE, and DELETE.

#### Error messages

The Error Messages setting allows you to control the level of technical detail that you want to include in error messages that your basic users may encounter when working with expressions, interfaces, views, or actions. System administrators, and basic users in the (system) Designer group, will always see detailed error messages when working with these objects and components. Setting options are enabled or disabled; the default setting is enabled.

##### Detailed error messages

Enabling this setting provides basic users with detailed error messages that may include system information and object-specific information, like object references and details about why the expression error occurred. For example, the detailed error message below includes information about the expression error, the error type ID, the affected expression rule and parameter, and the code line where the error occurred.

![Error Message Detailed](images/Error_Message_Detailed.png)

##### Simplified error messages

Disabling this setting prevents basic users from having access to unwanted technical information. Instead, they will see a simplified error message that includes an identifier and instructions to contact the application administrator as shown below.

![Error Message Simplified](images/Error_Message_Simplified.png)

The application administrator should provide the system administrator with the Error Message Identifier so they can use it to view further details about the error in the [Design Error log](Logging.html#design-error-log).

**Note:**  Detailed error messages are always logged in the `design_errors.csv` log.

#### Tempo

This section contains the configurations to control Tempo access.

##### Edit the tempo users group

This link opens the [Tempo Users group](User_Roles.html#tempo-user-role). By default, all users can access Tempo. Removing members or membership rules from this group will prevent those users from accessing Tempo.

#### Process HQ

This section allows you to control whether AI-powered features are available in Process HQ. When enabled, the following features leverage [AI Copilot](appian-ai-copilot.html) in Process HQ:

-   [AI Copilot for data fabric](allow-users-to-build-reports.html#ai-copilot-for-data-fabric)
-   [AI Copilot for reports](allow-users-to-build-reports.html#ai-copilot-for-reports)
-   [Suggested views](process-views.html#create-a-view)
-   [Suggested KPIs](process-custom-kpis.html#create-a-kpi)
-   [AI-generated insight summaries and recommendations](collaborate-on-insight.html#add-a-description-to-a-saved-insight)
-   [Ad hoc event detection](common-preparations.html#remove-ad-hoc-events)

These features are powered by Appian's [private AI](private-ai.html). Review additional [requirements for using AI in Appian](security-compliance.html).

To [enable users to access Process HQ](processhq.html#access-process-hq), add them to the appropriate groups:

-   [Process HQ Users](System_Groups.html#process-hq-users)
-   [Data Fabric Report Creators](System_Groups.html#data-fabric-report-creators)
-   [Data Governors](System_Groups.html#data-governors)

### Portals

On the **Portals** page, you can choose whether to add a UUID to all portal URLs created in your environment. Adding UUIDs to portal URLs allows you to restrict access to portals that are intended for development and testing. Only users that you share the URL with will be able to easily find the portal, allowing you to test and develop your portals with a selective audience.

This setting is selected by default on all development and testing environments, but not selected for production environments. We recommend keeping the default selection for your environment.

When you deploy to a different environment, the portal automatically uses the URL settings for the new environment. For example, when you deploy a portal from a testing to a production environment, the portal in the testing environment will have a UUID but the portal in the production environment will not.

Below is a comparison of two portal URLs with and without UUIDs:

![screenshot comparing URL with UUID and URL without UUID](images/portal-uuid-comparison-annotated.png)

To preview your portal URL, check out **Configurations** in your [portal object](portal-object.html#configurations).

### Plug-ins

**Note:**  

All [plug-ins](extending-appian.html) are use-at-your-own-risk, and their functionality is not guaranteed by Appian. All plug-ins should be tested thoroughly. [Read our full disclaimer for more information](extending-appian.html#plug-in-support-disclaimer).

For more details about individual plug-ins, visit the [Appian AppMarket](https://community.appian.com/b/appmarket).

The **Plug-ins** page lists [all plug-ins](extending-appian.html) that are available in the environment.

In the **Plug-ins** page, you can:

-   [Add a new plug-in](#add-a-new-plug-in) to the environment.
-   [Compare versions of a plug-in across environments](#compare-a-plug-in-across-environments).
-   [Download plug-ins](#download-plug-ins) from the environment.
-   [Enable or disable the Encryption Service for the plug-in](#enable-or-disable-the-encryption-service).
-   View the dependents of a plug-in.
-   [Update an AppMarket plug-in](#update-an-appmarket-plug-in) to the latest AppMarket version.
-   [Revert an AppMarket plug-in](#revert-an-appmarket-plug-in) to the previous version installed in this environment.
-   [Delete a plug-in](#delete-a-plug-in).
-   View the following details for each plug-in:
    -   **Name**: The name of the plug-in.
    -   **Version**: The version number of the plug-in. For more information, see the [View version status](#view-version-status) section.
    -   **Category**: The category of the plug-in, **Advanced** or **Standard**. Learn more about [Advanced Plug-ins](advanced-plug-ins.html).
    -   **Description**: The description of the plug-in as written by the plug-in creator.
    -   **Installed On**: The date that the current version of the plug-in was installed.
    -   **Modules**: The modules that are included in this plug-in. The name of each module is categorized by its type: Component, Connected System, Function, Function Category, Smart Service, Data Type, or Servlet.

This plug-in information is provided by the plug-in manifest file when you install a plug-in.

If a user changes the access to a plug-in, then there will be an [audit log message](Logging.html#admin-console) that will track the username of the user making the change, the previous value, and the new value.

**Tip:**  You can also view the plug-in list and compare plug-ins across environments in the [**Objects**](objects-view.html) view in Appian Designer.

#### Add a new plug-in

For Appian Cloud and self-managed customers, System Administrators can deploy plug-ins to their environments.

Appian Cloud customers:

1.  In the toolbar, click **ADD NEW PLUG-INS**.
    -   If adding a plug-in via direct upload, go to step 2.
    -   If using a plug-in from the AppMarket, go to step 4.
2.  Select **Direct Upload** to upload a plug-in that has been approved according to the [Cloud Deployment Guidelines](Shared_Components.html#support-guidelines).
3.  Upload the plug-in from disk and select **DEPLOY**.
4.  Select **Appian AppMarket Plug-ins** to deploy open source plug-ins that are approved by Appian for Cloud and self-managed customer use.
5.  Enable the **Hide unsupported plug-ins** toggle to only view plug-ins available for your Appian Cloud site. Otherwise, you may see plug-ins that are not supported in your Appian Cloud site, with a message clarifying what minimum Appian site version is required for deployment.
6.  In the **Available Plug-ins** list, select a plug-in.
7.  Click **DEPLOY**.

Self-managed customers:

1.  In the toolbar, click **ADD NEW PLUG-INS**.
2.  Select **Direct Upload** to upload a plug-in.
3.  Upload the plug-in from disk and select **DEPLOY**.

**Tip:**  Although self-managed customers cannot deploy plug-ins directly from the Appian AppMarket, they can download the plug-in file from a browser, and then use **Direct Upload**. Additionally, private plug-ins do not require any approval for deployment.

When you add a plug-in from the AppMarket or Direct Upload, it deploys immediately to your environment. If the plug-in fails to deploy, check the [Application Server logs](Appian_Cloud_Web_Administration.html#Log_Files) for more information.

#### View version status

For Appian Cloud customers, the system automatically verifies your installed plug-ins against the applications listed in the AppMarket. The system then displays the results of this verification as version status indicators in the **Version** column of the plug-ins list.

Version statuses include:

| Version Status | Description | Indicator Icon |
| --- | --- | --- |
| **Not listed in AppMarket** | The system could not find the plug-in listed in the AppMarket. This means that either the plug-in was removed from the AppMarket or it was custom built by your organization. If your organization did not build this plug-in, we recommend removing it from your environment. |  |
| **Update available** | The version installed in your environment is different than the latest version of the plug-in listed in the AppMarket. We recommend updating the plug-in to take advantage of security updates and enhancements. |  |
| **Up-to-date** | The version installed in your environment matches the latest version of the plug-in listed in the AppMarket. |   |

To filter the plug-ins list by version status, use the **VERSION STATUS** filter in the toolbar.

#### Download plug-ins

To prepare for a deployment using the [deployment APIs](Deployment_Rest_API.html) you may need to download plug-ins from your current environment. Select the plug-ins for the deployment and click **DOWNLOAD SELECTED**. This generates a ZIP file compatible with the native APIs to use for your deployment.

#### Enable or disable the Encryption Service

The Encryption Service allows the plug-in to encrypt or decrypt values of type `Encrypted Text`.

By default, no plug-ins are allowed to access the Encryption Service. An administrator must explicitly grant access to each plug-in.

To enable Encryption Service for a plug-in:

1.  In the plug-ins list, select a plug-in.
2.  In the toolbar, click **ENABLE ENCRYPTION SERVICE** or **DISABLE ENCRYPTION SERVICE** as appropriate.

Once access is granted, a shield icon displays next to the plug-in name, and all modules within the plug-in may use the Encryption Service.

To learn more about encryption, see [Encrypted Text](Appian_Data_Types.html#encrypted-text).

#### Compare a plug-in across environments

This option is only available if you have enabled [connected environments](#infrastructure).

To compare a plug-in across environments:

1.  In the plug-ins list, select a plug-in.
2.  In the toolbar, click **COMPARE ACROSS ENVIRONMENTS**.
3.  Select another environment where you want to compare the plug-in. The comparison report opens in a new window or tab.

Learn more about [comparing objects across environments](compare-deployment-packages.html).

#### Manage your plug-ins

We recommend managing your plug-ins carefully to take advantage of the latest enhancements, address security concerns, and keep your applications running smoothly. This can mean updating plug-ins to the latest AppMarket version, reverting plug-ins, or deleting plug-ins that are no longer used or supported.

To determine which the actions are needed to manage your plug-ins:

1.  Create a list of plug-ins for which updates are available.
2.  Prioritize the list as follows:

    | Priority | Update Criteria |
    | --- | --- |
    | First Priority | Plug-ins that communicate with other systems. |
    | Second Priority | Plug-ins that interact with your most crucial applications. |
    | Third Priority | Plug-ins with the fewest objects that depend on them. |
    | Last Priority | Any other plug-in with an available update. |

3.  Determine whether to update or delete a plug-in, using the following logic:

[![images/update-plug-ins-diagram.png](images/update-plug-ins-diagram.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img181)

[![](images/update-plug-ins-diagram.png)](#_)

##### Update an AppMarket plug-in

To update an AppMarket plug-in to the latest version:

1.  In the plug-ins list, select an AppMarket plug-in.
2.  In the toolbar, click **UPDATE**.

Make sure to regression test the updated plug-in with your application and environment. If you need to revert the AppMarket plug-in for any reason, you can do so within three months of the update.

##### Revert an AppMarket plug-in

You can only revert to the previously installed version of the AppMarket plug-in, and you can only revert within three months of updating the plug-in before the previous version is deleted.

To revert the plug-in to the previous version installed in this environment:

1.  In the plug-ins list, select an AppMarket plug-in.
2.  In the toolbar, click **REVERT**.

##### Delete a plug-in

To delete an AppMarket or directly uploaded plug-in:

1.  In the plug-ins list, select a plug-in.
2.  In the toolbar, click **DELETE**. The system identifies any design objects that depend on the plug-in you want to delete.
3.  (Optional) Resolve object dependencies before continuing.
4.  Click **DELETE**.

You can track deleted plug-ins in the [deletions log](Logging.html#deletions).

### Typefaces

The **Typefaces** page allows you to configure a custom typeface to be used for [sites](Sites.html) and [portals](portals-home.html) on both web and mobile. The default typeface is Open Sans. See [Custom Typefaces](configuring_site_typefaces.html) for more information.

Up to nine typefaces can be added, but only one can be active at a time.

To add a custom typeface:

1.  Click **Add Typeface**.
2.  Enter the name of the typeface.
3.  Add WOFF, WOFF2, OTF, or TTF files for each weight.
4.  (Optional) Additional sets of files, called language groups, can also be added from this dialog.
5.  Click **OK**.

To select an active typeface:

1.  In the typefaces grid, select a typeface in the **Active** column. The preview updates to show the selected typeface.
2.  Click **SAVE CHANGES** to make your selection active.

To view the updated typeface:

-   Site and interface objects: Refresh the page.
-   Portals: Republish the portal.
-   Appian Mobile: Sign out and sign back in.

### User start pages

The **User Start Pages** page allows you to configure which pages users start on when they first log into Appian or if they navigate to the base Appian URL with or without the application context (for example acme.appian.com or acme.appian.com/suite). Note that if a user navigates to a specific environment (for example Tempo) or page (for example a record view), they will not be redirected to their configured start page.

You can add rows to the grid to configure different groups of users to have different start pages. Only public and restricted groups can be selected, not personal groups. If a user belongs to multiple groups that have different start pages configured, his start page will be the highest one in the grid that corresponds to a group that he belongs to.

You can also configure the **Default Start Page**, which is the start page for all users who don't belong to any of the groups configured in the grid.

To minimize data entry errors, copy and paste start page URLs directly instead of typing them in manually.

Clicking the **SAVE CHANGES** button will cause the configured start pages to take effect in the system.

An audit log captures all historical values in this page.

See also: [Appian Admin Console Logging](Logging.html#admin-console)

## Authentication

The following pages relate to authentication administration. Unless otherwise indicated in the setting section, these settings do not apply to users who authenticate through [SAML](SAML_for_Single_Sign-On.html).

See also: [Authentication](Authentication.html).

### Appian authentication

The **Appian Authentication** page allows you to control password strength requirements and password expiration policies.

#### Password storage

Appian hashes passwords using an industry standard hashing algorithm and only stores the hashed values of passwords. When passwords are entered, they are similarly hashed using the same algorithm, and the result is compared against the stored value.

#### Password Format

The **Password Format** section allows setting the following:

-   **Minimum Password Length** - The minimum number of characters allowed in a password. The default is `1`.
-   **Minimum Number of Alphabetic Characters** - The minimum number of characters from the English alphabet (`A-Z` and `a-z`) allowed in a password. The default is `0`.
-   **Minimum Number of Lowercase Characters** - The minimum number of lowercase characters from the English alphabet (`a-z`) allowed in a password. The default is `0`.
-   **Minimum Number of Uppercase Characters** - The minimum number of uppercase characters from the English alphabet (`A-Z`) allowed in a password. The default is `0`.
-   **Minimum Number of Numeric Characters** - The minimum number of numerals (0-9) allowed in a password. The default is `0`.
-   **Minimum Number of Special Characters** - The minimum number of special characters allowed in a password. The default is `0`. Special characters include: ``! " # $ % & ' ( ) \* + , - . / : ; < = > ? @ [ \ ] ^ _ \` { | } ~``
-   **Minimum Password Age** - The number of days a user must wait between password changes, where one day is defined a 24 hour period and not a calendar day.
-   **Prevent Reuse of Previous Passwords** - How many of their previous passwords should a user not be able to choose as a new password? Valid values are between `0` and `24`, inclusive. The default is `1`, meaning that the user's current password may not be reused but that other previous passwords may be reused.
-   **Passwords cannot contain usernames** - When checked, the user's password cannot contain their username. Unchecked by default.

The configurations in this section apply only to passwords managed by Appian and do not apply to accounts that authenticate with [LDAP](Authentication.html#ldap-authentication) or [SAML](Authentication.html#saml-authentication).

For information and details regarding the configuration of the Remember Me Authentication, see also: [Remember Me Authentication](Authentication.html#remember-me-authentication)

Appian Cloud installations have different default settings than self-managed installations. The following default password policies are in place for Appian Cloud users:

-   Passwords must be at least `7` characters long.
-   Passwords must contain at least `1` numeric character.
-   Passwords must contain at least `1` letter.
-   Passwords must be different from the previous `4` passwords used.

#### Remember Me

The **Remember Me** section allows you to toggle the Remember Me password setting on or off. Toggling this setting on allows you to configure the length of time that a user will remain signed in without having to enter their username and password.

By default, this setting is configured so that users must provide their username and password once every two weeks for each browser on which they access Appian.

This setting does not apply to Administrators. Administrators are automatically logged out when their session expires, which is based on the [Session Timeout](#session-timeout) period.

This setting only applies to users who authenticate via Appian authentication or LDAP. For more information about enabling Remember Me for SAML, see [SAML for Single Sign-On](SAML_for_Single_Sign-On.html#remember-me).

See also: [Remember Me](Authentication.html#remember-me-authentication) on the Authentication page.

#### Session Timeout

-   **Idle Session Timeout (Minutes)**: The number of minutes that a user can remain inactive before the system signs them out. Users will be warned five minutes before their session expires. After two more minutes, if the user remains inactive, they will be signed out. The minimum valid value is 10 minutes and the maximum valid value is 480 minutes (8 hours).

**Note:**  This setting also applies to user's sessions who authenticate through [SAML](SAML_for_Single_Sign-On.html) or [OpenID Connect](OpenID_Connect_User_Authentication.html).

#### Password Expiration

The **Password Expiration** section allows setting the following:

-   **Expire Passwords** - Should passwords expire after a certain amount of time? The default is that passwords do not expire.
-   **Maximum Password Age** - The number of days after which a password expires and must be reset.
-   **Warn Users Before Password Expiration** - Should users see a warning when they log in when their password is about to expire? The value must be lower than the number you set for **Maximum Password Age**. The default is that there is no warning period.
-   **Password Expiration Warning Period** - The number of days before a user's password expires where they will be warned about their impending password expiration.
-   **Expire Temporary Passwords** - Should auto-generated passwords, such as those generated when a new user account is created or when an administrator resets a user's password, expire? The default is that they should expire.
-   **Maximum Temporary Password Age** - The number of minutes after which a temporary, auto-generated, password expires and is no longer valid. When a temporary password expires, the user is not allowed to log in and must request that an administrator reset the password. The default is `10080` minutes, which is one week.
-   **Minimum Password Age** - The number of days a user must wait after changing their password before they may change it again. The default is `0`. This setting does not affect temporary passwords or the ability for an administrator to reset a user's password.

When a password expires, the user must change the password before they are allowed to proceed past the Appian log-in page.

The configurations in this section apply only to passwords managed by Appian and do not apply to accounts that authenticate with [LDAP](Authentication.html#ldap-authentication) or [SAML](Authentication.html#saml-authentication).

Appian Cloud installations have different default settings than self-managed installations. The following default password policies are in place for Appian Cloud users:

-   Passwords expire every `90` days.
-   Users are notified regarding password expiration `7` days before it happens.

Initial passwords for Appian Cloud are temporary passwords. The system prompts users to reset their password immediately after logging into Appian Cloud.

#### Forgot password

The **Forgot Password** section allows setting the following:

-   **Enable Forgot Password from Sign-In Page** - Should users be able to reset their passwords from the sign-in page? If enabled, users will be able to reset their passwords by clicking the "Forgot your password?" link on sign-in page and following the steps provided.

-   **Password Reset Link Duration (Minutes)** - How long should password reset links be valid? A user following an expired link will need to re-enter their username to receive a new link before they can reset their password. When this value changes, the change is applied retroactively to existing links.

When this feature is enabled, only users that meet the following requirements will be able to reset their passwords:

-   The user does not authenticate through LDAP or SAML.
-   The user is not deactivated.
-   The user's password is [old enough](#password-format) to be reset.
-   The user has a valid e-mail address.

If either SAML or LDAP are enabled for all users, the **Enable Forgot Password from Sign-In Page** checkbox will be disabled and unchecked because when these authentication features are enabled, Appian does not have control over users' credentials. If, however, only some users authenticate through LDAP or SAML, the feature can be enabled, and the "Forgot your password?" link will appear on the sign-in page for all users.

Use [import customization files](Managing_Import_Customization_Files.html) to change the value between environments with different authentication configurations.

Use of this feature can be audited through the [Forgot Password Requests](Logging.html#forgot-password-requests) and [Password Resets](Logging.html#password-resets) audit logs.

#### Account locking

User accounts that have difficulty supplying the proper credentials are temporarily locked (prevented from making a login attempt) when the user (or someone attempting to log in as the user) tries too many incorrect passwords. The system does this by keeping track of the number of failed login attempts for each account. The failed login count is reset automatically after some time has passed from the last failed attempt. This prevents the user from accumulating a large number of failed login attempts over a long period of time.

The **Account Locking** section allows setting the following:

-   **Lock Accounts After Failed Logins** - Should accounts be locked after repeated failed login attempts? The default is that accounts are locked.
-   **Maximum Password Attempts** - How many failed login attempts should it take for an account to be locked? The default is `6`.
-   **Password Attempt Reset Duration** - How many minutes after a failed login attempt should the counter for the number of failed logins be reset? The interval you specify should be long enough to ensure that a sufficient number of failed attempts accumulate before the counter is reset, should someone attempt to guess at a password by repeatedly submitting random values. The default is `30` minutes.
-   **Unlock Accounts Automatically** - When an account is locked due to failed login attempts, should it be automatically unlocked after a certain time period? If automatic unlocking is disabled, accounts will remain locked until an administrator manually unlocks them. The default is that accounts should be automatically unlocked.
-   **Lock Duration** - When an account is locked due to failed login attempts, how many minutes should it be locked for? The default is `30` minutes.
-   **Limit Number of Concurrent Sessions Per User Account** - Should users only be allowed to have a certain number of sessions active at the same time? The default is that the number of concurrent sessions per user is not limited.
-   **Maximum Concurrent Sessions** - How many sessions should a user be able to have open at the same time before they are no longer allowed to log in again?
-   **Deactivate Users Who Have Not Logged In Recently** - Should users who have not logged in recently be deactivated? The default is that accounts are not deactivated due to inactivity.
-   **Idle User Deactivation Duration** - How many days after their last successful login should a user account be deactivated.

    **Note:**  This setting also applies to sessions of users authenticating through [SAML](SAML_for_Single_Sign-On.html).

The failed login count is reset if the account is unlocked by an administrator.

When you specify a deactivation interval, that same interval must elapse before user accounts begin to be deactivated. For example, if you specify an inactivity deactivation interval of 90 (90 days) on April 1st, a user account that does not successfully log in between April 1st and June 30th is deactivated. In this scenario, a user account that has not logged in since January 1st also remains active until June 30th, as you did not activate the policy until 90 days after the user account became inactive.

User accounts that are deactivated due to inactivity are listed at the INFO level in `db_PE_yyyy-mm-dd_hhmm.log` in the `<APPIAN_HOME>/logs/` directory.

The system user **Administrator** is never automatically deactivated.

Appian Cloud installations have different default settings than self-managed installations. The following default password policies are in place for Appian Cloud users:

-   Users who have not logged in are considered inactive after a period of 90 days.

Activity from the Appian Mobile applications does not count towards the number of active sessions a user has and the number of requests from the mobile applications.

See also:

-   [User Deactivation Logging](Logging.html#user-deactivations)
-   [Reactivating Users](User_Management.html#reactivate-users)
-   [Unlocking Users](User_Management.html#unlock-users)

#### Multi-factor authentication

Appian can be configured to require multi-factor authentication (MFA) for users that log in with Appian authentication. This adds an extra layer of security to the login process since users must provide their Appian username and password, and a custom verification code.

Before you enable MFA, the [Outbound Email Toggle](#outbound-email-toggle) must be enabled so Appian can send verification codes to users. Also note that when MFA is enabled, users cannot reset their own password. Instead, they will need to request that a system administrator do it for them.

In the **Multi-Factor Authentication**, you can enable MFA using the following settings:

-   **Enable Multi-Factor Authentication** - Select this checkbox to require a group of users to log in using MFA. By default, this checkbox is deselected.
-   **Authentication Group** - Select the [group](Group_Management.html) that is required to log in using MFA. These users must be configured to use Appian authentication. MFA will not apply to users configured to use [SAML](SAML_for_Single_Sign-On.html), [OpenID Connect](OpenID_Connect_User_Authentication.html), [PIEE](PIEE_User_Authentication.html), or [LDAP](#ldap-authentication).

When MFA is enabled, users are required to enter their Appian username and password. Then, the user will receive an email with a verification code that must be entered to complete the login process. This code is valid for 5 minutes, after which a new code must be requested.

If the user requests a new verification code, the existing verification code will be invalidated.

Users only have three chances to enter a verification code before the code is invalidated. Each incorrect entry of the code counts towards [Account Locking](#account-locking).

Users are also limited to three verification code requests per fifteen-minute window to maintain sign-in performance and security.

Use [import customization files](Managing_Import_Customization_Files.html) to change the value between environments with different authentication configurations.

#### Terms of service

The **Terms of Service Agreement** section allows you to set a message on the sign-in page that users must click to accept before entering the system.

-   **Require Users to Accept Terms of Service Before Logging In** - Should users be required to accept terms of service before accessing the site?
-   **Terms of Service** - The message that should appear on the sign-in page.

When you change the terms of service, all [remember me authentication](Authentication.html#remember-me-authentication) sessions will be invalidated and users will need to input their username and password the next time they sign-in to Appian.

### LDAP authentication

The **LDAP Authentication** page allows you to configure Appian to authenticate users against an external directory server, like Microsoft Active Directory, via LDAP rather than its native authentication. If your organization requires the use of self-signed certificates with LDAPS, Appian will automatically use your [uploaded certificates](#trusted-server-certificates) when establishing an LDAPS connection.

-   **Enable LDAP** - Should Appian use LDAP to authenticate users? When this is not selected, all other fields on this page are disabled.
-   **Servers** - The URLs of the LDAP servers to authenticate against. URLs must start with "ldap://" or "ldaps://" and should include the base DN for any query to the LDAP server. Multiple servers will be tried one at a time in the order listed. The base DN must be the same for all servers.
-   **LDAP Server Connection Timeout** - The amount of time, in seconds, that the system will wait when trying to connect to an LDAP server before moving on to the next server in the list. The default is 30 seconds. The timeout must be set to a value between 1 and 300 seconds, inclusive.
-   **Authentication Method** - There are two methods of authenticating via LDAP: "Bind as user" and "Search for user then bind as user".
    -   "Bind as user" means that Appian will take the username and password provided by a user when they sign into Appian and attempt to bind to the LDAP server with those credentials.
    -   "Search for user then bind as user" means that Appian will connect to the LDAP server using a pre-configured set of credentials and search for the user by combining the username they provide with the value of the Search Filter field.
        -   Note that if your configuration uses LDAP User Bind to authenticate with the LDAP server (instead of LDAP over SSL), all user entered passwords are sent to the LDAP server unencrypted.
-   **DN Pattern** - A mapping from the username a user enters when signing in to a distinguished name in the LDAP server. Only available when the "Bind as user" option is selected.
-   **Administrator DN** - The distinguished name of an administrative account in the LDAP server that Appian will use to bind to the LDAP server. Only available when the "Search for user then bind as user" option is selected.
-   **Password** - The password for an administrative account in the LDAP server that Appian will use to bind to the LDAP server. Only available when the "Search for user then bind as user" option is selected.
-   **Search Filter** - A mapping from the username a user enters when signing in to an LDAP search query. Only available when the "Search for user then bind as user" option is selected.
-   **Username Attribute** - The name of the LDAP attribute that corresponds to an Appian username.
-   **E-mail Attribute** - The name of the LDAP attribute that holds the user's e-mail address.
-   **First Name Attribute** - The name of the LDAP attribute that holds the user's first name.
-   **Last Name Attribute** - The name of the LDAP attribute that holds the user's last name.
-   **Create Users Upon Login** - If a user exists in the LDAP server but does not exist in Appian, should the user be auto-created the first time they sign into Appian?
-   **Use lowercase usernames for Appian user lookup** - Should Appian lowercase the username that comes back from the LDAP server when looking up the Appian account? Select this option only if all of your usernames only contain lowercase letters.
-   **Restrict LDAP Authentication to a Specific Group** - Should all users authenticate via LDAP or only a subset of users?
-   **Appian LDAP Group** - If only a subset of users should authenticate via LDAP, which group of users should authenticate via LDAP? If a user is a member of the Appian SAML group and the Appian LDAP group, they must authenticate with SAML, not LDAP.

In order to prevent you from locking yourself out of Appian, if your configuration requires that the user you are currently logged in as must authenticate via LDAP then you must successfully test your configuration using the "Test" button before saving it.

It is not possible to configure Appian such that a given user may authenticate with either LDAP or native Appian authentication. Each account may only authenticate against one or the other.

LDAP authentication settings cannot be [imported or exported](#import-export-admin-console) from the Admin Console.

### Maintenance window

The **Maintenance Window** page allows you to set a period of time to deploy application updates to your environment and write a message to display in a banner at the top of your site. During maintenance windows, all users except for system administrators will be logged out of the site, and a banner will display at the top of your site's login page for web and mobile.

### Sign-in page

You can customize the Appian sign-in experience to let users choose from available authentication methods and also provide links to information hosted outside Appian.

#### Identity providers

If you have different types of users accessing Appian through different [single sign-on identity providers](#single-sign-on), you can set up unique sign-in pages for each user type. You must have at least one [OpenID Connect](#openid-connect) or [SAML](#saml-authentication) provider configured to set up additional sign-in pages.

To enable different sign-in pages, do the following:

1.  Select **Have users choose their sign-in page**.
2.  For **Identity Provider Choices Prompt**, enter instructions to help users pick the correct identity provider option.
3.  In the Identity Provider Choices section, do the following for each option you want to display:
    1.  Click **Add Identity Provider Link**.
    2.  For **Identity Provider**, select an option from the dropdown.
    3.  For **Label**, enter a description of the type of user that should choose this option.
4.  Click **SAVE CHANGES**.

#### Sign-in page links

The **Sign-in Page Links** grid allows you to add custom links to the sign-in page. The links will appear on the sign-in page in the same order in which they are arranged in the Admin Console.

The maximum number of links is five, and only links that use the `http`, `https`, or `mailto` protocols are allowed.

To add a sign-in page link, do the following:

1.  Click **New Link**.
2.  For **Link Text**, enter the text to be shown to the user.
3.  For **URL**, enter the URL of the resource to open when the link text is clicked.
4.  Click **SAVE CHANGES**.

### Single sign-on

Appian lets you set up one of three options for single sign-on (SSO) with an identity provider: [OpenID Connect](#openid-connect), [PIEE](#piee-authentication), and [SAML](#saml-authentication).

SSO settings cannot be [imported or exported](#import-export-admin-console) from the Admin Console.

#### OpenID Connect

The **OpenID Connect** page allows you to configure Appian to authenticate users with [OpenID Connect](https://openid.net/connect/). OpenID Connect can be used to configure single sign-on.

See [OpenID Connect User Authentication](OpenID_Connect_User_Authentication.html) for an explanation of how to configure connections with OpenID Connect identity providers.

#### SAML authentication

The **SAML Authentication** page allows you to configure Appian to authenticate users against external [SAML identity providers (IdP)](SAML_for_Single_Sign-On.html), like Microsoft ADFS or Shibboleth, rather than against Appian authentication.

##### Configuring SAML settings

See [SAML for Single Sign-On](SAML_for_Single_Sign-On.html) for an explanation of the [global](SAML_for_Single_Sign-On.html#global-settings) and [per-IdP](SAML_for_Single_Sign-On.html#per-idp-settings) settings, as well as instructions for [how to add a SAML identity provider](SAML_for_Single_Sign-On.html#how-to-add-a-saml-identity-provider) for users to authenticate against.

##### Verify My Access

The **Verify My Access** button only appears when you use SAML authentication to sign in to Appian. When it is visible, before you can save your changes, you must verify that you can still sign in. Clicking this button will attempt [SP-initiated sign-in](SAML_for_Single_Sign-On.html#how-saml-works-with-appian) to your identity provider in a new tab. If you successfully sign-in, you will be able to save your changes.

##### Additional configuration details and notes

-   It is not possible to configure Appian to allow a user to authenticate multiple ways. Each user can authenticate through one of the following:
    -   A single identity provider.
    -   Appian authentication.
    -   LDAP.
-   If a user is in multiple [SAML authentication groups](SAML_for_Single_Sign-On.html#authentication-group), the highest identity provider in the list takes precedence.
-   Starting a process model as a web service requires using Appian authentication and is therefore not available to users who are configured to authenticate via SAML.
-   SAML authentication settings cannot be [imported or exported](#import-export-admin-console) from the Admin Console.
-   A user configured to authenticate using SAML cannot be used to call Appian web APIs.
-   Only users in the [OAuth 2.0 SAML Bearer Assertion Users](System_Groups.html#System_Groups.md#oauth-2.0-saml-bearer-assertion-users) system group will use the OAuth 2.0 SAML Bearer Assertion Flow.

##### Security

-   Appian signs its assertions using the SHA-1 hashing algorithm. Some identity providers, such as Microsoft ADFS, require you to specify this when configuring it to integrate with Appian.
-   Appian supports signed, encrypted SAML assertions up to the AES-256 standard. In order to make use of this capability, the environment must be running on an Appian Cloud instance. Otherwise, self-managed environments will need to be running OpenJDK 17.

#### PIEE authentication

The **PIEE Authentication** page allows you to configure Appian to authenticate users against the Procurement Integrated Enterprise Environment (PIEE). PIEE is the primary enterprise procure-to-pay (P2P) application for the Department of Defense and its supporting agencies. PIEE user authentication can be used for single sign-on to procurement-related systems.

See [PIEE User Authentication](PIEE_User_Authentication.html) for an explanation of how to configure PIEE authentication.

### Users

The **Users** page allows you to:

-   Create a new user
-   View an existing user and update their information and avatar
-   Rename an existing user
-   Deactivate and reactivate users
-   Reset user passwords
-   Unlock user accounts
    ![screenshot of the Users page](images/Users_Page_Admin.png)

Users cannot be [imported or exported](#import-export-admin-console) from the Admin Console.

See also: [User Management](User_Management.html)

### Web API Authentication

This page allows you to manage API keys and OAuth 2.0 clients, which can be used to invoke [Appian Web APIs](Web_APIs.html).

#### API keys

The **API Keys** tab allows you to create and manage [API keys](Web_API_Authentication.html#api-key-authentication) and [Service Accounts](User_Roles.html#service-account-role), which can be used to invoke Appian Web APIs. This page allows you to:

-   Create a new API key and/or service account.
-   Deactivate and reactivate API keys.
-   Permanently delete API keys.

![screenshot of the API key page](images/api-key-admin-console-new.png)

##### Creating an API key

To create a new API Key:

1.  In the Admin Console, go to the **Web API Authentication** page.
2.  On the **API Keys** tab, click **Create**.
3.  Enter a unique **Description**.
4.  Select a **Service Account** to associate with the key. To create a new service account:
    -   Click Create Service Account .
    -   Enter a username and click **CREATE**.
        -   **Tip**: "Service Account" will automatically be added to the end of the service account name. See [Service accounts](Appian_Administration_Console.html#service-accounts).
5.  Click **CREATE**.

    ![screenshot of the create api key dialog](images/create_api_key.png)

6.  Copy the **API Key** and store it externally. Appian will never show the value of the API key a second time.
7.  Repeat these steps in each environment, making sure the following are the same in each environment:
    -   API key **Description**.
    -   Service account **Username**.
    -   Service account permissions and group membership.

##### Invalidating API keys

There are three ways to invalidate an API key:

-   **Delete an API key** - This option is permanent. Once an API key has been deleted, it can never be restored.
-   **Deactivate an API key** - For something more temporary, you can deactivate an API key. Inactive API keys can be reactivated in the future to make them work again.
-   **Remove the associated service account from the Service Accounts system group** - This will cause all API keys and OAuth 2.0 clients associated with the service account to stop working. However, if the service account is placed back in the Service Accounts system group, the associated keys and clients will start working again.

#### Appian OAuth 2.0 Clients

The **Appian OAuth 2.0 Clients** tab allows you to create and manage [OAuth 2.0 Clients](Web_API_Authentication.html#oauth-20-client-credentials-grant) and [Service Accounts](User_Roles.html#service-account-role), which can be used to invoke Appian web APIs with the [OAuth 2.0 Client Credentials grant](https://tools.ietf.org/html/rfc6749#section-4.4). This page allows you to:

-   Create a new Appian OAuth 2.0 client and/or service account.
-   Deactivate and reactivate Appian OAuth 2.0 clients.
-   Permanently delete Appian OAuth 2.0 clients.

![screenshot of the OAuth page](images/oauth-clients-admin-console-new.png)

##### Creating an Appian OAuth 2.0 Client

To create a new Appian OAuth 2.0 client:

1.  In the Admin Console, go to the **Web API Authentication** page.
2.  Go to the **Appian OAuth 2.0 Clients** tab.
3.  Click **Create**.
4.  Enter a unique **Description**.
5.  Select a **Service Account** to associate with the client. To create a new service account, click Create Service Account and enter a username.

    **Note:**  "Service Account" will automatically be added to whatever username you enter. See [Service accounts](#service-accounts).

    ![screenshot of the create new OAuth dialog](images/create-new-oauth-client.png)

6.  Copy the **Client ID**, **Client Secret**, and **Token Request Endpoint** values and store them externally. Appian will never show the value of the Client Secret a second time, so that value is particularly important to copy.

![screenshot of the copy secret dialogue](images/copy-client-secret.png)

**Note:**  When creating an Appian OAuth 2.0 client, the client should be tied to a service account with the **same username** and given the **same description** in each environment. OAuth 2.0 clients can only be used for the environment they're created in.

##### Managing Appian OAuth 2.0 Clients

There are three ways to invalidate an Appian OAuth 2.0 client:

-   **Delete an Appian OAuth 2.0 client** - This option is permanent. Once a client has been deleted, it can never be restored.
-   **Deactivate an Appian OAuth 2.0 client** - For something more temporary, you can deactivate an OAuth 2.0 client. Inactive OAuth 2.0 clients can be reactivated in the future to make them work again.
-   **Remove the associated service account from the Service Accounts system group** - This will cause all API keys and OAuth 2.0 clients associated with the service account to stop working. However, if the service account is placed back in the Service Accounts system group, the associated keys and clients will start working again.

#### Mutual TLS

Mutual TLS lets you enforce two-way authentication between clients and Appian when clients invoke [web APIs](Web_APIs.html). The **Mutual TLS** tab lets you upload and manage the trusted client certificates that will be used in the authentication process. The main view of the tab is a grid view of all the client certificates in the system.

This feature is available only in some Appian Cloud environments when the following criteria are met:

-   The web APIs must be available on the public internet.
-   [Inbound VPN](Configuring_Inbound_Access_Over_VPN.html) is not enabled.
-   [Inbound PrivateLink](Access_Appian_Cloud_instance_using_AWS_PrivateLink.html) is not enabled.

Contact Appian Support for further questions about enabling mTLS for your site.

##### Adding a client certificate

Client certificates must be uploaded to Appian for web API requests to use mutual TLS. You can upload a maximum of 250 client certificates.

To upload a new client certificate:

1.  Click **Add Trusted Client Certificate**.
2.  On the Add New Client Certificate dialog, select and upload the PEM file.
3.  Click **Upload**.

##### Deleting a client certificate

If a certificate expires or needs to be removed for security reasons, you can delete it on the Mutual TLS tab.

To delete a client certificate:

1.  On the row of the certificate you want to remove, click the **Delete** icon.
2.  On the Delete Certificate? dialog, click **Delete**.

#### Third-Party OAuth 2.0 Clients

The **Appian OAuth 2.0 Clients** tab allows you to create and manage [OAuth 2.0 Clients](Web_API_Authentication.html#oauth-20-client-credentials-grant) and [Service Accounts](User_Roles.html#service-account-role), which can be used to invoke Appian web APIs with the [OAuth 2.0 Client Credentials grant](https://tools.ietf.org/html/rfc6749#section-4.4). This tab allows you to:

-   Add a new third-party OAuth 2.0 client or service account.
-   Deactivate and reactivate third-party OAuth 2.0 clients.
-   Permanently delete OAuth 2.0 clients.

![screenshot of the third-party OAuth page](images/third-party-oauth-grid.png)

##### Adding a Third Party OAuth 2.0 Client

To add a new third-party OAuth 2.0 client:

1.  In the Admin Console, go to the **Web API Authentication** page.
2.  Go to the **Third-Party OAuth 2.0 Clients** tab.
3.  Click **Add**.
4.  Enter a unique **Description**.
5.  Enter the **Client ID** that the OAuth 2.0 provider will send in the access tokens for this client.
6.  Enter the **Client ID Mapping**. This is the key that will be used for the claim containing the client ID in the access tokens for this client.
7.  Select the **Public Key Method** that will be used.
    -   If you select **JWKS URI**, you will need to enter the JWKS URI that returns the JWK Set to verify access token signatures for this client.
    -   If you select **JWK File Upload**, you will need to upload the **JWKS Public Key** file provided by the OAuth provider to verify access token signatures.
8.  Enter the **Issuer Claim (iss)** value that the OAuth 2.0 provider will send in the access tokens for this client.
9.  Enter the **Audience Claim (aud)** value that the OAuth 2.0 provider will send in the access tokens for this client.
10.  Select a **Service Account** to associate with the client.
     -   To create a new service account, click **Create Service Account** and enter a username. "Service Account" will automatically be added to the username you enter. [Learn more](#service-accounts).
11.  Click **ADD**.

     ![screenshot of the Create New Third-Party OAuth client dialog](images/create-new-third-party-oauth-client.png)

Once the third-party OAuth 2.0 client has been configured properly, Appian web APIs can be called using access tokens from the OAuth provider that match the values of the claims that you entered. These access tokens will be used to call web APIs in the context of the selected service account.

**Note:**  When adding a third-party OAuth 2.0 client, the client should be tied to a service account with the **same username** and given the **same description** in each environment. OAuth 2.0 clients can only be used for the environment they're created in.

##### Managing Third-Party OAuth 2.0 Clients

There are three ways to invalidate an Appian OAuth 2.0 client:

-   **Delete a third-party OAuth 2.0 client** - This option is permanent. Once a client has been deleted, it can never be restored. It must be manually added again.
-   **Deactivate a third-party OAuth 2.0 client** - For something more temporary, you can deactivate an OAuth 2.0 client. Inactive OAuth 2.0 clients can be reactivated in the future to make them work again.
-   **Remove the associated service account from the Service Accounts system group** - This will cause all API keys and OAuth 2.0 clients associated with the service account to stop working. However, if the service account is placed back in the Service Accounts system group, the associated keys and clients will start working again.

#### Service Accounts

If you need to create a new service account, you can easily do so by clicking the plus icon to the right of the **Service Account** picker on the [API key creation modal](#creating-an-api-key) or the [OAuth 2.0 client creation modal](#creating-an-appian-oauth-20-client). This prompts you to provide a username.

Service accounts should be created in each environment with the **same username** and placed in the **same groups** so that permissions can be promoted to higher environments.

The created service account will have its first name set to the selected username and its last name set to "Service Account". It will be automatically assigned the [Service Account role](User_Roles.html#service-account-role).

Existing users can be converted to service accounts by placing them in the Service Accounts [system group](System_Groups.html). When a service account is removed from the system group or deactivated, all API keys and OAuth 2.0 clients associated with that service account cease to work. Although they won't work, these credentials will continue to exist until they are manually deleted.

**Note:**  Your service account will need to be [added to the proper groups](Group_Management.html) in order to successfully call a web API with an API key or OAuth 2.0 client.

## DevOps

The following pages relate to features that support DevOps.

### Deployment

The **Deployment** page allows you to manage the following settings:

#### Allow test values to be imported with design objects

When enabled, test values saved in interface and expression rules are imported along with those objects. When not selected, interfaces and expression rules have their test values removed on import.

#### Allow database schema changes through data stores

When enabled, [automatic database schema updates](Data_Stores.html#create) will occur on data type update and data store import for appropriately configured data stores. When disabled, data stores' automatic database schema update configurations will be ignored, and automatic updates will never occur.

**Note:**  **Warning:** Before enabling this setting, check with your database administrator to see if it is acceptable for Appian to automatically run DDL statements in this environment. If Appian does not have DDL privileges on the database level, automatic schema updates will fail, even if this feature is enabled.

### Health check

The [**Health Check**](health-check.html) page allows you to set up, schedule, and pull Health Check reports on your Appian environment.

**Switching from the Plug-in to the Admin Console Health Check**

If you are using the Appian Health Check plug-in, Appian will automatically uninstall the Health Check plug-in when you set up [Health Check in the Admin Console](Appian_Administration_Console.html#prodlink-healthCheckSettings).

If you want to pull Health Check reports using a Continuous Integration (CI) tool, such as Jenkins, you will need to [create a web API](Designing_Web_APIs.html) that uses [a!latestHealthCheck()](fnc_system_a_latesthealthcheck.html).

#### Settings

**Health Check Settings** are grouped into three sections:

A. **General** B. **Automatic Upload** C. **Scheduling**

[![images/hc_settings_page.png](images/hc_settings_page.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img182)

[![](images/hc_settings_page.png)](#_)

**A - General**

To help Health Check establish the correct risk level for various [findings](understanding-the-health-check-report.html#health-check-risks-and-findings), specify whether your environment is a production environment.

The [Health Check Viewers](System_Groups.html#health-check-viewers) system group allows users to access the Health Check report from a News post and via email notifications. System administrators will always have access to the report from the Admin Console.

**Note:**  Health Check reports generated when automatic upload is disabled will not be available from the Admin Console and News. Instead, the report will be emailed directly to the system administrator who uploaded the Health Check data to Community. For more information, see the **Automatic Upload** section below.

**B - Automatic upload**

Appian recommends enabling [automatic upload](health-check.html#automatic-upload) to make your Health Check process more efficient. Automatic upload allows your environment to directly submit the data collection ZIP file to Appian Community when it is ready for analysis.

To enable automatic upload, Health Check credentials for Appian Community are required. The same credentials can be used across multiple environments within your organization. An authorized [support contact](insights_overview.html#myappian-roles) can obtain Health Check credentials or reset the Health Check password in MyAppian.

To obtain credentials or reset the password:

1.  Go to [MyAppian](https://forum.appian.com/suite/sites/myappian).
2.  Go to the **HEALTH** tab.
3.  Click [**CREDENTIALS**](insights_overview.html#prodlink-credentials).

Once you have your Health Check credentials, enter them in the **Automatic Upload** section.

If you previously configured third-party credentials for the Health Check plug-in, they are automatically detected and transferred over as Health Check credentials for the **Settings** page.

If you enable automatic upload, a [data review](health-check.html#step-2-data-review) will be required for the first Health Check run in each environment. During that review step, you will have the option to select **Autoapprove this step for future runs** and skip data reviews for future runs.

![/hc enable autoapprove checkmark step2](images/hc_enable_autoapprove_checkmark_step2.png)

System administrators can disable autoapprove from the **Automatic Upload** section at any time after their first Health Check run.

[![images/hc_settings_page_with_data_review.png](images/hc_settings_page_with_data_review.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img183)

[![](images/hc_settings_page_with_data_review.png)](#_)

If automatic upload is not enabled, a system administrator will need to manually download the data collection ZIP file, and upload it to [Community](https://community.appian.com/p/request-health-check-analysis) for analysis during each run.

**C - Scheduling**

After enabling scheduling, you will be asked to provide the date and time of your first run, as well as how frequently you would like Health Check to run.

Appian recommends regularly scheduling Health Check, and running it during **non-business hours in a production or active environment**, as it may increase system load and degrade performance. You should also take into consideration the time zones of your primary Appian users when scheduling Health Check.

Health Check will run within a 10 minute window of the scheduled time. For example, if you schedule Health Check to run at 12:00 AM, it could start as late as 12:09 AM.

#### Landing page

[![images/hc_landing_page.png](images/hc_landing_page.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img184)

[![](images/hc_landing_page.png)](#_)

1.  **Settings** button: Returns you to the **Settings** page.
2.  **Run Now** button: Immediately starts a Health Check run.
3.  **History** section: Displays information about your previous 50 Health Check runs.
    -   Each run will show:
        -   When the run started and how it was kicked off.
        -   How long data collection took, in minutes.
        -   Whether or not it was a scheduled run.
        -   The final status of the run (completed, canceled, or failed).
    -   For runs when automatic upload was enabled, you will see additional details such as:
        -   When the data review was approved and who approved it.
        -   The number of days in the analysis period (the period of time covered by the report).
        -   A link to download the resulting Health Check report. Reports are only available for the most recent 25 runs.
    -   For runs when automatic upload was disabled, reports will not be available for download from within the grid.
4.  **Download Last Run's ZIP** button: Downloads the data collection ZIP file that Health Check generated for your latest run. Any edits that you may have made to the ZIP file before submitting it for analysis will not be reflected in this download. This option is disabled when the latest run is canceled or encounters an error.

### Infrastructure

The **Infrastructure** page displays all the Appian environments in your organization and lets you control how those environments interact with each other. For example, you can let developers in your development environment [compare and directly deploy](Deploy_to_Target_Environments.html#compare-and-deploy) application changes to their test environment.

[![images/DevOps_Infrastructure.png](images/DevOps_Infrastructure.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img185)

[![](images/DevOps_Infrastructure.png)](#_)

#### Environments

The section displays all connected environments, their name, URL, direct deployment status, and connection status. You can also select an environment to view the last action, modifier, and modified date.

System administrators can enable and disable the connection with each environment. Both environments must have their connections enabled to leverage infrastructure capabilities, such as [compare and deploy](Deploy_to_Target_Environments.html#compare-and-deploy). If either environment disables their connection, all infrastructure capabilities between the two environments are disabled. For example, the dev environment must be added to the infrastructure of the test environment and vice versa for the connection to be fully enabled.

| **Icon** | **Connection Status** |
| --- | --- |
| ![enabled_both.png](images/enabled_both.png) | **Enabled**: this is the only status where infrastructure capabilities can be leveraged |
| ![disabled_remote.png](images/disabled_remote.png) | **Disabled** by remote environment |
| ![disabled_local.png](images/disabled_local.png) | **Disabled** by current environment |
| ![disabled_both.png](images/disabled_both.png) | **Disabled** by both environments |
| ![connection_error_enabled_local.png](images/connection_error_enabled_local.png) | **Connection error** with connection enabled by current environment |
| ![connection_error_disabled_local.png](images/connection_error_disabled_local.png) | **Connection error** with connection disabled by current environment |

##### Managing environments

To add an environment:

1.  Click **Add New Environment** and enter the URL for a remote environment.
2.  Click **Send Request**. A request will be sent to the environment system administrator and a notification about the request will display on the **Infrastructure** page.

![outgoing_request_sent.png](images/outgoing_request_sent.png)

Outgoing connection requests can be withdrawn at any time. Once the request is sent, system administrators will receive an email that links them to the **Infrastructure** page. They can view the incoming connection requests and take action on them. Incoming connection requests will time out after 7 days if no action is taken on them.

![incoming_request_received.png](images/incoming_request_received.png)

To allow connection from Appian:

1.  Select the environment and select **Allow connection from \[environment name\]**.
2.  Click **Save Changes**.

To enable direct deployments from Appian:

1.  Select the environment and select **Enable direct deployments from \[environment name\]**.
2.  Configure your direct deployment options in the **Direct Deployments** section.
3.  Click **Save Changes**.

When enabled, this environment will receive deployment requests from the selected [environment in this infrastructure](#infrastructure). A deployment can include object, database, and plug-in changes, which will be tracked in the [**Deploy**](deployments-view.html) view on both environments. Appian recommends configuring which specific environments can deploy to higher environments, such as Production. For example, you should allow application administrators in the Test environment to deploy to Production. But you wouldn't necessarily allow application administrators in the Development environment to deploy to Production. Disabling direct deployments will block direct deployments without affecting the ability to monitor performance metrics or compare applications.

Removing an environment from the current infrastructure will remove the environment from the remote environment's infrastructure as well.

To remove an environment:

1.  Select the environment and click **Delete**.
2.  Click **Remove**.

##### Using mutual authentication or self-signed certificates

If your environment leverages mutual authentication or self-signed certificates, you will need to upload your current environment's SSL certificate to each of its connected environments. In addition, you'll also need to ensure that your current environment has the SSL certificate from each of its connected environments. To do this, upload the [trusted server certificates](Appian_Administration_Console.html#trusted-server-certificates) in the Admin Console. For troubleshooting information, refer to the [Knowledge Base](https://community.appian.com/support/w/kb/1488/kb-1973-adding-a-connected-environment-fails-with-url-did-not-return-valid-public-key-error).

**Tip:**  If your environment leverages [Trusted IP Addresses](Configuring_Trusted_IP_Addresses_for_Appian_Cloud.html), please be aware that Appian Cloud outbound IP addresses will need to be allowed in order for the infrastructure to work.

#### External deployments

There are two types of external deployments: incoming and outgoing, both of which use APIs to programmatically complete deployment tasks and orchestrate Appian deployments via an external system.

You can configure the following options for external deployments:

| Option | Action |
| --- | --- |
| **Enable incoming** | Select to allow users to leverage native Appian APIs to deploy to the current environment.

When disabled, any calls to the corresponding endpoints will fail with an HTTP 403 status code, indicating that the environment is not accepting deployments via these APIs. |
| **Enable outgoing** | Select to allow users to leverage native Appian APIs to export from the current environment.

When disabled, any calls to the corresponding endpoints will fail with an HTTP 403 status code, indicating that the environment is not accepting deployments via these APIs. |
| **Authenticate As** | Select a system administrator user in the [service account role](User_Roles.html#service-account-role) to execute the [API request](Deployment_Rest_API.html#authentication) and authenticate with its associated API key (configured in Web API Authentication).

You can create and manage the API key and service account for authenticating external deployment requests from the [**Web API Authentication**](Appian_Administration_Console.html#web-api-authentication) page. |
| **Admin Console Changes** | Select **Allow deployments with admin console settings** to allow this environment to receive admin console setting changes through external deployments. |

#### Deployment settings

This section displays settings that apply to incoming direct and external deployments from _all_ environments that have been added to the current environment's infrastructure.

You can configure the following deployment settings:

| Setting | Action |
| --- | --- |
| **Deploy As** | If you enabled direct or external deployments from other environments, select a system administrator user in the [service account role](User_Roles.html#service-account-role) to act as the deployer. This user will appear as user who last modified all objects in the deployment. |
| **Plug-in Changes** | Select **Allow deployments with plug-ins** to allow the current environment to receive plug-in changes through direct and external deployments. |
| **Database Changes** | Select **Allow deployments with database scripts** to allow the current environment to receive database changes through direct and external deployments. |
| **Governance** | Select **Require review** and specify a reviewer group to add deployment approval for your deployment process. Users in the reviewer group, system administrators, and application administrators can approve or reject deployments.

Select **Requester and reviewer must be different** to prevent the deployment requester from approving or rejecting the deployment. |

## Integration

The following pages relate to integration administration.

### Certificates

There are two types of SSL certificates that can be managed in the Admin Console: Client Certificates and Trusted Server Certificates.

#### Client certificates

Some web services require transport-level client certificate authentication when setting up an SSL connection. The **Client Certificates** tab of the **Certificates** page allows administrators to upload certificates which can be applied to various Appian services and integrations, including:

-   [HTTP integrations](Integration_Object.html)
-   [HTTP Connected systems](Connected_System_Object.html)
-   [Call Web Service](Call_Web_Service_Smart_Service.html#security) smart service
-   [webservicequery()](fnc_scripting_webservicequery.html) and [webservicewrite()](fnc_scripting_webservicewrite.html) expression functions

**Note:**  [Pre-built connected systems](Connected_System_Object.html) do not support SSL. These client certificates currently only apply to integrations that use an HTTP connected system, an OpenAPI connected system, or no connected system at all.

The main view of the **Client Certificates** page is a grid view of all the client certificates in the system. Initially the grid will be empty until [certificates are uploaded](#uploading-a-new-certificate).

All actions performed on the **Client Certificates** page are captured in the [Admin Console audit log](Logging.html#admin-console) for auditing purposes. Each modification generates an audit log entry that includes the username of the user who made the change, along with the previous and new values.

##### Considerations and limitations

-   To guard against spoofing attacks, avoid using wildcard certificates. Instead, use SSL certificates that include the domain name or server endpoint as the Common Name (CN) to ensure stricter server identity verification and enhanced security.
-   Keep a copy of the certificate stored outside of Appian. Certificates cannot be downloaded from the **Client Certificates** page once uploaded.
-   Client certificates cannot be [imported or exported](#import-export-admin-console) from the Admin Console.

##### Uploading a new certificate

You can upload a file that consists of a single or multiple certificates.

To upload a file:

1.  Click **New Client Certificate**.
2.  Select a file. The file must be formatted in **PEM** (`.pem`) format.
3.  Click **UPLOAD**.

The password will not be stored. The uploaded certificates will be stored in an encrypted format in the Appian data source.

##### Deleting a certificate

Deleting a certificate will permanently remove it from all integrations.

To delete a certificate:

1.  In the grid, click next to the certificate.

#### Trusted server certificates

The **Trusted Server Certificates** tab of the **Certificates** page allows administrators to upload various types of server certificates, such as self-signed or private certificate authority (CA) signed certificates. These certificates are trusted and can be applied to various Appian services and integrations, including:

-   [HTTP integrations](Integration_Object.html)
-   [Connected systems](Connected_System_Object.html)
-   [Plug-ins](Appian_Plug-ins.html)
-   [Call Web Service](Call_Web_Service_Smart_Service.html#security) smart service
-   [webservicequery()](fnc_scripting_webservicequery.html) and [webservicewrite()](fnc_scripting_webservicewrite.html) expression functions
-   Secure connections to [LDAP](Authentication.html#ldap-authentication) over LDAPS
-   [OpenID Connect](OpenID_Connect_User_Authentication.html) requests (except when an [HTTP proxy](#http-proxy) is configured)

The main view of the Trusted Server Certificates page presents a grid that lists all trusted certificates added to the system. When first accessing this page, the grid will be empty until [certificates are uploaded](#uploading-a-new-certificate-1).

All actions performed on the Trusted Server Certificates page are captured in the [Admin Console audit log](Logging.html#admin-console) for auditing purposes. Each modification generates an audit log entry that includes the username of the user who made the change, along with the previous and new values.

##### Considerations and limitations

-   To guard against spoofing attacks, avoid using wildcard certificates. Instead, use SSL certificates that include the domain name or server endpoint as the Common Name (CN) to ensure stricter server identity verification and enhanced security.
-   Keep a copy of the certificate stored outside of Appian. Certificates cannot be downloaded from the Trusted Server Certificates page once uploaded.
-   Trusted server certificates cannot be [imported or exported](#import-export-admin-console) from the Admin Console.

##### Uploading a new certificate

You can upload a file that consists of a single or multiple certificates.

To upload a file:

1.  Click **New Trusted Server Certificate**.
2.  Select a file. The file must be formatted in **PEM** (`.pem`) format.
3.  Click **UPLOAD**.

The uploaded certificates will be stored in an encrypted format in the Appian data source.

##### Deleting a certificate

Deleting a certificate will permanently remove it from all integrations.

To delete a certificate:

1.  In the grid, click next to the certificate.

### Data sources

**Note:**  **New way to connect data sources**. If you want to deploy data sources to other environments and restrict who can access data sources during development, you can create connected systems for data sources instead. Learn more about [data source connected systems](data-source-connected-systems.html).

The data sources page lets you integrate Appian with external databases using a JDBC connection by adding, updating, and removing named connection configurations called data sources. These data sources are available for designers to use in their applications through [data stores](Data_Stores.html) and the [Query Database smart service](Query_Database_Smart_Service.html).

A data source consists of the following fields:

-   **Name** - The name of the data source that will appear in the Appian design interfaces, such as the [data store](Data_Stores.html) designer. It is recommended that this name begins with "jdbc/". If you are using multiple environments, a data source with the same name must be created in each environment.
-   **Type** - The type of database you wish to connect to.
    -   **Note**: If you are using Amazon Aurora, select the type of database that best matches your Aurora version. For example, if you are using Aurora PostgreSQL, simply choose PostgreSQL. However, if you are using Aurora MySQL, then you should select the specific option for Aurora MySQL. The non-Aurora MySQL data source option is not advised as it utilizes a different JDBC driver than AWS recommends.
-   **Username** - The username for connecting to the data source
-   **Password** - The password for connecting to the data source. The password will be stored in an encrypted format, not in plain text.
-   **Connection String** - The URL for the data source. Should include the hostname, port, and database name of the data source, but the exact syntax will vary by database type. If you do not know the URL for the data source, consult your database administrator. Please refer to [Configuring Relational Databases](Configuring_Relational_Databases.html) page for special considerations for individual databases while configuring them for use with Appian.

You cannot create a data source with the same name as the [Appian data source](Configuring_Relational_Databases.html#appian-data-source), as specified in the `conf.data.APPIAN_DATA_SOURCE` property in custom.properties.

See also: [Business Data Sources](Configuring_Relational_Databases.html#business-data-sources)

#### Enabling one-way SSL/TLS connections

You can use Secure Socket Layer (SSL) or Transport Layer Security (TLS) in Appian to encrypt a connection to a supported database. SSL/TLS connections provide an additional layer of security by encrypting data transferred between Appian and your database instance or cluster.

In one-way SSL, only Appian validates the server certificate to ensure that it receives data from the intended database server.

**Note:**  The way you enable SSL/TLS connections to a database varies depending on the database. Refer to your database vendor’s documentation for configuration details.

You cannot enable one-way SSL/TLS connections to **DB2 database** using a self-signed or private certificate authority (CA) signed certificate.

To enable one-way SSL/TLS connections to an [Appian-supported database](System_Requirements.html#databases):

1.  Enable SSL/TLS on your database server.
2.  Ensure that a valid SSL certificate has been uploaded to the [Trusted Server Certificates](Appian_Administration_Console.html#trusted-server-certificates) in the Admin Console, especially if you are using a self-signed or private certificate authority (CA) signed SSL certificate on your database server.
3.  Add SSL connection properties to your database connection URL. Below is an example connection URL for each supported RDBMS:
    -   **MariaDB** `jdbc:mariadb://yourserver.example.com:3306/your_db_name?useOldAliasMetadataBehavior=true&useSSL=true&sslMode=VERIFY_IDENTITY`
    -   **MySQL** `jdbc:mysql://yourserver.example.com:3306/your_db_name?useOldAliasMetadataBehavior=true&useSSL=true&sslMode=VERIFY_IDENTITY`
    -   **Oracle** `jdbc:oracle:thin:@(DESCRIPTION=(ADDRESS=(PROTOCOL=tcps)(HOST=yourserver.example.com)(PORT=2484))(CONNECT_DATA=(SERVICE_NAME=YOUR_DB_NAME)))`
    -   **SQL Server** `jdbc:sqlserver://yourserver.example.com:1433;databaseName=your_db_name;encrypt=true;sslProtocol=TLS;trustServerCertificate=false`
    -   **PostgreSQL** `jdbc:postgresql://yourserver.example.com:5432/your_db_name?escapeSyntaxCallMode=callIfNoReturn&ssl=true&sslmode=verify-full`

### AI Services

#### Appian

**Note:**  Settings in this area of the Admin Console relate to the [document extraction functions and smart services](Appian_Doc_Extraction.html), as well as the [Document Extraction AI Skill](create-skill-doc-extraction.html) and [Extract from Document smart service](Extract_from_Document_Smart_Service.html).

Other [AI Skill types](ai-skill-object.html#skill-types) are not managed by any settings on the Appian Admin Console.

Configure options in this section of the Admin Console control [which document extraction vendors](selecting-a-document.html#which-vendor-is-best-for-my-documents?) are enabled in your environment. Currently, Appian offers document extraction powered both by Appian built-in services and by [Google Document AI](#google-cloud).

Availability of Appian's built-in document extraction capabilities varies based on your site's compliance requirements:

-   **Appian Cloud SOC2 customers** have these services enabled by default.
-   **Appian Cloud HIPAA and PCI-DSS customers** can enable these services (disabled by default).
    -   If you choose not to enable these services, you can still use other built-in document extraction features when `Appian` is selected as the [preferred vendor](Start_Doc_Extraction_Smart_Service.html) in a document extraction process:
        -   Searchable PDFs: selection tool and positional extraction.
        -   Fillable PDFs: key-value pair extraction, selection tool, positional extraction, and checkbox extraction.
-   **Self-managed customers** and **Appian Cloud FedRAMP customers** don't have access to these features at this time.

You can review [Appian Cloud services compliance statements](https://trustcenter.appian.com/?view=adfcffa6-eb6b-495d-4d53-690439985a1a) to ensure that it aligns with your organization's security requirements.

##### Optical character recognition

Appian has a built-in service to perform optical character recognition (OCR) to extract data from documents. All customers have access to OCR. Additional capabilities are also available, such as:

-   Deskewing
-   Cropping
-   Noise removal
-   Rotation
-   Handwriting recognition
-   Extraction of blurred text
-   Ability to detect and ignore document backgrounds and watermarks

Customers who are in supported regions get these enhancements automatically when **Appian** is selected as the vendor when using the **Start Doc Extraction** smart service.

Customers in unsupported regions can access these enhancements by enabling the options and choosing a supported region to process their documents. This option is disabled by default. If you don't enable the enhancements, you'll still be able to use the OCR capabilities available in your region.

Regional support for additional built-in OCR capabilities:

| Region | Additional OCR supported by default1 |
| --- | --- |
| Africa (Capetown) | No |
| Asia Pacific (Mumbai) | Yes |
| Asia Pacific (Seoul) | Yes |
| Asia Pacific (Singapore) | Yes |
| Asia Pacific (Sydney) | Yes |
| Asia Pacific (Tokyo) | No |
| Canada (Central) | Yes |
| Europe (Frankfurt) | Yes |
| Europe (Ireland) | Yes |
| Europe (London) | Yes |
| Europe (Milan) | No |
| Europe (Paris) | Yes |
| Europe (Stockholm) | No |
| Middle East (Bahrain) | No |
| South America (Sao Paulo) | No |
| US East (N. Virginia) | Yes |
| US East (Ohio) | Yes |
| US West (N. California) | Yes |
| US West (Oregon) | Yes |

1 Customers who wish to use additional OCR capabilities will need to enable this option in the Admin Console.

To enable additional OCR capabilities in an unsupported region:

1.  Go to the Admin Console.
2.  In the **Integrations** menu, select **AI Services**.
3.  On the **Appian** tab, select the **Enhance optical character recognition (OCR) for my documents** checkbox.
4.  Choose the **Extraction Region** where you want to securely send your documents.
5.  Click **SAVE CHANGES**.

#### Google Cloud

**Note:**  Customers who wish to use Google services in Appian will need to bring their own Google Cloud credentials to do so.

In order to use certain [Document Extraction features](Appian_Doc_Extraction.html), you need to enter your Google Service Account key information in the **Admin Console > AI Services** page.

The required information is in the Google Service Account Key file, which is generated when the service account key is created. These keys will be used for all instances of the Doc Extraction smart services.

##### How to get a Google service account key file

Contact your Appian administrator for the Google Service Account Key JSON file from the License Management section of Appian Community.

Otherwise, to create the Service Account Key file:

1.  **Ensure APIs are enabled** - in the Google Cloud Console, navigate to `APIs & Services > Library` - see [Google Cloud docs on enabling APIs](https://cloud.google.com/apis/docs/getting-started#enabling_apis).
    1.  Google Cloud Storage JSON API
    2.  Cloud Document AI API
2.  **Generate a Google Cloud Storage Bucket** - see the Google Cloud documentation on [creating storage buckets](https://cloud.google.com/storage/docs/quickstart-console#before-you-begin)
3.  **Create Google Service Account** with the following permissions:

    -   `storage.objects.create`
    -   `storage.objects.list`
    -   `documentai.processors.create`
    -   `documentai.processors.list`

    In the Google Cloud Console, navigate to `APIs & Services > Credentials` page - see the Google IAM documentation for more information on [creating and managing service accounts](https://cloud.google.com/iam/docs/creating-managing-service-accounts).

4.  **Generate a Service Account Key** - to use Google Service Account authentication, you will need a service account key for your service account. This file should be downloaded in **JSON format**. To learn about creating and managing service account keys, see the Google IAM documentation on [creating and managing service account keys](https://cloud.google.com/iam/docs/creating-managing-service-account-keys)

The following Google Cloud Document AI keys are in the Google Service Account key JSON file that is generated when the service account key is created.

-   **Project ID** - Found in the Google Service Account file
-   **Private Key ID** - Found in the Google Service Account file
-   **Private Key** - Found in the Google Service Account file
-   **Client Email** - Found in the Google Service Account file
-   **Client ID** - Found in the Google Service Account file
-   **Destination Bucket** - The name of the Google Cloud Storage Bucket to upload the file to. The Google Service Account must have write access to this bucket. For example: `storage-bucket-0000000000`
-   **Source Bucket** - The name of the Google Cloud Storage Bucket to upload the file to. The Google Service Account must have read access to this bucket. For example: `storage-bucket-0000000001`
-   **Compute Region** - The [region](https://cloud.google.com/document-ai/docs/regions) that Google will store and process the resources for your project. The following regions are currently supported: `us`, `eu`.
-   **Test Connection** - Uses the provided configuration information to connect to the target system. Returns success or error with details.

#### Microsoft Azure

The **Microsoft Azure** tab allows you to provide credentials for the [Azure OpenAI Service](https://learn.microsoft.com/en-us/azure/cognitive-services/openai/), which previously enabled certain [Appian AI Copilot](appian-ai-copilot.html) features such as generating an interface from a PDF in Appian 24.3 and earlier. After credentials were provided, AI Copilot capabilities displayed in your environment.

**Note:**  As of the Appian 24.4 release, generating an interface from a PDF is now powered by [Appian's private AI](private-ai.html). This enhancement eliminated the need for an external Azure OpenAI license.

To connect Appian to Azure OpenAI:

**Tip:**  These steps only apply if you are using Appian 24.3 and earlier.

1.  In the Azure Portal, [create a resource](https://learn.microsoft.com/en-us/azure/cognitive-services/openai/how-to/create-resource?pivots=web-portal#create-a-resource). You'll use the resource name as `your-resource-name` in the endpoint you construct in step #3.
2.  [Deploy a model](https://learn.microsoft.com/en-us/azure/cognitive-services/openai/how-to/create-resource?pivots=web-portal#deploy-a-model).
    -   For the **Select a model** field, choose `gpt-4-32k (0314)` or `gpt-4 (0314)`. You'll use the name of the model as the `deployment-id` in the endpoint in step #3.
3.  Construct a `Chat completions` endpoint using your resource information. See [Microsoft documentation](https://learn.microsoft.com/en-us/azure/cognitive-services/openai/reference#chat-completions) for the format.
4.  [Retrieve a key](https://learn.microsoft.com/en-us/azure/cognitive-services/openai/tutorials/embeddings?tabs=command-line#retrieve-key-and-endpoint) for your resource on the **Keys and Endpoint** page. You can use `KEY 1` or `KEY 2`.
5.  In Appian, go to the Admin Console.
6.  In the **Integrations** menu, select **AI Services**.
7.  Go to the **Microsoft Azure** tab.
8.  Select the **Connect to Azure OpenAI** checkbox.
9.  Paste the endpoint URL into the **Chat Completion Endpoint** field.
10.  Paste the resource key into the **Key** field.
11.  Click **TEST CONNECTION** to see if the connection is successful. The success message includes information on any applicable Azure OpenAI service limits. Specifically, there is a limit to how many units of text Azure OpenAI processes per conversation, called the [token limit](#what-is-a-token-limit). If the connection is unsuccessful, a message displays the reason why.
12.  Click **SAVE CHANGES**.

##### What data is sent to Azure OpenAI?

When you or an end user interacts with AI Copilot, certain information is sent to Azure OpenAI to process the request:

| Action | Information sent to Azure OpenAI |
| --- | --- |
| You upload a PDF to generate an interface. | The content of the PDF. |

For more information about Azure OpenAI data privacy, see the [Microsoft documentation](https://learn.microsoft.com/en-us/legal/cognitive-services/openai/data-privacy).

##### What is a token limit?

In the context of machine learning, a token is a unit of analysis. A model breaks down data into meaningful parts – tokens – before it begins processing that data. Language processing models break down paragraphs of text into their smallest units, but these units aren't always equivalent to words. Instead, a token could be part of a word. Therefore, the number of tokens won't always equal the number of words in the text analyzed.

For example, the model is given the sentence, "the quickest brown fox is jumping over the laziest dog." There are 10 words in this sentence. However, there could be 13 tokens if the model breaks longer words such as `quickest` into `quick` and `est` for analysis. `Quickest` is one word, but `quick` and `est` are two tokens.

### Email

This page allows you to manage email settings for the environment.

#### Outbound Email Toggle

The **Outbound Email Toggle** tab allows you to enable or disable the ability for Appian to send email.

Many features are unavailable when outbound email is turned off including:

-   Automatic email alerts for the following:
    -   [Autoscaled process errors](monitoring-autoscaled-processes.html#email-error-alerts)
    -   [Portal errors](portals-troubleshooting.html#email-error-alerts)
    -   [Record type sync failures](Records_Monitoring_Details.html#sync-failure-alerts)
    -   [Site errors](sites_object.html#email-error-alerts)
-   [Multi-factor authentication](#multi-factor-authentication)
-   [Send Email smart service](Send_Email_Smart_Service.html)
-   [User email notifications for tasks and news](Notifications.html#options)

#### Email Sender Authentication

The **Email Sender Authentication** tab allows you to authenticate email sending domains using DomainKeys Identified Mail (DKIM).

DKIM is a standard email authentication method that adds a digital signature to outgoing messages. Receiving mail servers that receive messages signed with DKIM can verify messages actually came from the intended sender, and not another party impersonating the sender.

To authenticate an email sending domain using DKIM:

1.  In the Administration Console, under **INTEGRATION**, select **Email**.
2.  Go to the **Email Sender Authentication** tab. ![/admin-email](images/email_sender_authentication.png)
3.  Click **New Sender Domain Authentication**.
4.  For **Sender Domain**, enter the email domain to authenticate, such as `example.com`, then click **Authenticate**.
5.  To complete sender domain verification, create the DNS record for the domain using the DKIM DNS record that displays.

**Note:**  If you use a DKIM/DMARC verification/reporting tool (i.e. Valimail) that requires or recommends DNS delegation for your DKIM records, you will need to first create and verify the TXT record generated in the Appian Admin console directly in your DNS zone _before delegating the record_.

![/admin-email](images/email_sender_domain_details.png)

-   If the DNS record isn't ready to be verified, click **VERIFY LATER**. You can verify the DNS record at a later time by going back to the **Email Sender Authentication** tab and clicking the Domain name.

    ![/admin-email](images/email_sender_verify_later.png)

-   After the DNS record has been created, verify the created record by clicking **VERIFY NOW**. If verification is successful, the verification status of the domain will be updated and emails sent from the authenticated domain will be signed.

    ![/admin-email](images/email_sender_verified.png)

**Note:**  If you are an Appian Cloud customer and have [DNS VPN](Cloud_VPN_Integration.html#dns-based-vpn-routing) enabled for your Appian Cloud environment, and your DKIM DNS Record Name includes a domain name that is configured to go over the VPN tunnel, then you must either set up your DNS server configurations such that DNS resolution for the DKIM DNS Record Name resolves to the correct public IP address, or work with Appian Support to exempt the DKIM DNS Record Name from going over the VPN tunnel.

### Embedded Interfaces

The **Embedded Interfaces** page allows you to manage:

-   Origins for [embedding interfaces](Embedded_Interfaces.html) and displaying [portals](portals-home.html) on external websites.
-   [Themes for embedding interfaces](Themes_for_Embedded_Interfaces.html) on external websites.

#### Origins

The **Origins** section allows you to add and remove from the list of hosts that are allowed to make cross-origin resource sharing requests to your Appian site. By default, the list is empty. The prevention of unauthorized cross-origin requests is an important part of web application security, so only trusted hosts should be added to this list.

You need to add a host to the allowed origins list when:

-   You are [embedding an Appian interface](Embedded_Interfaces.html) on a website that uses a different host than Appian.
-   You are using an iframe to display a [portal](portals-home.html) page on a website that uses a different host than Appian.

To add a website to the Origins list:

1.  Go to the **Embedded Interfaces** section in the Admin Console.
2.  In the **Origins** list, click **New Allowed Origin**.
3.  Enter the host as it is typed in the browser address bar.
    -   If the port is different from the protocol default, include the port without the protocol. For example: `server.example.com` or `server.example.com:8080`.
4.  Click **SAVE CHANGES**.

    **Note:**  If you are planning to display a portal in an external website, be sure to [republish the portal](portals-manage-portals.html#manually-republish-a-portal) after updating the Origins list.

Adding or removing a host results in an audit log message with:

-   The username of the user who made the change.
-   The previous list of allowed hosts.
-   The new list of allowed hosts.

#### Themes

The **Themes** section allows you to configure any number of [themes](Themes_for_Embedded_Interfaces.html) with custom font and color styling. A theme can be optionally applied to the interfaces that are embedded in an external web page. This allows custom styling of [embedded interfaces](Embedded_Interfaces.html) in order to make them more consistent with the host web page.

Themes can only be applied to embedded interfaces. Learn more about [site branding](sites_object.html#branding), [portal branding](portal-object.html#branding), and [Tempo branding](#branding).

All modifications to themes result in an audit log message with:

-   The username of the user who made the change.
-   The previous values.
-   The new values.

### HTTP proxy

The **HTTP Proxy** page allows you to configure a proxy server for outgoing HTTP and HTTPS connections. The proxy is used by following integration features:

-   [HTTP, OpenAPI, and Pre-Built Connected Systems](Connected_System_Object.html#connected-system-types)
-   [Integrations](Integration_Object.html)
-   [Call Web Service smart service](Call_Web_Service_Smart_Service.html)
-   [webservicequery()](fnc_scripting_webservicequery.html)
-   [webservicewrite()](fnc_scripting_webservicewrite.html)

**Note:**  HTTP, OpenAPI, and pre-built connected systems shipped with Appian have been developed to respect the configured proxy. Connected system plug-ins only support using the configured proxy if the developer specifically developed them to do so. For an example, see [Configuring HttpClient when a proxy is enabled](executing-an-integration.html#configuring-httpclient-when-a-proxy-is-enabled).

| Property | Description |
| --- | --- |
| **Enable HTTP Proxy** | Should Appian use an HTTP Proxy? When this is not selected, all other fields on this page are disabled. |
| **Host** | The hostname or IP address of the proxy server. |
| **Port** | The port of the proxy server. |
| **Do not use the proxy server for the following hosts** | A list of hostnames or IP addresses. Requests that match hosts in this list will not use the proxy server. Wildcards (\*) are supported, for example, `*.google.com` will match `www.google.com` and `docs.google.com`. |
| **Use proxy authentication** | Does the proxy server require authentication? When this is not selected, the Username and Password fields are disabled. |
| **Username** | The username used for proxy authentication. |
| **Password** | The password used for proxy authentication. |

### Legacy web services

The **Legacy Web Services** page allows you to manage [processes exposed as web services](Publishing_Process_Models_as_Web_Services.html). The interface for configuring legacy web services opens in a new browser tab.

**Note:**  We recommend designers use [web APIs](Web_APIs.html) and the [Start Process smart service](Start_Process_Smart_Service.html) to expose process models to external systems.

Legacy web services cannot be [imported or exported](#import-export-admin-console) from the Admin Console.

### Logging

This page allows you to configure logging for integrations to facilitate troubleshooting.

![/admin-logging](images/integration_object_logging.png)

#### Trace Logging

This section controls the `integration_trace.csv` and `web_api_trace.csv` logs. When enabled, Appian will log tracing information about integrations and/or web APIs. For example: if the request was successful or if it logged out.

See the [integration](Logging.html#prodlink-integration-performance-logs) and [web API](Logging.html#prodlink-web-api-performance-logs) sections on the Logging page for the fields that are captured.

**Tip:**  The only potentially sensitive data that is captured in the trace log is the username of the user who called the integration.

#### HTTP Request/Response Logging

This section controls the `integration_req_resp_activity.log` and `web_api_req_resp_activity.log` logs. When enabled, logs the raw HTTP request and response messages for integrations and web APIs that have logging enabled. Developers can turn on logging for any [integration object](Integration_Object.html#http-integration-definition) that uses an HTTP or OpenAPI connected system, as well as for any [web API object](Web_APIs.html#prodlink-web-api-logging).

See the [Logging page](Logging.html#http-requestresponse-logs) for more information on the HTTP request/response logs.

**Note:**  The HTTP request/response logs may contain sensitive data or credentials. Before enabling HTTP request/response logs, it's important to understand the [integration logging guidelines](Integration_Object.html#prodlink-logging) and [web API](Integration_Object.html#prodlink-logging) logging guidelines.

#### AI Input/Output Logging

This section controls the AI input/output log (`perflogs/ai/ai_input_output_activity.log`). This log helps you monitor and audit [AI usage](ai-landing.html) within your Appian environment.

[![images/ai-inputOutput.png](images/ai-inputOutput.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img186)

[![](images/ai-inputOutput.png)](#_)

When the **Enable input/output logging** box is checked, the audit log captures additional details, including the inputs provided to the AI model and its response. This level of transparency empowers you to maintain control over AI usage and ensures compliance with evolving security and privacy standards.

The following features are not captured in the AI input/output log:

-   Process model node suggestions
-   Inline testing in the AI Skill designer

**Note:**  The input/output logs may contain sensitive data or credentials. Before enabling input/ouput logging, it's important to understand the AI input/output [logging safeguards](#logging-safeguards) below.

##### Logging safeguards

There are a number of safeguards in place to ensure that AI input/output logging doesn't store sensitive data when used correctly:

-   **Administrator-only access**: The `APPIAN_HOME/logs/perflogs/ai_input_output_activity.log` log is only accessible by system administrators. This prevents any privilege escalations for designers who shouldn't be able to see certain integrations.
-   **Log rollover policy**: The log files roll over based on time and size. No AI input/output log will ever last more than 7 days. The cumulative size of all rollover over AI input/output logs will never exceed 100 MB. To learn more about the log rollover policy, see the [Logging page](managing-log-files.html).

Avoid enabling input/output logging if:

-   Inputs or outputs include sensitive information (e.g., PII or credentials) without proper safeguards.
-   The data is not necessary for auditing or monitoring purposes.

**Tip:**  See the [Logging page](Logging.html#ai-inputoutput-logs) for information about the structure of AI Input/Output logs.

### Microsoft Office

This page allows you to configure Appian's [Task Viewer Add-in](Task_Viewer_Add-in_for_Microsoft_Outlook.html) for Microsoft Outlook.

-   **Enable Integration** - This box must be checked to use the Task Viewer Add-in. When checked, an unauthenticated endpoint, `/suite/integrations/office/outlook`, that serves up the content to embed in Outlook is enabled. The endpoint can only serve up content when embedded in Outlook and does not expose sensitive data to unauthenticated users.
-   **Download the site-specific add-in manifest link** - Click this link to download an add-in manifest file that can be uploaded to Office to enable the [Task Viewer Add-in](Task_Viewer_Add-in_for_Microsoft_Outlook.html).
-   **Follow the instructions for configuring Outlook link** - Click this link to view the instructions for [enabling the Task Viewer Add-in](Task_Viewer_Add-in_for_Microsoft_Outlook.html#enable-the-add-in-in-outlook).

### Third-party credentials

The **Third-Party Credentials** page allows you to manage credentials for connecting to external systems. These credentials are stored in the [Secure Credentials Store](Secure_Credentials_Store.html).

The following entities can use these credentials:

-   Authorized plug-ins through the public API.
-   Built-in smart services and functions such as the Call Web Service smart service and the `webservicequery` expression function.

The **Third-Party Credentials** page contains a grid view of all configured sets of credentials. Initially, the grid will be empty.

To create a set of third-party credentials:

1.  Click **CREATE** to create a new entry. A form with the following properties will display.
2.  Configure the following properties:

    |
    Property

     |

    Description

     |
    | --- | --- |
    |

    **Identity**

     |
    |

    **Name**

     |

    The name of the third-party credentials entry. This name represents the external system to which the credentials will be used to authenticate. The name given here is displayed anywhere that this set of credentials can be selected, such as on grid on the main page of the admin page, in the **Predefined Credentials** dropdown list in the Call Web Service smart service, and on the **Third-Party Credentials** settings page available to end-users.

     |
    |

    **Key**

     |

    The key field is auto-generated and not editable. The key is generated based on the given name. The key does not change when the credentials set is renamed. The key is used when accessing the credentials through the Secure Credentials Store public API and used as a reference to the credentials when inspecting the audit log for the Secure Credentials Store.

     |
    |

    **Description**

     |

    A short description of the credentials set and/or the external system.

     |
    |

    **Plug-ins List**

     |
    |

    **Plug-ins**

     |

    The plug-ins that are authorized to use this set of credentials. When deploying a plug-in that uses the Secure Credentials Store API, that plug-in must be added to this list for each set of third-party credentials that it will be allowed to access. The input will auto-complete and allow selection of a deployed plug-in as you type the name or plug-in key of the plug-in. Any plug-ins that were previously added to the list, but have since been removed from the system, will appear in the list as the plug-in key rather than the plug-in name. These plug-ins may be safely removed if you know that they will not be re-deployed to the system.

     |
    |

    **Credentials**

     |
    |

    see description

     |

    This section of the form allows you to define the fields of the credentials (for example, "Username" and "Password") as well as the site-wide values for these fields. Once fields are defined, a checkbox allows you to make these fields available to end-users on the **Third-Party Credentials** settings page, so that they can store their own personal credentials that are used to connect to the external system. For each set of credentials, the designer of an application has the ability to select whether to use the site-wide credentials (for use cases where there is a single integration user), or use the per-user credentials (for use cases where the individual's access rights to the external system are important). Using an individual's credentials is only possible when that user is logged in and acting in the system. Per-user third-party credentials are not available for Appian accounts that authenticate via SAML.

    When configuring credentials for the first time, the section will be empty except for an **Add field** link. Clicking the link will display a grid with the following columns:

    -   **Field name**: The display name of the credentials field (for example, "Password"). This name will appear as the label of the input in the **Third-Party Credentials** settings page for end-users to enter their credentials. When accessing the credentials through the Secure Credentials Store Public API, the key for this field will be the same as the given field name, except all lower-case, with dots instead of spaces.
    -   **Key**: The key field is auto-generated and not editable. The key is generated based on the given name. The key does not change when the field is renamed. The key is used when accessing the credentials through the Secure Credentials Store Public API.
    -   **Value**: This is the value for the credentials field that will be used when a designer chooses to use the site-wide credentials rather than per-user credentials.
    -   **Mask**: This Yes/No toggle is only available when the checkbox to allow individuals to set their credentials has been checked. When selected, the value for this field will appear as masked in the **Third-Party Credentials** settings page for end-users.

     |
    |

    **Test Connection**

     |
    |

    **Expression**

     |

    This section of the form allows you to test the values for site-wide credentials. Provide an expression that returns `true` if the connection was successful. As a best practice, define the expression in a [rule](Expression_Rules.html) and use the rule here.

    When testing the connection, the expression only has access to the current credentials on the form, and you must use the unique identifier key as generated to retrieve the credentials from the Secure Credentials Store. If testing using a function that is provided in a plug-in, that plug-in must be in the authorization list.

     |

3.  Click **SAVE**.

Deleting individual credentials fields will cause all site-wide and per-user values for that field to be deleted. Deleting a set of third-party credentials from the grid on the **Third-Party Credentials** page will cause all site-wide and per-user values for the entire set of credentials fields to be deleted.

All credential changes result in an audit log message with the username of the user who made the change, the previous values, and the new values.

See also:

-   [Settings Page](Settings_Page.html#third-party-credentials)

## Monitoring

The following pages relate to monitoring your Appian installation.

Monitoring information cannot be [imported or exported](#import-export-admin-console) from the Admin Console.

### Current user activity

The **Current User Activity** page allows you to see which users are currently active on your site.

User activity is stored for 1 hour and only the most recent 1000 entries are displayed.

When a user logs out of the system, they are removed from the list of recent activity.

It is possible for the same user to appear in the list twice if they are connected from two different browsers or mobile clients.

### Document reports

The **Document Reports** page shows the following usage information about documents in the system:

-   **General Statistics** - The total number of uploaded and downloaded files as well as the total disk space used by documents (excluding versions).
-   **User Statistics** - Information about the number of users that have uploaded and downloaded files in the system.
-   **Total Last 10 Days** - The number of uploads and downloads that have occurred over the previous ten days.

Note that user avatars are stored as documents, so views of user images are counted as downloads.

### Import history

![](images/AC_Import_History.png)

The **Import History** page allows you to see all the imports that have occurred on the system during the last 30 days. This includes imports from:

-   Appian Designer
-   Admin Console
-   `ImportExportService`

**Note:**  See the [Public API](APIs.html) for more information

Clicking the document icon on the last column of the grid will download the import log for the corresponding import.

### Rule performance

The **Rule Performance** page allows you to see the historical performance of all of the rules in the system. It contains a table of rule name, the number of times that rule has been executed, the average execution time, the minimum execution time, and the maximum execution time.

A moving window of thirty days of performance metrics are gathered and stored as end users execute the rules. The evaluation times recorded do not include the evaluation of the rules when they are executed in [Appian Designer](welcome-app-designer.html).

Clicking on the name of a rule will bring up more details on the performance of that rule, including graphs of the performance over time. These graphs are the same as the ones found in the historical [performance trends](Performance_View.html#performance-trends) in the performance view.

This page contains performance data for rule objects, including expression rules, interfaces, query rules, integrations, and decisions.

## Import and export your settings

Most Admin Console settings can be imported and exported, except for settings on the following pages:

-   [API Keys](#api-keys)
-   [LDAP Authentication](#ldap-authentication)
-   [SAML Authentication](#saml-authentication)
-   [Single Sign-On Authentication](#single-sign-on)
-   [Infrastructure](#infrastructure)
-   [Certificates](#certificates)
-   [Legacy Web Services](#legacy-web-services)

In addition, you can export the **Encryption Service** setting associated with plug-ins, but you cannot import or export [plug-ins](#plug-ins) in the Admin Console. Instead, deploy plug-ins using a [direct deployment](Deploy_to_Target_Environments.html#compare-and-deploy).

**Note:**  For security reasons, you cannot export credential values. Instead, you can provide these values during [deployment](Deploy_to_Target_Environments.html) using an [import customization file](Managing_Import_Customization_Files.html)</a>.

### Export

To export Admin Console settings:

1.  Click **EXPORT** in the header bar. The **Export Settings** dialog appears. This dialog lists all settings available for export.
2.  (Optional) Filter the settings list:

    -   Click **Show Filters**.
    -   Select one or more **Category** values or specify a **Last Modified** date range.

    ![Export](images/AC_Export.png)

3.  In the settings list, select the settings you want to export.
4.  Click **EXPORT SELECTED**.
5.  Download the appropriate files:

    | File | Extension | Action |
    | --- | --- | --- |
    | Admin Console settings files | `.zip` | Click **DOWNLOAD PACKAGE**. |
    | Export log | `.txt` | Click **Download Export Log**. |
    | [Import customization file](Managing_Import_Customization_Files.html) | `.properties` | Click **Download Import Customization File**. |

The files download according to your browser settings.

### Import

In the Admin Console, you can import the following individually or in combination:

-   [Admin Console settings](#export)
-   [Applications and packages](prepare-deployment-packages.html)
-   [Import customization files](Managing_Import_Customization_Files.html)

To import in the Admin Console:

1.  Open the navigation menu
2.  Select **Admin Console**.
3.  In the header bar, click the **IMPORT** button. The **Import Settings** dialog opens.
4.  Upload an Admin Console settings file:
    -   Under **Admin Console Package (ZIP)**, click **UPLOAD**.
    -   Select the `.zip` file containing the Admin Console settings you want to import.
5.  (Optional) Upload an import customization file:
    -   Check **Include related import customization file**.
    -   Under **Import Customization File (PROPERTIES)**, click **UPLOAD**.
    -   Select the `.properties` file containing your import customizations.
6.  (Optional) Upload an application or a package:
    -   Check **Import related application or package**.
    -   Continue as appropriate:

        |
        Type

         |

        Action

         |
        | --- | --- |
        |

        Application

         |

        -   Select **Application**.
        -   Click **UPLOAD**.
        -   Select the `.zip` file for the application you want to import.

         |
        |

        Package

         |

        -   Select **Package**.
        -   Click **UPLOAD**.
        -   Select the `.zip` file for the package you want to import.
        -   Select the application where you want to import the package.

         |

7.  (Optional) Click **INSPECT** to validate the files you are importing, and resolve any errors before importing. [Learn more about inspection](inspect-deployment-packages.html).
8.  Click **IMPORT**. Appian queues an asynchronous import.

### Import considerations

Admin Console settings and application objects can be tightly coupled. Because of this, Appian allows you to import an application package and an Admin Console package together, both in the Admin Console and through external deployments.

![Import Settings](images/AC_ImportApp.png)

These packages will be included in a single import, so any dependencies between them are identified and properly resolved.

Dependencies include:

-   [User start pages](#user-start-pages) secured to groups.
-   Data stores pointing to a [data source](#data-sources) by its JDNI name.
-   [Embedded interface themes](#themes) referencing design objects in the **Page Background Color** or **Accent Color** fields.
-   [Third-party credentials](#third-party-credentials) referencing design objects in the **Test Connection** field.

### Setting-specific behavior

#### Data Sources

During import, Appian tests the connection of the data source. If a connection cannot be established successfully, the data source will fail to import. This connection test also happens during inspection.

#### Health check

[Health Check](Appian_Administration_Console.html#health-check) must be set up and enabled on an environment before any imported Health Check configurations can take effect.

You can import and export all [Health Check Setting](Appian_Administration_Console.html#prodlink-healthCheckSettings) properties except the following:

-   The members of the Health Check Viewers group.
-   Whether autoapproval is enabled for data reviews. By default, data reviews are required in each environment. To [enable autoapprove for data reviews](Appian_Administration_Console.html#prodlink-healthCheckSettings), you will need to do so manually on each environment.

When **Health Check Settings** are exported, the **Service Account** credential fields are left blank. These fields can be edited in the Health Check properties file and imported into a target environment. Note that on import:

-   When the automatic upload field is set to **true**, a Service Account username and password must be provided.
-   When the automatic upload field is set to **false**, any Service Account credentials provided in the properties file, or existing credentials on the target environment, will be removed.

#### Permissions

To export and import Quick App Creator permissions, export the Quick App Creators group.

**Note:**  Member groups are included when exporting a group, but individual user members are not. See also: [Groups](Application_Deployment_Guidelines.html#groups)

#### Plug-ins

The list of Encryption Service public API permissions for all plug-ins shown on the [Plug-ins](Appian_Administration_Console.html#plug-ins) page can be exported as one item. For example, if you have plug-in _X_ that has permission to use the Encryption Service and plug-in _Y_ that doesn't, both permissions would be set during import if the setting was included in your import package. On import into the target environment, only the plug-ins that are listed in the package are updated. You may have more plug-ins in the target environment, and their Encryption Service configurations are not updated.

Appian recommends that if you are sharing an Admin Console package with environments where you have no knowledge of the deployed plug-ins, you should not include this setting as it might overwrite a plug-in's permissions.

#### Third-party credentials

When importing a set of [third-party credentials](#third-party-credentials) onto a target environment for the first time, the credentials field values can be configured in one of two ways:

-   Set the values in the import customization file.
-   Manually set the values after import.

Updating the set of third-party credentials via import will not reset any per-user credentials that a user has stored. These will only be removed if that specific credential field has been deleted from the third-party credentials.

Third-party credentials may reference plug-ins. The referenced plug-ins may be deployed before or after the third-party credentials, and the reference to the plug-in name will be preserved. Appian recommends that plug-ins are deployed before importing your applications and Admin Console settings.

![Third Party Plug-ins](images/AC_TPCplug-ins.png)

#### User start pages

If one of your start pages points to a specific record or action, this URL will not be the same across environments. Be sure to confirm the URL is correct for these pages after import.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...