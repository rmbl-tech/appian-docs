---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/TypedValueParameterConverter.html
original_path: api/com/appiancorp/suiteapi/common/TypedValueParameterConverter.html
version: "25.3"
title: "Class TypedValueParameterConverter"
page_id: "api/com/appiancorp/suiteapi/common/TypedValueParameterConverter"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class TypedValueParameterConverter

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.TypedValueParameterConverter

All Implemented Interfaces:

`com.appiancorp.kougar.mapper.Converter`, `com.appiancorp.kougar.mapper.parameters.ParameterConverter`

* * *

public class TypedValueParameterConverter extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements com.appiancorp.kougar.mapper.parameters.ParameterConverter

TypedValue Parameter Conversion

-   ## Field Summary

    ### Fields inherited from interface com.appiancorp.kougar.mapper.Converter

    `NULL_DOUBLE, NULL_INT, NULL_INTEGER, NULL_INTEGER_LONG, NULL_STRING`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[TypedValueParameterConverter](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[convert](#convert\(java.lang.Class,java.lang.Object,com.appiancorp.kougar.mapper.ConversionMap\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o, com.appiancorp.kougar.mapper.ConversionMap m)`

    `protected [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[convertInstanceType](#convertInstanceType\(com.appiancorp.kougar.mapper.parameters.ParameterConversionMap,java.lang.Long\))(com.appiancorp.kougar.mapper.parameters.ParameterConversionMap m, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId)`

    `[Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")`

    `[getConversionClass](#getConversionClass\(\))()`

    `[Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")`

    `[getDestinationClass](#getDestinationClass\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### TypedValueParameterConverter

        public TypedValueParameterConverter()

-   ## Method Details

    -   ### convert

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") convert([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o, com.appiancorp.kougar.mapper.ConversionMap m) throws com.appiancorp.kougar.mapper.exceptions.ParameterException

        Specified by:

        `convert` in interface `com.appiancorp.kougar.mapper.Converter`

        Specified by:

        `convert` in interface `com.appiancorp.kougar.mapper.parameters.ParameterConverter`

        Throws:

        `com.appiancorp.kougar.mapper.exceptions.ParameterException`

    -   ### convertInstanceType

        protected [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") convertInstanceType(com.appiancorp.kougar.mapper.parameters.ParameterConversionMap m, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId)

    -   ### getConversionClass

        public [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") getConversionClass()

        Specified by:

        `getConversionClass` in interface `com.appiancorp.kougar.mapper.Converter`

    -   ### getDestinationClass

        public [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") getDestinationClass()

        Specified by:

        `getDestinationClass` in interface `com.appiancorp.kougar.mapper.parameters.ParameterConverter`