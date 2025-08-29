---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/GlobalizationService.html
original_path: api/com/appiancorp/suiteapi/portal/GlobalizationService.html
version: "25.3"
title: "Interface GlobalizationService"
page_id: "api/com/appiancorp/suiteapi/portal/GlobalizationService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.portal](package-summary.html)

# Interface GlobalizationService

All Superinterfaces:

`[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface GlobalizationService extends [ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

Deprecated.

Globalization updates should be done via the Admin Console.

Defines methods for retrieving and configuring internationalization settings such as locale and timezone.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[getSiteCalendarSettings$UPDATES](#getSiteCalendarSettings$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSiteCalendarSettingsClone$UPDATES](#getSiteCalendarSettingsClone$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSiteLocaleSettings$UPDATES](#getSiteLocaleSettings$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSiteLocaleSettingsClone$UPDATES](#getSiteLocaleSettingsClone$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSiteTimeZoneSettings$UPDATES](#getSiteTimeZoneSettings$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSiteTimeZoneSettingsClone$UPDATES](#getSiteTimeZoneSettingsClone$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setSiteCalendarSettings$UPDATES](#setSiteCalendarSettings$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setSiteLocaleSettings$UPDATES](#setSiteLocaleSettings$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setSiteTimeZoneSettings$UPDATES](#setSiteTimeZoneSettings$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setTimeZone$UPDATES](#setTimeZone$UPDATES)`

    Deprecated.

     

    ### Fields inherited from interface com.appiancorp.services.[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

    `[CONFIGURE_METHOD_NAME](../../services/ContextSensitiveSingletonService.html#CONFIGURE_METHOD_NAME)`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[SiteCalendarSettings](SiteCalendarSettings.html "class in com.appiancorp.suiteapi.portal")`

    `[getSiteCalendarSettings](#getSiteCalendarSettings\(\))()`

    Deprecated.

    Retrieval of site calendar settings should be done via getSiteCalendarSettingsClone [`CalendarSetting`](CalendarSetting.html "class in com.appiancorp.suiteapi.portal")

    `[SiteCalendarSettings](SiteCalendarSettings.html "class in com.appiancorp.suiteapi.portal")`

    `[getSiteCalendarSettingsClone](#getSiteCalendarSettingsClone\(\))()`

    Deprecated.

    Gets the calendar specific settings for the site

    `[SiteLocaleSettings](SiteLocaleSettings.html "class in com.appiancorp.suiteapi.portal")`

    `[getSiteLocaleSettings](#getSiteLocaleSettings\(\))()`

    Deprecated.

    Retrieving site locale settings should be done via getSiteLocaleSettingsClone

    `[SiteLocaleSettings](SiteLocaleSettings.html "class in com.appiancorp.suiteapi.portal")`

    `[getSiteLocaleSettingsClone](#getSiteLocaleSettingsClone\(\))()`

    Deprecated.

    Gets the site locale settings for the site.

    `[SiteTimeZoneSettings](SiteTimeZoneSettings.html "class in com.appiancorp.suiteapi.portal")`

    `[getSiteTimeZoneSettings](#getSiteTimeZoneSettings\(\))()`

    Deprecated.

    Retrieval of site timezone settings should be done via getSiteTimeZoneSettingsClone

    `[SiteTimeZoneSettings](SiteTimeZoneSettings.html "class in com.appiancorp.suiteapi.portal")`

    `[getSiteTimeZoneSettingsClone](#getSiteTimeZoneSettingsClone\(\))()`

    Deprecated.

    Gets the site timezone settings for the site.

    `void`

    `[setSiteCalendarSettings](#setSiteCalendarSettings\(com.appiancorp.suiteapi.portal.SiteCalendarSettings\))([SiteCalendarSettings](SiteCalendarSettings.html "class in com.appiancorp.suiteapi.portal") settings_)`

    Deprecated.

    Sets the Calendar specific setting for the site.

    `void`

    `[setSiteLocaleSettings](#setSiteLocaleSettings\(com.appiancorp.suiteapi.portal.SiteLocaleSettings\))([SiteLocaleSettings](SiteLocaleSettings.html "class in com.appiancorp.suiteapi.portal") localeSettings_)`

    Deprecated.

    Registers the site local settings for the entire site.

    `void`

    `[setSiteTimeZoneSettings](#setSiteTimeZoneSettings\(com.appiancorp.suiteapi.portal.SiteTimeZoneSettings\))([SiteTimeZoneSettings](SiteTimeZoneSettings.html "class in com.appiancorp.suiteapi.portal") timezoneSettings_)`

    Deprecated.

    Registers the site timezone settings for the entire site.

    `void`

    `[setTimeZone](#setTimeZone\(com.appiancorp.suiteapi.portal.BackendTimeZoneSimple\))([BackendTimeZoneSimple](BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal") tz)`

    Deprecated.

    Set the time zone information using the format used by the engines to encapsulate time zone information.

    ### Methods inherited from interface com.appiancorp.services.[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

    `[configureContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html#configureContextSensitiveSingletonService\(com.appiancorp.services.spring.ServiceContextProvider,com.appiancorp.services.AuthorizationInterceptorProvider\))`

-   ## Field Details

    -   ### getSiteLocaleSettings$UPDATES

        static final boolean getSiteLocaleSettings$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.GlobalizationService.getSiteLocaleSettings$UPDATES)

    -   ### getSiteLocaleSettingsClone$UPDATES

        static final boolean getSiteLocaleSettingsClone$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.GlobalizationService.getSiteLocaleSettingsClone$UPDATES)

    -   ### setSiteLocaleSettings$UPDATES

        static final boolean setSiteLocaleSettings$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.GlobalizationService.setSiteLocaleSettings$UPDATES)

    -   ### getSiteTimeZoneSettings$UPDATES

        static final boolean getSiteTimeZoneSettings$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.GlobalizationService.getSiteTimeZoneSettings$UPDATES)

    -   ### getSiteTimeZoneSettingsClone$UPDATES

        static final boolean getSiteTimeZoneSettingsClone$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.GlobalizationService.getSiteTimeZoneSettingsClone$UPDATES)

    -   ### setSiteTimeZoneSettings$UPDATES

        static final boolean setSiteTimeZoneSettings$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.GlobalizationService.setSiteTimeZoneSettings$UPDATES)

    -   ### setSiteCalendarSettings$UPDATES

        static final boolean setSiteCalendarSettings$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.GlobalizationService.setSiteCalendarSettings$UPDATES)

    -   ### getSiteCalendarSettings$UPDATES

        static final boolean getSiteCalendarSettings$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.GlobalizationService.getSiteCalendarSettings$UPDATES)

    -   ### getSiteCalendarSettingsClone$UPDATES

        static final boolean getSiteCalendarSettingsClone$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.GlobalizationService.getSiteCalendarSettingsClone$UPDATES)

    -   ### setTimeZone$UPDATES

        static final boolean setTimeZone$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.GlobalizationService.setTimeZone$UPDATES)

-   ## Method Details

    -   ### getSiteLocaleSettings

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [SiteLocaleSettings](SiteLocaleSettings.html "class in com.appiancorp.suiteapi.portal") getSiteLocaleSettings()

        Deprecated.

        Retrieving site locale settings should be done via getSiteLocaleSettingsClone

        Gets the site locale settings for the site.

        Returns:

        The site locale settings of the site.

    -   ### getSiteLocaleSettingsClone

        [SiteLocaleSettings](SiteLocaleSettings.html "class in com.appiancorp.suiteapi.portal") getSiteLocaleSettingsClone()

        Deprecated.

        Gets the site locale settings for the site.

        Returns:

        A copy of the site locale settings.

    -   ### setSiteLocaleSettings

        void setSiteLocaleSettings([SiteLocaleSettings](SiteLocaleSettings.html "class in com.appiancorp.suiteapi.portal") localeSettings\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Registers the site local settings for the entire site. All the properties in the [`SiteLocaleSettings`](SiteLocaleSettings.html "class in com.appiancorp.suiteapi.portal") parameter must be populated. It is required that the `primary locale` defined in the parameter is present and enabled in the array of `locale settings`.

        Parameters:

        `localeSettings_` - New locale settings for the entire site.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not a portal administrator

    -   ### getSiteTimeZoneSettings

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [SiteTimeZoneSettings](SiteTimeZoneSettings.html "class in com.appiancorp.suiteapi.portal") getSiteTimeZoneSettings()

        Deprecated.

        Retrieval of site timezone settings should be done via getSiteTimeZoneSettingsClone

        Gets the site timezone settings for the site.

        Returns:

        The site timezone settings of the site.

    -   ### getSiteTimeZoneSettingsClone

        [SiteTimeZoneSettings](SiteTimeZoneSettings.html "class in com.appiancorp.suiteapi.portal") getSiteTimeZoneSettingsClone()

        Deprecated.

        Gets the site timezone settings for the site.

        Returns:

        A copy of the site timezone settings.

    -   ### setSiteTimeZoneSettings

        void setSiteTimeZoneSettings([SiteTimeZoneSettings](SiteTimeZoneSettings.html "class in com.appiancorp.suiteapi.portal") timezoneSettings\_)

        Deprecated.

        Registers the site timezone settings for the entire site.

        Parameters:

        `settings_` - New timezone settings for the entire site.

    -   ### setSiteCalendarSettings

        void setSiteCalendarSettings([SiteCalendarSettings](SiteCalendarSettings.html "class in com.appiancorp.suiteapi.portal") settings\_)

        Deprecated.

        Sets the Calendar specific setting for the site.

        Parameters:

        `settings_` - new calendar settings for the site [`CalendarSetting`](CalendarSetting.html "class in com.appiancorp.suiteapi.portal")

    -   ### getSiteCalendarSettings

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [SiteCalendarSettings](SiteCalendarSettings.html "class in com.appiancorp.suiteapi.portal") getSiteCalendarSettings()

        Deprecated.

        Retrieval of site calendar settings should be done via getSiteCalendarSettingsClone [`CalendarSetting`](CalendarSetting.html "class in com.appiancorp.suiteapi.portal")

        Gets the calendar specific settings for the site

        Returns:

        Calendar settings for the site

    -   ### getSiteCalendarSettingsClone

        [SiteCalendarSettings](SiteCalendarSettings.html "class in com.appiancorp.suiteapi.portal") getSiteCalendarSettingsClone()

        Deprecated.

        Gets the calendar specific settings for the site

        Returns:

        A copy of the site calendar settings. [`CalendarSetting`](CalendarSetting.html "class in com.appiancorp.suiteapi.portal")

    -   ### setTimeZone

        void setTimeZone([BackendTimeZoneSimple](BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal") tz)

        Deprecated.

        Set the time zone information using the format used by the engines to encapsulate time zone information. The time zone information is initialized during the intial applicaiton startup and should not need to be set using this method or any other afterward. Consider your use case when calling this method.

        Parameters:

        `tz` - The specially formatted time zone object used by the engines