---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/SiteCalendarSettings.html
original_path: api/com/appiancorp/suiteapi/portal/SiteCalendarSettings.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.portal](package-summary.html)

# Class SiteCalendarSettings

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.portal.SiteCalendarSettings

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class SiteCalendarSettings extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Bean to hold the application calendar settings.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.portal.SiteCalendarSettings)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[SiteCalendarSettings](#%3Cinit%3E\(\))()`

    `[SiteCalendarSettings](#%3Cinit%3E\(com.appiancorp.suiteapi.portal.SiteCalendarSettings\))([SiteCalendarSettings](SiteCalendarSettings.html "class in com.appiancorp.suiteapi.portal") siteCalendarSettings)`

    Create copy of SiteCalendarSettings object.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getPrimaryCalendarID](#getPrimaryCalendarID\(\))()`

    `int`

    `[hashCode](#hashCode\(\))()`

    `boolean`

    `[isSitewideCalendar](#isSitewideCalendar\(\))()`

    `void`

    `[setPrimaryCalendarID](#setPrimaryCalendarID\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") primaryCalendarID)`

    `void`

    `[setSitewideCalendar](#setSitewideCalendar\(boolean\))(boolean sitewideCalendar)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### SiteCalendarSettings

        public SiteCalendarSettings()

    -   ### SiteCalendarSettings

        public SiteCalendarSettings([SiteCalendarSettings](SiteCalendarSettings.html "class in com.appiancorp.suiteapi.portal") siteCalendarSettings)

        Create copy of SiteCalendarSettings object. Used to ensure that the object stored in the cache is not directly modified.

        Parameters:

        `siteCalendarSettings` - Calendar Settings to create a clone of.

-   ## Method Details

    -   ### isSitewideCalendar

        public boolean isSitewideCalendar()

    -   ### setSitewideCalendar

        public void setSitewideCalendar(boolean sitewideCalendar)

    -   ### getPrimaryCalendarID

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getPrimaryCalendarID()

    -   ### setPrimaryCalendarID

        public void setPrimaryCalendarID([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") primaryCalendarID)

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`