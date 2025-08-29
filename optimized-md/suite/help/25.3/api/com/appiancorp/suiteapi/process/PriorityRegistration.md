---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/PriorityRegistration.html
original_path: api/com/appiancorp/suiteapi/process/PriorityRegistration.html
version: "25.3"
title: "Class PriorityRegistration"
page_id: "api/com/appiancorp/suiteapi/process/PriorityRegistration"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class PriorityRegistration

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.PriorityRegistration

* * *

public class PriorityRegistration extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[PriorityRegistration](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Priority](Priority.html "class in com.appiancorp.suiteapi.process")`

    `[copyNonLocalizedFieldsOnly](#copyNonLocalizedFieldsOnly\(\))()`

    Creates and returns a new Priority object.

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    `boolean`

    `[getDefault](#getDefault\(\))()`

    Returns whether or not this priority is the default priority in the system.

    `[LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[getDescription](#getDescription\(\))()`

    Returns the description of the priority.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getEffectiveId](#getEffectiveId\(\))()`

    Returns the effective ID for the priority.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getIconId](#getIconId\(\))()`

    Returns the collaboration document ID of the icon associated with this priority.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Returns the id of the priority.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getImageLoc](#getImageLoc\(\))()`

    Returns the location of the image associated with this priority.

    `[LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common")`

    `[getName](#getName\(\))()`

    Returns the name of the priority.

    `int`

    `[hashCode](#hashCode\(\))()`

    `void`

    `[setDefault](#setDefault\(boolean\))(boolean value)`

    Sets whether or not this priority is the default priority in the system.

    `void`

    `[setDescription](#setDescription\(com.appiancorp.suiteapi.common.LocaleString\))([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") description)`

    `void`

    `[setEffectiveId](#setEffectiveId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") effectiveId)`

    `void`

    `[setIconId](#setIconId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") iconId)`

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)`

    `void`

    `[setImageLoc](#setImageLoc\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") imageLoc)`

    `void`

    `[setName](#setName\(com.appiancorp.suiteapi.common.LocaleString\))([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") name)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### PriorityRegistration

        public PriorityRegistration()

-   ## Method Details

    -   ### copyNonLocalizedFieldsOnly

        public [Priority](Priority.html "class in com.appiancorp.suiteapi.process") copyNonLocalizedFieldsOnly()

        Creates and returns a new Priority object. The returned object's "non-localized" fields will be set to point to this object's corresponding fields. Non-localized fields are all the fields that are not LocaleString fields and are not String fields holding bundle keys.

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Returns the id of the priority.

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)

    -   ### getName

        public [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") getName()

        Returns the name of the priority.

    -   ### setName

        public void setName([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") name)

    -   ### getDescription

        public [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") getDescription()

        Returns the description of the priority.

    -   ### setDescription

        public void setDescription([LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") description)

    -   ### getIconId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getIconId()

        Returns the collaboration document ID of the icon associated with this priority.

    -   ### setIconId

        public void setIconId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") iconId)

    -   ### getEffectiveId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getEffectiveId()

        Returns the effective ID for the priority. If the priority has not been deregistered, then the effective ID is the same as the ID. If the priority has been deregistered, then the effective ID is the one that corresponds to the next registered priority in the direction of the default priority.

    -   ### setEffectiveId

        public void setEffectiveId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") effectiveId)

    -   ### getDefault

        public boolean getDefault()

        Returns whether or not this priority is the default priority in the system.

    -   ### setDefault

        public void setDefault(boolean value)

        Sets whether or not this priority is the default priority in the system. The system default priority is the last priority registered with the `default` property set to `true`.

    -   ### getImageLoc

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getImageLoc()

        Returns the location of the image associated with this priority.

    -   ### setImageLoc

        public void setImageLoc([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") imageLoc)

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`