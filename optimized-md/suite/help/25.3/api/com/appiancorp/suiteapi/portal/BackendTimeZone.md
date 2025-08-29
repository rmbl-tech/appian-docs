---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/BackendTimeZone.html
original_path: api/com/appiancorp/suiteapi/portal/BackendTimeZone.html
version: "25.3"
title: "Class BackendTimeZone"
page_id: "api/com/appiancorp/suiteapi/portal/BackendTimeZone"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.portal](package-summary.html)

# Class BackendTimeZone

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.portal.BackendTimeZoneSimple](BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal")

com.appiancorp.suiteapi.portal.BackendTimeZone

* * *

public class BackendTimeZone extends [BackendTimeZoneSimple](BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")[]`

    `[transitions](#transitions)`

    Transitions [`Timestamp`](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") array specifying transitions between Daylight Savings Time and Standard Time

    `protected [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[transitionsOffset](#transitionsOffset)`

    Transitions Offset [`Integer`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") array specifying milliseconds offset by transitions between Daylight Savings Time and Standard Time

    ### Fields inherited from class com.appiancorp.suiteapi.portal.[BackendTimeZoneSimple](BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal")

    `[displayName](BackendTimeZoneSimple.html#displayName), [dstSavings](BackendTimeZoneSimple.html#dstSavings), [id](BackendTimeZoneSimple.html#id), [longDaylight](BackendTimeZoneSimple.html#longDaylight), [longStandard](BackendTimeZoneSimple.html#longStandard), [rawOffset](BackendTimeZoneSimple.html#rawOffset), [shortDaylight](BackendTimeZoneSimple.html#shortDaylight), [shortStandard](BackendTimeZoneSimple.html#shortStandard)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[BackendTimeZone](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")[]`

    `[getTransitions](#getTransitions\(\))()`

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[getTransitionsOffset](#getTransitionsOffset\(\))()`

    `void`

    `[setTransitions](#setTransitions\(java.sql.Timestamp%5B%5D\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")[] transitions_)`

    `void`

    `[setTransitionsOffset](#setTransitionsOffset\(java.lang.Integer%5B%5D\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] offset_)`

    ### Methods inherited from class com.appiancorp.suiteapi.portal.[BackendTimeZoneSimple](BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal")

    `[getDisplayName](BackendTimeZoneSimple.html#getDisplayName\(\)), [getDstSavings](BackendTimeZoneSimple.html#getDstSavings\(\)), [getId](BackendTimeZoneSimple.html#getId\(\)), [getLongDaylight](BackendTimeZoneSimple.html#getLongDaylight\(\)), [getLongStandard](BackendTimeZoneSimple.html#getLongStandard\(\)), [getRawOffset](BackendTimeZoneSimple.html#getRawOffset\(\)), [getShortDaylight](BackendTimeZoneSimple.html#getShortDaylight\(\)), [getShortStandard](BackendTimeZoneSimple.html#getShortStandard\(\)), [setDisplayName](BackendTimeZoneSimple.html#setDisplayName\(com.appiancorp.suiteapi.common.LocaleString\)), [setDstSavings](BackendTimeZoneSimple.html#setDstSavings\(int\)), [setId](BackendTimeZoneSimple.html#setId\(java.lang.String\)), [setLongDaylight](BackendTimeZoneSimple.html#setLongDaylight\(com.appiancorp.suiteapi.common.LocaleString\)), [setLongStandard](BackendTimeZoneSimple.html#setLongStandard\(com.appiancorp.suiteapi.common.LocaleString\)), [setRawOffset](BackendTimeZoneSimple.html#setRawOffset\(int\)), [setShortDaylight](BackendTimeZoneSimple.html#setShortDaylight\(com.appiancorp.suiteapi.common.LocaleString\)), [setShortStandard](BackendTimeZoneSimple.html#setShortStandard\(com.appiancorp.suiteapi.common.LocaleString\)), [toString](BackendTimeZoneSimple.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### transitions

        protected [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")\[\] transitions

        Transitions [`Timestamp`](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") array specifying transitions between Daylight Savings Time and Standard Time

    -   ### transitionsOffset

        protected [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] transitionsOffset

        Transitions Offset [`Integer`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") array specifying milliseconds offset by transitions between Daylight Savings Time and Standard Time

-   ## Constructor Details

    -   ### BackendTimeZone

        public BackendTimeZone()

-   ## Method Details

    -   ### getTransitionsOffset

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] getTransitionsOffset()

    -   ### setTransitionsOffset

        public void setTransitionsOffset([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] offset\_)

    -   ### getTransitions

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")\[\] getTransitions()

    -   ### setTransitions

        public void setTransitions([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")\[\] transitions\_)