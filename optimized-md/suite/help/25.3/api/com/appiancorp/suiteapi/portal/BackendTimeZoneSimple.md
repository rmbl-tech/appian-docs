---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/BackendTimeZoneSimple.html
original_path: api/com/appiancorp/suiteapi/portal/BackendTimeZoneSimple.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.portal](package-summary.html)

# Class BackendTimeZoneSimple

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.portal.BackendTimeZoneSimple

Direct Known Subclasses:

`[BackendTimeZone](BackendTimeZone.html "class in com.appiancorp.suiteapi.portal")`

* * *

public class BackendTimeZoneSimple extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[displayName](#displayName)`

    Display Name Displayed Name for [`BackendTimeZoneSimple`](BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal"), e.g., Eastern Time

    `protected int`

    `[dstSavings](#dstSavings)`

    DST Savings Time offset in milliseconds between Daylight Savings and Standard time for [`BackendTimeZoneSimple`](BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal")

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[id](#id)`

    Timezone ID ID of the [`BackendTimeZoneSimple`](BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal") (e.g., America/New York)

    `protected [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[longDaylight](#longDaylight)`

    Long Daylight Savings Daylight Savings long form for [`BackendTimeZoneSimple`](BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal"), e.g., Eastern Daylight Time

    `protected [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[longStandard](#longStandard)`

    Long Standard Long form for Standard [`BackendTimeZoneSimple`](BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal"), e.g., Eastern Standard Time

    `protected int`

    `[rawOffset](#rawOffset)`

    Raw Offset Milliseconds offset between [`BackendTimeZoneSimple`](BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal") and Greenwich Mean Time

    `protected [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[shortDaylight](#shortDaylight)`

    Short Daylight Savings Daylight Savings abbreviation for [`BackendTimeZoneSimple`](BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal"), e.g., EDT

    `protected [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[shortStandard](#shortStandard)`

    Short Standard Standard abbreviation for [`BackendTimeZoneSimple`](BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal"), e.g., EST

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[BackendTimeZoneSimple](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[getDisplayName](#getDisplayName\(\))()`

    `int`

    `[getDstSavings](#getDstSavings\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    `[LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[getLongDaylight](#getLongDaylight\(\))()`

    `[LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[getLongStandard](#getLongStandard\(\))()`

    `int`

    `[getRawOffset](#getRawOffset\(\))()`

    `[LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[getShortDaylight](#getShortDaylight\(\))()`

    `[LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[getShortStandard](#getShortStandard\(\))()`

    `void`

    `[setDisplayName](#setDisplayName\(com.appiancorp.suiteapi.common.LocaleString\))([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") displayName)`

    `void`

    `[setDstSavings](#setDstSavings\(int\))(int dstSavings_)`

    `void`

    `[setId](#setId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id_)`

    `void`

    `[setLongDaylight](#setLongDaylight\(com.appiancorp.suiteapi.common.LocaleString\))([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") longDaylight_)`

    `void`

    `[setLongStandard](#setLongStandard\(com.appiancorp.suiteapi.common.LocaleString\))([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") longStandard_)`

    `void`

    `[setRawOffset](#setRawOffset\(int\))(int rawOffset_)`

    `void`

    `[setShortDaylight](#setShortDaylight\(com.appiancorp.suiteapi.common.LocaleString\))([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") shortDaylight_)`

    `void`

    `[setShortStandard](#setShortStandard\(com.appiancorp.suiteapi.common.LocaleString\))([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") shortStandard_)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    To String Returns human-readable [`BackendTimeZoneSimple`](BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal"), including ID, offset from GMT (in milliseconds), and savings during DST (in milliseconds)

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### id

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id

        Timezone ID ID of the [`BackendTimeZoneSimple`](BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal") (e.g., America/New York)

    -   ### shortDaylight

        protected [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") shortDaylight

        Short Daylight Savings Daylight Savings abbreviation for [`BackendTimeZoneSimple`](BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal"), e.g., EDT

    -   ### shortStandard

        protected [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") shortStandard

        Short Standard Standard abbreviation for [`BackendTimeZoneSimple`](BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal"), e.g., EST

    -   ### longDaylight

        protected [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") longDaylight

        Long Daylight Savings Daylight Savings long form for [`BackendTimeZoneSimple`](BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal"), e.g., Eastern Daylight Time

    -   ### longStandard

        protected [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") longStandard

        Long Standard Long form for Standard [`BackendTimeZoneSimple`](BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal"), e.g., Eastern Standard Time

    -   ### displayName

        protected [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") displayName

        Display Name Displayed Name for [`BackendTimeZoneSimple`](BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal"), e.g., Eastern Time

    -   ### dstSavings

        protected int dstSavings

        DST Savings Time offset in milliseconds between Daylight Savings and Standard time for [`BackendTimeZoneSimple`](BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal")

    -   ### rawOffset

        protected int rawOffset

        Raw Offset Milliseconds offset between [`BackendTimeZoneSimple`](BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal") and Greenwich Mean Time

-   ## Constructor Details

    -   ### BackendTimeZoneSimple

        public BackendTimeZoneSimple()

-   ## Method Details

    -   ### getDstSavings

        public int getDstSavings()

    -   ### setDstSavings

        public void setDstSavings(int dstSavings\_)

    -   ### getId

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getId()

    -   ### setId

        public void setId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id\_)

    -   ### getRawOffset

        public int getRawOffset()

    -   ### setRawOffset

        public void setRawOffset(int rawOffset\_)

    -   ### getShortDaylight

        public [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") getShortDaylight()

    -   ### setShortDaylight

        public void setShortDaylight([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") shortDaylight\_)

    -   ### getLongDaylight

        public [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") getLongDaylight()

    -   ### setLongDaylight

        public void setLongDaylight([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") longDaylight\_)

    -   ### getLongStandard

        public [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") getLongStandard()

    -   ### setLongStandard

        public void setLongStandard([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") longStandard\_)

    -   ### getShortStandard

        public [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") getShortStandard()

    -   ### setShortStandard

        public void setShortStandard([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") shortStandard\_)

    -   ### getDisplayName

        public [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") getDisplayName()

    -   ### setDisplayName

        public void setDisplayName([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") displayName)

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        To String Returns human-readable [`BackendTimeZoneSimple`](BackendTimeZoneSimple.html "class in com.appiancorp.suiteapi.portal"), including ID, offset from GMT (in milliseconds), and savings during DST (in milliseconds)

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`