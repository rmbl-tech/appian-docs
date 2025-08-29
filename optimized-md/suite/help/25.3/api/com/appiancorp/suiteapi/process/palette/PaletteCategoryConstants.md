---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/palette/PaletteCategoryConstants.html
original_path: api/com/appiancorp/suiteapi/process/palette/PaletteCategoryConstants.html
version: "25.3"
title: "Class PaletteCategoryConstants"
page_id: "api/com/appiancorp/suiteapi/process/palette/PaletteCategoryConstants"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.palette](package-summary.html)

# Class PaletteCategoryConstants

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.palette.PaletteCategoryConstants

* * *

public abstract class PaletteCategoryConstants extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Defines the different palette categories that can be used on a custom smart service

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[APPIAN_SMART_SERVICES](#APPIAN_SMART_SERVICES)`

    Deprecated.

    This constant may be removed from the public API in a future release.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[AUTOMATION_SMART_SERVICES](#AUTOMATION_SMART_SERVICES)`

    This constant can be used on a custom smart service to designate that it should appear in the palette in the palette category "Automation Smart Services".

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[DEPRECATED_SERVICES](#DEPRECATED_SERVICES)`

    Use this for deprecated, hidden from the palette but visible in the search, services.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[HIDDEN_CATEGORY](#HIDDEN_CATEGORY)`

    Use this as the value for the `paletteCategory` attribute of the [`PaletteInfo`](PaletteInfo.html "annotation interface in com.appiancorp.suiteapi.process.palette") annotation to hide a a smart service from the palette.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[INTEGRATION_SERVICES](#INTEGRATION_SERVICES)`

    Deprecated.

    This constant may be removed from the public API in a future release.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[STANDARD_NODES](#STANDARD_NODES)`

    Deprecated.

    This constant may be removed from the public API in a future release.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[WORKFLOW](#WORKFLOW)`

    This constant can be used on a custom smart service to designate that it should appear in the palette in the palette category "Workflow".

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[PaletteCategoryConstants](#%3Cinit%3E\(\))()`

-   ## Method Summary

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### WORKFLOW

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") WORKFLOW

        This constant can be used on a custom smart service to designate that it should appear in the palette in the palette category "Workflow". Use this as the value for the `paletteCategory` attribute of the [`PaletteInfo`](PaletteInfo.html "annotation interface in com.appiancorp.suiteapi.process.palette") annotation.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.palette.PaletteCategoryConstants.WORKFLOW)

    -   ### AUTOMATION\_SMART\_SERVICES

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") AUTOMATION\_SMART\_SERVICES

        This constant can be used on a custom smart service to designate that it should appear in the palette in the palette category "Automation Smart Services". Use this as the value for the `paletteCategory` attribute of the [`PaletteInfo`](PaletteInfo.html "annotation interface in com.appiancorp.suiteapi.process.palette") annotation.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.palette.PaletteCategoryConstants.AUTOMATION_SMART_SERVICES)

    -   ### STANDARD\_NODES

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") STANDARD\_NODES

        Deprecated.

        This constant may be removed from the public API in a future release. Instead use [`WORKFLOW`](#WORKFLOW)

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.palette.PaletteCategoryConstants.STANDARD_NODES)

    -   ### APPIAN\_SMART\_SERVICES

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") APPIAN\_SMART\_SERVICES

        Deprecated.

        This constant may be removed from the public API in a future release. Instead use [`AUTOMATION_SMART_SERVICES`](#AUTOMATION_SMART_SERVICES)

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.palette.PaletteCategoryConstants.APPIAN_SMART_SERVICES)

    -   ### INTEGRATION\_SERVICES

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") INTEGRATION\_SERVICES

        Deprecated.

        This constant may be removed from the public API in a future release. Instead use [`AUTOMATION_SMART_SERVICES`](#AUTOMATION_SMART_SERVICES)

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.palette.PaletteCategoryConstants.INTEGRATION_SERVICES)

    -   ### DEPRECATED\_SERVICES

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") DEPRECATED\_SERVICES

        Use this for deprecated, hidden from the palette but visible in the search, services.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.palette.PaletteCategoryConstants.DEPRECATED_SERVICES)

    -   ### HIDDEN\_CATEGORY

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") HIDDEN\_CATEGORY

        Use this as the value for the `paletteCategory` attribute of the [`PaletteInfo`](PaletteInfo.html "annotation interface in com.appiancorp.suiteapi.process.palette") annotation to hide a a smart service from the palette. This can be useful when deprecating the use of a custom smart service plug-in.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.palette.PaletteCategoryConstants.HIDDEN_CATEGORY)

-   ## Constructor Details

    -   ### PaletteCategoryConstants

        public PaletteCategoryConstants()