---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/Deadline.html
original_path: api/com/appiancorp/suiteapi/process/Deadline.html
version: "25.3"
title: "Class Deadline"
page_id: "api/com/appiancorp/suiteapi/process/Deadline"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class Deadline

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.Deadline

All Implemented Interfaces:

`[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`

* * *

public class Deadline extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[TYPE_ABSOLUTE](#TYPE_ABSOLUTE)`

    `static final int`

    `[TYPE_RELATIVE](#TYPE_RELATIVE)`

    `static final int`

    `[UNITS_DAY](#UNITS_DAY)`

    `static final int`

    `[UNITS_HOUR](#UNITS_HOUR)`

    `static final int`

    `[UNITS_MINUTE](#UNITS_MINUTE)`

    `static final int`

    `[UNITS_MONTH](#UNITS_MONTH)`

    `static final int`

    `[UNITS_WEEK](#UNITS_WEEK)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../common/JSONable.html#hiddenAttributes$TRANSIENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Deadline](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAbsoluteExpression](#getAbsoluteExpression\(\))()`

    `boolean`

    `[getEnabled](#getEnabled\(\))()`

    `[HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util")`

    `[getHiddenAttributes](#getHiddenAttributes\(\))()`

    Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getRelativeExpression](#getRelativeExpression\(\))()`

    `int`

    `[getRelativeUnits](#getRelativeUnits\(\))()`

    `int`

    `[getType](#getType\(\))()`

    `void`

    `[setAbsoluteExpression](#setAbsoluteExpression\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") absoluteExpression_)`

    `void`

    `[setEnabled](#setEnabled\(boolean\))(boolean enabled_)`

    `void`

    `[setRelativeExpression](#setRelativeExpression\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") relativeExpression_)`

    `void`

    `[setRelativeUnits](#setRelativeUnits\(int\))(int relativeUnits_)`

    `void`

    `[setType](#setType\(int\))(int type_)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### TYPE\_RELATIVE

        public static final int TYPE\_RELATIVE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Deadline.TYPE_RELATIVE)

    -   ### TYPE\_ABSOLUTE

        public static final int TYPE\_ABSOLUTE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Deadline.TYPE_ABSOLUTE)

    -   ### UNITS\_MINUTE

        public static final int UNITS\_MINUTE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Deadline.UNITS_MINUTE)

    -   ### UNITS\_HOUR

        public static final int UNITS\_HOUR

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Deadline.UNITS_HOUR)

    -   ### UNITS\_DAY

        public static final int UNITS\_DAY

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Deadline.UNITS_DAY)

    -   ### UNITS\_WEEK

        public static final int UNITS\_WEEK

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Deadline.UNITS_WEEK)

    -   ### UNITS\_MONTH

        public static final int UNITS\_MONTH

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Deadline.UNITS_MONTH)

-   ## Constructor Details

    -   ### Deadline

        public Deadline()

-   ## Method Details

    -   ### getHiddenAttributes

        public [HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util") getHiddenAttributes()

        Description copied from interface: `[JSONable](../common/JSONable.html#getHiddenAttributes\(\))`

        Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

        Specified by:

        `[getHiddenAttributes](../common/JSONable.html#getHiddenAttributes\(\))` in interface `[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the set of hidden attributes

    -   ### getAbsoluteExpression

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAbsoluteExpression()

    -   ### setAbsoluteExpression

        public void setAbsoluteExpression([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") absoluteExpression\_)

    -   ### getEnabled

        public boolean getEnabled()

    -   ### setEnabled

        public void setEnabled(boolean enabled\_)

    -   ### getRelativeExpression

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getRelativeExpression()

    -   ### setRelativeExpression

        public void setRelativeExpression([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") relativeExpression\_)

    -   ### getRelativeUnits

        public int getRelativeUnits()

    -   ### setRelativeUnits

        public void setRelativeUnits(int relativeUnits\_)

    -   ### getType

        public int getType()

    -   ### setType

        public void setType(int type\_)