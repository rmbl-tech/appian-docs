---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/services/ServiceContextFactory.html
original_path: api/com/appiancorp/services/ServiceContextFactory.html
version: "25.3"
---

Package [com.appiancorp.services](package-summary.html)

# Class ServiceContextFactory

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.services.ServiceContextFactory

Direct Known Subclasses:

`[WebServiceContextFactory](WebServiceContextFactory.html "class in com.appiancorp.services")`

* * *

public class ServiceContextFactory extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Provides utility methods for creating new service contexts.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[ADMIN_USERNAME](#ADMIN_USERNAME)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ServiceContextFactory](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static boolean`

    `[areI18nSettingsPopulated](#areI18nSettingsPopulated\(com.appiancorp.services.ServiceContext\))([ServiceContext](ServiceContext.html "interface in com.appiancorp.services") sc)`

    `static [EscalatedServiceContext](EscalatedServiceContext.html "class in com.appiancorp.services")`

    `[createEscalatedServiceContext](#createEscalatedServiceContext\(com.appiancorp.services.ServiceContext,java.lang.String\))([ServiceContext](ServiceContext.html "interface in com.appiancorp.services") sc, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") grantorUsername)`

    Create ServiceContext based on sc that is escalated with the privileges of grantorUsername

    `static [EscalatedServiceContext](EscalatedServiceContext.html "class in com.appiancorp.services")`

    `[createEscalatedServiceContext](#createEscalatedServiceContext\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") grantorUsername)`

    Similar to [`getServiceContext(String)`](#getServiceContext\(java.lang.String\)), but also populates the grantor

    `static [ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

    `[getAdministratorServiceContext](#getAdministratorServiceContext\(\))()`

    Retrieves a service context for an anonymous system administrator.

    `static [ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

    `[getAdministratorServiceContextForMigration](#getAdministratorServiceContextForMigration\(\))()`

    Retrieves a service context for an anonymous system administrator, to be used for migration of EXISTING objects in the system.

    `static [User](../suiteapi/personalization/User.html "class in com.appiancorp.suiteapi.personalization")`

    `[getAdministratorUser](#getAdministratorUser\(\))()`

    Retrieves the user that is the system administrator.

    `static [ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

    `[getServiceContext](#getServiceContext\(com.appiancorp.services.ASLIdentity\))(com.appiancorp.services.ASLIdentity id)`

    Gets a service context for the ASLIdentity passed in.

    `static [ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

    `[getServiceContext](#getServiceContext\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Gets a service context for the username passed in.

    `static [User](../suiteapi/personalization/User.html "class in com.appiancorp.suiteapi.personalization")`

    `[getUser](#getUser\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName_)`

    Creates a user object whose username is the given name.

    `static [ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

    `[populateServiceContextI18nSettings](#populateServiceContextI18nSettings\(com.appiancorp.services.ServiceContext\))([ServiceContext](ServiceContext.html "interface in com.appiancorp.services") sc)`

    Populates the i18n fields (locale, time zone, and calendar id) on the given service context object.

    `static [ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

    `[populateServiceContextI18nSettings](#populateServiceContextI18nSettings\(com.appiancorp.services.ServiceContext,java.util.Locale\))([ServiceContext](ServiceContext.html "interface in com.appiancorp.services") sc, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") overrideLocale)`

    Populates the i18n fields (locale, time zone, and calendar id) on the given service context object.

    `static [ServiceContext](ServiceContext.html "interface in com.appiancorp.services")`

    `[populateServiceContextI18nSettings](#populateServiceContextI18nSettings\(com.appiancorp.services.ServiceContext,java.util.Locale,boolean\))([ServiceContext](ServiceContext.html "interface in com.appiancorp.services") sc, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") overrideLocale, boolean allowOverrideForDisabledLocale)`

    Populates the i18n fields (locale, time zone, and calendar id) on the given service context object.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### ADMIN\_USERNAME

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ADMIN\_USERNAME

        See Also:

        -   [Constant Field Values](../../../constant-values.html#com.appiancorp.services.ServiceContextFactory.ADMIN_USERNAME)

-   ## Constructor Details

    -   ### ServiceContextFactory

        public ServiceContextFactory()

-   ## Method Details

    -   ### getAdministratorUser

        public static [User](../suiteapi/personalization/User.html "class in com.appiancorp.suiteapi.personalization") getAdministratorUser()

        Retrieves the user that is the system administrator. This method can be used to consume a service as the administrator, but should obviously be used sparingly for security reasons.

        Returns:

        a user who is the system administrator

    -   ### getAdministratorServiceContext

        public static [ServiceContext](ServiceContext.html "interface in com.appiancorp.services") getAdministratorServiceContext()

        Retrieves a service context for an anonymous system administrator. This method can be used to consume a service as the administrator, but should obviously be used sparingly for security reasons.

        Returns:

        an anonymous administrator service context

    -   ### getAdministratorServiceContextForMigration

        public static [ServiceContext](ServiceContext.html "interface in com.appiancorp.services") getAdministratorServiceContextForMigration()

        Retrieves a service context for an anonymous system administrator, to be used for migration of EXISTING objects in the system. Other code may provide migration-specific behavior in response to a service context marked for migration (e.g. the Content engine will not set the modified timestamp, last modifier, or version UUID when creating/updating content objects with a service context marked for migration). WARNING! DO NOT USE this service context for non-migration code or when doing anything other than migrating existing objects in the system! WARNING! DO NOT USE this service context for creating NEW objects in the system, even during migration!

        Returns:

        an anonymous administrator service context

    -   ### getUser

        public static [User](../suiteapi/personalization/User.html "class in com.appiancorp.suiteapi.personalization") getUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName\_)

        Creates a user object whose username is the given name. This object can then be used to obtain a `ServiceContext`.

        Parameters:

        `userName_` - the username to use

        Returns:

        a `User` with the given username

    -   ### getServiceContext

        public static [ServiceContext](ServiceContext.html "interface in com.appiancorp.services") getServiceContext(com.appiancorp.services.ASLIdentity id)

        Gets a service context for the ASLIdentity passed in. The locale and timezone will NOT be automatically populated if this method is used to generate the service context, and must be manually populated. Some service methods do not work if these fields are not populated.

        Parameters:

        `id` - the ASLIdentity for which to create the service context

        Returns:

        the newly created service context

    -   ### getServiceContext

        public static [ServiceContext](ServiceContext.html "interface in com.appiancorp.services") getServiceContext([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)

        Gets a service context for the username passed in. The locale and timezone will NOT be automatically populated if this method is used to generate the service context, and must be manually populated. Some service methods do not work if these fields are not populated.

        Parameters:

        `username` - the username of the user for which to create the service context

        Returns:

        the newly created service context

    -   ### createEscalatedServiceContext

        public static [EscalatedServiceContext](EscalatedServiceContext.html "class in com.appiancorp.services") createEscalatedServiceContext([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") grantorUsername)

        Similar to [`getServiceContext(String)`](#getServiceContext\(java.lang.String\)), but also populates the grantor

        Parameters:

        `username` - the username of the user for which to create the service context

        `grantorUsername` - the username of the user granting permissions to the main user for privilege escalation

        Returns:

        the newly created service context

    -   ### createEscalatedServiceContext

        public static [EscalatedServiceContext](EscalatedServiceContext.html "class in com.appiancorp.services") createEscalatedServiceContext([ServiceContext](ServiceContext.html "interface in com.appiancorp.services") sc, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") grantorUsername)

        Create ServiceContext based on sc that is escalated with the privileges of grantorUsername

        Parameters:

        `sc` - original ServiceContext where identity, locale, timezone and calendarId are copied from

        `grantorUsername` - the name of the grantor for privilege escalation

        Returns:

    -   ### populateServiceContextI18nSettings

        public static [ServiceContext](ServiceContext.html "interface in com.appiancorp.services") populateServiceContextI18nSettings([ServiceContext](ServiceContext.html "interface in com.appiancorp.services") sc, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") overrideLocale, boolean allowOverrideForDisabledLocale)

        Populates the i18n fields (locale, time zone, and calendar id) on the given service context object. If we do not detect an overridden locale, then the i18n settings are set using the user's preferences. Finally, if the users's preferences are not enabled for the site, the site defaults will be used.

        Parameters:

        `sc` - A service context object.

        `overrideLocale` - Locale object to override

        `allowOverrideForDisabledLocale` - Boolean to decide if the locale is enabled or not before override. Override always if true, otherwise override only if the locale is enabled.

        Returns:

        The given service context object but with the i18n fields set.

    -   ### populateServiceContextI18nSettings

        public static [ServiceContext](ServiceContext.html "interface in com.appiancorp.services") populateServiceContextI18nSettings([ServiceContext](ServiceContext.html "interface in com.appiancorp.services") sc, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") overrideLocale)

        Populates the i18n fields (locale, time zone, and calendar id) on the given service context object. If we do not detect an overridden locale, then the i18n settings are set using the user's preferences. If we detect an overridden locale but the locale is not enabled to the user, then the i18n settings are set using the user's preferences. Finally, if the users's preferences are not enabled for the site, the site defaults will be used.

        Parameters:

        `sc` - A service context object.

        `overrideLocale` - Locale object to override

        Returns:

        The given service context object but with the i18n fields set.

    -   ### populateServiceContextI18nSettings

        public static [ServiceContext](ServiceContext.html "interface in com.appiancorp.services") populateServiceContextI18nSettings([ServiceContext](ServiceContext.html "interface in com.appiancorp.services") sc)

        Populates the i18n fields (locale, time zone, and calendar id) on the given service context object. Directly checks Spring for if an override locale has been set since some legacy services may call this method from places that are not Spring aware. Because of this possibility, we aggressively null check to avoid expensive try/catch blocks in this section of the code. Non-Spring aware places calling this method would kill the overridden locale if we did not check to see if one is set. If we do not detect an overridden locale, then the i18n settings are set using the user's preferences. Finally, if the users's preferences are not enabled for the site, the site defaults will be used.

        Parameters:

        `sc` - A service context object.

        Returns:

        The given service context object but with the i18n fields set.

    -   ### areI18nSettingsPopulated

        public static boolean areI18nSettingsPopulated([ServiceContext](ServiceContext.html "interface in com.appiancorp.services") sc)