---
source_url: https://docs.appian.com/suite/help/25.3/Bootstrap_Locale_and_Timezone.html
original_path: Bootstrap_Locale_and_Timezone.html
version: "25.3"
title: "Bootstrap Locale and Timezone"
page_id: "Bootstrap_Locale_and_Timezone"
section: "Feedback"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Bootstrap Locale and Timezone

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

The primary system locale, time zone, and calendar settings are loaded at initial Administrator user-login, after installation.

To set a new locale, time zone, and calendar to appear on start-up, the bootstrap properties must be changed before the application is started for the first time. Otherwise, changes made to these properties serve as the fall-back locale, time zone, and calendar - but the start-up settings in the application do not change.

-   Keep in mind that any plug-ins that you are using must include language resources for the locale that you configure.

After the application has been started, the preferred language displayed for all users can be changed.

See also: [Internationalization Settings](Internationalization_Settings.html)

All dates and times displayed adhere to the bootstrap time zone, if a preferred time zone for the application is not configured.

The bootstrap calendar determines the type of calendar used in the application. Currently, the Gregorian calendar (`gregorian`) and the Islamic calendars (`Epoch A T1`, `Epoch A T2`, `Epoch B T1`, `Epoch B T2`, and `Umm Al Qura`) are configurable settings.

Apart from serving as the primary locale, time zone, and calendar for the application, these properties are used for several important locale-related functions:

-   It serves as a fall-back for date-time patterns on the Expressions server.
-   It is the default locale used when importing Process Models from previous versions of Appian.

To change the bootstrap locale, add the locale `conf.suite.bootstrapLocale` property to `custom.properties`. This locale must appear a locale supported by Appian.

To change the bootstrap time zone, add the `conf.suite.bootstrapTimeZone` property to `custom.properties`. This property accepts a long definition of a time zone (such as America/Los\_Angeles) and deprecated time zone acronyms. We recommend using long time zone names (as listed in the Olson database of time zones) as a three-character time zone acronym may include multiple locales that use different date and time formats, different daylight savings time calculations, or that refer to more than one time zone (such as China Standard Time and Central Standard Time).

```
1
2
3
4
5
6
custom.properties
# Internationalization
# Bootstrap locale and timezone.
conf.suite.bootstrapLocale=en_US
conf.suite.bootstrapTimeZone=America/Chicago
conf.suite.bootstrapCalendar=gregorian
```

Restart the application server to apply these changes as fall-back settings. The changes must be made before Appian is started for the first time, or they become fall-back settings.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...