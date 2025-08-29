---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/personalization/UserPreferences.html
original_path: api/com/appiancorp/suiteapi/personalization/UserPreferences.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.personalization](package-summary.html)

# Class UserPreferences

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.personalization.UserPreferences

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class UserPreferences extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.personalization.UserPreferences)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[UserPreferences](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCalendarID](#getCalendarID\(\))()`

    Returns the calendar specific to user

    `[Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util")`

    `[getLocale](#getLocale\(\))()`

    `[TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util")`

    `[getTimeZone](#getTimeZone\(\))()`

    `int`

    `[hashCode](#hashCode\(\))()`

    `void`

    `[setCalendarID](#setCalendarID\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") calendarID_)`

    Sets the calendar specific to the user

    `void`

    `[setLocale](#setLocale\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale_)`

    `void`

    `[setTimeZone](#setTimeZone\(java.util.TimeZone\))([TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util") timeZone_)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### UserPreferences

        public UserPreferences()

-   ## Method Details

    -   ### getCalendarID

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCalendarID()

        Returns the calendar specific to user

        Returns:

        user's calendar

    -   ### setCalendarID

        public void setCalendarID([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") calendarID\_)

        Sets the calendar specific to the user

        Parameters:

        `calendar_` - calendar for user

    -   ### getTimeZone

        public [TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util") getTimeZone()

        Returns:

        Returns the timezone.

    -   ### setTimeZone

        public void setTimeZone([TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util") timeZone\_)

        Parameters:

        `timeZone_` - The timezone to set.

    -   ### getLocale

        public [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") getLocale()

        Returns:

        Returns the locale.

    -   ### setLocale

        public void setLocale([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale\_)

        Parameters:

        `locale_` - The locale to set.

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`