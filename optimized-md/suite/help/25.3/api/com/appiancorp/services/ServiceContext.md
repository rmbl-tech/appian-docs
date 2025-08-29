---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/services/ServiceContext.html
original_path: api/com/appiancorp/services/ServiceContext.html
version: "25.3"
---

Package [com.appiancorp.services](package-summary.html)

# Interface ServiceContext

All Superinterfaces:

`[Principal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html "class or interface in java.security")`, `com.appiancorp.asl3.servicefw.connect.ServiceContext`

All Known Subinterfaces:

`[KougarServiceContext](KougarServiceContext.html "interface in com.appiancorp.services")`

All Known Implementing Classes:

`[AbstractServiceContext](AbstractServiceContext.html "class in com.appiancorp.services")`, `[EscalatedServiceContext](EscalatedServiceContext.html "class in com.appiancorp.services")`, `[UserServiceContext](UserServiceContext.html "class in com.appiancorp.services")`, `[WebServiceContext](WebServiceContext.html "class in com.appiancorp.services")`

* * *

public interface ServiceContext extends [Principal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html "class or interface in java.security"), com.appiancorp.asl3.servicefw.connect.ServiceContext

The context used to borrow services from the service provider. The context contains the following user information which sent to the database:

-   Username
-   Locale
-   Timezone

The service context also provides attribute storage and retrieval and a caching mechanism for reusing service instances obtained multiple times with the same service context.

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addService](#addService\(java.lang.String,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") service_)`

    Adds the specified `Service` to the service cache under the `serviceName_` key specified.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getAttribute](#getAttribute\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key_)`

    Gets the attribute at the specified key.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCalendarID](#getCalendarID\(\))()`

    Gets the calendar ID, which is used to calculate date in that calendar.

    `com.appiancorp.asl3.servicefw.connect.ASLIdentity`

    `[getIdentity](#getIdentity\(\))()`

    Deprecated.

    Use [`getName()`](#getName\(\)) instead.

    `[Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util")`

    `[getLocale](#getLocale\(\))()`

    Gets the locale, which affects which language the database will return for multilingual strings.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Returns the username of the user represented by this context.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getService](#getService\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName_)`

    Retrieves `Service` specified by the given service name from cache.

    `[TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util")`

    `[getTimeZone](#getTimeZone\(\))()`

    Gets the timezone, which the database uses for time conversions to and from GMT.

    `boolean`

    `[isDesignatedForMigration](#isDesignatedForMigration\(\))()`

    Whether this service context has been designated for migration of objects in the system.

    `boolean`

    `[isRtl](#isRtl\(\))()`

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[removeAttribute](#removeAttribute\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key_)`

    Removes the attribute at the specified key from the attribute map.

    `void`

    `[removeService](#removeService\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName_)`

    Removes the specified service from the service cache.

    `void`

    `[setAttribute](#setAttribute\(java.lang.String,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value_)`

    Sets the attribute at the specified key to the specified value.

    `void`

    `[setCalendarID](#setCalendarID\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") calendarID_)`

    Sets the ID of the calendar, which is used to calculate date in that calendar.

    `void`

    `[setLocale](#setLocale\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale_)`

    Sets the locale, which affects which language the database will return for multilingual strings.

    `void`

    `[setTimeZone](#setTimeZone\(java.util.TimeZone\))([TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util") timeZone_)`

    Sets the timezone, which the database uses for time conversions to and from GMT.

    ### Methods inherited from interface java.security.[Principal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html "class or interface in java.security")

    `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#equals\(java.lang.Object\) "class or interface in java.security"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#hashCode\(\) "class or interface in java.security"), [implies](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#implies\(javax.security.auth.Subject\) "class or interface in java.security"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#toString\(\) "class or interface in java.security")`

-   ## Method Details

    -   ### getName

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Returns the username of the user represented by this context.

        Specified by:

        `[getName](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html#getName\(\) "class or interface in java.security")` in interface `[Principal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/security/Principal.html "class or interface in java.security")`

        Returns:

        the username for this context

    -   ### getService

        [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getService([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName\_)

        Retrieves `Service` specified by the given service name from cache.

        Specified by:

        `getService` in interface `com.appiancorp.asl3.servicefw.connect.ServiceContext`

        Parameters:

        `serviceName_` - the service name

        Returns:

        the service

        See Also:

        -   [`addService(String, Object)`](#addService\(java.lang.String,java.lang.Object\))
        -   [`removeService(String)`](#removeService\(java.lang.String\))

    -   ### addService

        void addService([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") service\_)

        Adds the specified `Service` to the service cache under the `serviceName_` key specified. If the key already exists, then it is overwritten with the new value.

        Specified by:

        `addService` in interface `com.appiancorp.asl3.servicefw.connect.ServiceContext`

        Parameters:

        `serviceName_` - the name of the service

        `service_` - the service

        See Also:

        -   [`getService(String)`](#getService\(java.lang.String\))
        -   [`removeService(String)`](#removeService\(java.lang.String\))

    -   ### removeService

        void removeService([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") serviceName\_)

        Removes the specified service from the service cache.

        Specified by:

        `removeService` in interface `com.appiancorp.asl3.servicefw.connect.ServiceContext`

        Parameters:

        `serviceName_` - the name of the service

        See Also:

        -   [`getService(String)`](#getService\(java.lang.String\))
        -   [`addService(String, Object)`](#addService\(java.lang.String,java.lang.Object\))

    -   ### getIdentity

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") com.appiancorp.asl3.servicefw.connect.ASLIdentity getIdentity()

        Deprecated.

        Use [`getName()`](#getName\(\)) instead.

        Returns the `ASLIdentity` object that was used to create the `ServiceContext`.

        Specified by:

        `getIdentity` in interface `com.appiancorp.asl3.servicefw.connect.ServiceContext`

        Returns:

        the `ASLIdentity` used to create the `ServiceContext`

    -   ### setAttribute

        void setAttribute([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value\_)

        Sets the attribute at the specified key to the specified value.

        Specified by:

        `setAttribute` in interface `com.appiancorp.asl3.servicefw.connect.ServiceContext`

        Parameters:

        `key_` - the key

        `value_` - the value

        See Also:

        -   [`getAttribute(String)`](#getAttribute\(java.lang.String\))

    -   ### getAttribute

        [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getAttribute([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key\_)

        Gets the attribute at the specified key.

        Specified by:

        `getAttribute` in interface `com.appiancorp.asl3.servicefw.connect.ServiceContext`

        Parameters:

        `key_` - the key

        Returns:

        the attribute value

        See Also:

        -   [`setAttribute(String, Object)`](#setAttribute\(java.lang.String,java.lang.Object\))

    -   ### removeAttribute

        [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") removeAttribute([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key\_)

        Removes the attribute at the specified key from the attribute map.

        Specified by:

        `removeAttribute` in interface `com.appiancorp.asl3.servicefw.connect.ServiceContext`

        Parameters:

        `key_` - the key

        Returns:

        the attribute value before it was removed

        See Also:

        -   [`setAttribute(String, Object)`](#setAttribute\(java.lang.String,java.lang.Object\))
        -   [`getAttribute(String)`](#getAttribute\(java.lang.String\))

    -   ### setLocale

        void setLocale([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale\_)

        Sets the locale, which affects which language the database will return for multilingual strings.

        Specified by:

        `setLocale` in interface `com.appiancorp.asl3.servicefw.connect.ServiceContext`

        Parameters:

        `locale_` - the locale

        See Also:

        -   [`getLocale()`](#getLocale\(\))

    -   ### getLocale

        [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") getLocale()

        Gets the locale, which affects which language the database will return for multilingual strings.

        Specified by:

        `getLocale` in interface `com.appiancorp.asl3.servicefw.connect.ServiceContext`

        Returns:

        the locale

        See Also:

        -   [`setLocale(Locale)`](#setLocale\(java.util.Locale\))

    -   ### setTimeZone

        void setTimeZone([TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util") timeZone\_)

        Sets the timezone, which the database uses for time conversions to and from GMT.

        Specified by:

        `setTimeZone` in interface `com.appiancorp.asl3.servicefw.connect.ServiceContext`

        Parameters:

        `timeZone_` - the timezone

        See Also:

        -   [`getTimeZone()`](#getTimeZone\(\))

    -   ### getTimeZone

        [TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util") getTimeZone()

        Gets the timezone, which the database uses for time conversions to and from GMT.

        Specified by:

        `getTimeZone` in interface `com.appiancorp.asl3.servicefw.connect.ServiceContext`

        Returns:

        the timezone

        See Also:

        -   [`setTimeZone(TimeZone)`](#setTimeZone\(java.util.TimeZone\))

    -   ### setCalendarID

        void setCalendarID([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") calendarID\_)

        Sets the ID of the calendar, which is used to calculate date in that calendar.

        Parameters:

        `calendar_` - the calendarID

        See Also:

        -   `#getCalendar()`

    -   ### getCalendarID

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCalendarID()

        Gets the calendar ID, which is used to calculate date in that calendar.

        Returns:

        the Calendar ID

        See Also:

        -   `#setCalendar(String)`

    -   ### isDesignatedForMigration

        boolean isDesignatedForMigration()

        Whether this service context has been designated for migration of objects in the system.

        Returns:

        whether the service context is designated for migration

    -   ### isRtl

        boolean isRtl()