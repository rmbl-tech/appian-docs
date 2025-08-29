---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/SiteTimeZoneSettings.html
original_path: api/com/appiancorp/suiteapi/portal/SiteTimeZoneSettings.html
version: "25.3"
title: "Class SiteTimeZoneSettings"
page_id: "api/com/appiancorp/suiteapi/portal/SiteTimeZoneSettings"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.portal](package-summary.html)

# Class SiteTimeZoneSettings

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.portal.SiteTimeZoneSettings

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class SiteTimeZoneSettings extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Bean to hold the application timezone settings.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.portal.SiteTimeZoneSettings)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[SiteTimeZoneSettings](#%3Cinit%3E\(\))()`

    `[SiteTimeZoneSettings](#%3Cinit%3E\(com.appiancorp.suiteapi.portal.SiteTimeZoneSettings\))([SiteTimeZoneSettings](SiteTimeZoneSettings.html "class in com.appiancorp.suiteapi.portal") siteTimeZoneSettings)`

    Create copy of SiteTimeZoneSettings object.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    `[TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util")`

    `[getPrimaryTimeZone](#getPrimaryTimeZone\(\))()`

    See [`setPrimaryTimeZone(TimeZone)`](#setPrimaryTimeZone\(java.util.TimeZone\)).

    `int`

    `[hashCode](#hashCode\(\))()`

    `boolean`

    `[isSitewideTimeZone](#isSitewideTimeZone\(\))()`

    See [`setSitewideTimeZone(boolean)`](#setSitewideTimeZone\(boolean\)).

    `void`

    `[setPrimaryTimeZone](#setPrimaryTimeZone\(java.util.TimeZone\))([TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util") primaryTimeZone_)`

    Set the primary timezone.

    `void`

    `[setSitewideTimeZone](#setSitewideTimeZone\(boolean\))(boolean sitewideTimeZone_)`

    Set whether the primary timezone should be enforced accross the application.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### SiteTimeZoneSettings

        public SiteTimeZoneSettings()

    -   ### SiteTimeZoneSettings

        public SiteTimeZoneSettings([SiteTimeZoneSettings](SiteTimeZoneSettings.html "class in com.appiancorp.suiteapi.portal") siteTimeZoneSettings)

        Create copy of SiteTimeZoneSettings object. Used to ensure that the object stored in the cache is not directly modified.

        Parameters:

        `siteTimeZoneSettings` - Time Zone Settings to create a clone of.

-   ## Method Details

    -   ### getPrimaryTimeZone

        public [TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util") getPrimaryTimeZone()

        See [`setPrimaryTimeZone(TimeZone)`](#setPrimaryTimeZone\(java.util.TimeZone\)).

    -   ### setPrimaryTimeZone

        public void setPrimaryTimeZone([TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util") primaryTimeZone\_)

        Set the primary timezone.

        Parameters:

        `primaryTimeZone_` - A timezone.

    -   ### isSitewideTimeZone

        public boolean isSitewideTimeZone()

        See [`setSitewideTimeZone(boolean)`](#setSitewideTimeZone\(boolean\)).

    -   ### setSitewideTimeZone

        public void setSitewideTimeZone(boolean sitewideTimeZone\_)

        Set whether the primary timezone should be enforced accross the application.

        Parameters:

        `sitewideTimeZone_` - `true` if a single timezone (the primary timezone) should be used accross the application (overriding any user preferences), or `false` if users are allowed to select a timezone different from the primary timezone.

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`