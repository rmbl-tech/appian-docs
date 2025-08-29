---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/gui/Lane.html
original_path: api/com/appiancorp/suiteapi/process/gui/Lane.html
version: "25.3"
title: "Class Lane"
page_id: "api/com/appiancorp/suiteapi/process/gui/Lane"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.gui](package-summary.html)

# Class Lane

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.gui.Lane

All Implemented Interfaces:

`[AppianTypeHolder](../AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class Lane extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [AppianTypeHolder](../AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.gui.Lane)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Lane](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[fillInAppianTypes](#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))([AppianTypeCache](../AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache)`

    If the implementing class references any Appian-typed objects (such as User, Group, Folder), this method should be implemented to put the primary keys of these objects in the given cache.

    `[Assignment](../Assignment.html "class in com.appiancorp.suiteapi.process")`

    `[getAssign](#getAssign\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getColor](#getColor\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getDimension](#getDimension\(\))()`

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[getIsLaneAssignment](#getIsLaneAssignment\(\))()`

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[getIsVertical](#getIsVertical\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLabel](#getLabel\(\))()`

    `[Label](Label.html "class in com.appiancorp.suiteapi.process.gui")`

    `[getLabelStyle](#getLabelStyle\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getRunAs](#getRunAs\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getUnattended](#getUnattended\(\))()`

    Is this Lane unattended?

    `static void`

    `[mergeDbAndFsLanes](#mergeDbAndFsLanes\(com.appiancorp.suiteapi.process.gui.Lane,com.appiancorp.suiteapi.process.gui.Lane\))([Lane](Lane.html "class in com.appiancorp.suiteapi.process.gui") dbLane, [Lane](Lane.html "class in com.appiancorp.suiteapi.process.gui") fsLane)`

    `void`

    `[setAssign](#setAssign\(com.appiancorp.suiteapi.process.Assignment\))([Assignment](../Assignment.html "class in com.appiancorp.suiteapi.process") assign)`

    `void`

    `[setColor](#setColor\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") color)`

    `void`

    `[setDimension](#setDimension\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") dimension)`

    `void`

    `[setIsLaneAssignment](#setIsLaneAssignment\(java.lang.Boolean\))([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") isLaneAssignment)`

    `void`

    `[setIsVertical](#setIsVertical\(java.lang.Boolean\))([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") isVertical)`

    `void`

    `[setLabel](#setLabel\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") label)`

    `void`

    `[setLabelStyle](#setLabelStyle\(com.appiancorp.suiteapi.process.gui.Label\))([Label](Label.html "class in com.appiancorp.suiteapi.process.gui") labelStyle)`

    `void`

    `[setRunAs](#setRunAs\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") runAs)`

    `void`

    `[setUnattended](#setUnattended\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") unattended)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Lane

        public Lane()

-   ## Method Details

    -   ### getAssign

        public [Assignment](../Assignment.html "class in com.appiancorp.suiteapi.process") getAssign()

    -   ### setAssign

        public void setAssign([Assignment](../Assignment.html "class in com.appiancorp.suiteapi.process") assign)

    -   ### getColor

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getColor()

    -   ### setColor

        public void setColor([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") color)

    -   ### getDimension

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getDimension()

    -   ### setDimension

        public void setDimension([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") dimension)

    -   ### getIsVertical

        public [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") getIsVertical()

    -   ### setIsVertical

        public void setIsVertical([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") isVertical)

    -   ### getLabel

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLabel()

    -   ### setLabel

        public void setLabel([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") label)

    -   ### getIsLaneAssignment

        public [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") getIsLaneAssignment()

    -   ### setIsLaneAssignment

        public void setIsLaneAssignment([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") isLaneAssignment)

    -   ### getRunAs

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getRunAs()

    -   ### setRunAs

        public void setRunAs([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") runAs)

    -   ### getUnattended

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getUnattended()

        Is this Lane unattended?

        Returns:

        Long.valueOf(0) for attended, Long.valueOf(1) for unattended

    -   ### setUnattended

        public void setUnattended([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") unattended)

    -   ### getLabelStyle

        public [Label](Label.html "class in com.appiancorp.suiteapi.process.gui") getLabelStyle()

    -   ### setLabelStyle

        public void setLabelStyle([Label](Label.html "class in com.appiancorp.suiteapi.process.gui") labelStyle)

    -   ### mergeDbAndFsLanes

        public static void mergeDbAndFsLanes([Lane](Lane.html "class in com.appiancorp.suiteapi.process.gui") dbLane, [Lane](Lane.html "class in com.appiancorp.suiteapi.process.gui") fsLane)

    -   ### fillInAppianTypes

        public void fillInAppianTypes([AppianTypeCache](../AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache)

        Description copied from interface: `[AppianTypeHolder](../AppianTypeHolder.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))`

        If the implementing class references any Appian-typed objects (such as User, Group, Folder), this method should be implemented to put the primary keys of these objects in the given cache. Later, the cache will populate itself with the display strings that correspond to all of its ids, such as "Human Resources" for group 9.

        Specified by:

        `[fillInAppianTypes](../AppianTypeHolder.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))` in interface `[AppianTypeHolder](../AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`

        Parameters:

        `cache` - cache of Appian-typed objects.