---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/TypedVariableUtils.html
original_path: api/com/appiancorp/suiteapi/process/TypedVariableUtils.html
version: "25.3"
title: "Class TypedVariableUtils"
page_id: "api/com/appiancorp/suiteapi/process/TypedVariableUtils"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class TypedVariableUtils

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.TypedVariableUtils

* * *

public class TypedVariableUtils extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Utility class for TypedVariables

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static class` 

    `[TypedVariableUtils.People](TypedVariableUtils.People.html "class in com.appiancorp.suiteapi.process")`

    Class representing groups and/or users

-   ## Method Summary

    All MethodsStatic MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")[]`

    `[convertNTVsToTVs](#convertNTVsToTVs\(com.appiancorp.suiteapi.type.NamedTypedValue%5B%5D\))([NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")[] ntvs)`

    `static [NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")[]`

    `[convertTVsToNTVs](#convertTVsToNTVs\(com.appiancorp.suiteapi.process.TypedVariable%5B%5D\))([TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")[] tvs)`

    `static [TypedVariableUtils.People](TypedVariableUtils.People.html "class in com.appiancorp.suiteapi.process")`

    `[decodePeopleObjects](#decodePeopleObjects\(com.appiancorp.suiteapi.common.LocalObject%5B%5D\))([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")[] both_)`

    Decodes people objects from a local object array

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Method Details

    -   ### decodePeopleObjects

        public static [TypedVariableUtils.People](TypedVariableUtils.People.html "class in com.appiancorp.suiteapi.process") decodePeopleObjects([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")\[\] both\_)

        Decodes people objects from a local object array

        Parameters:

        `both_` - LocalObject array to decode people objects from

        Returns:

        an array of `People` objects decoded from the provided local objects

    -   ### convertNTVsToTVs

        public static [TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")\[\] convertNTVsToTVs([NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\[\] ntvs)

    -   ### convertTVsToNTVs

        public static [NamedTypedValue](../type/NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\[\] convertTVsToNTVs([TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process")\[\] tvs)