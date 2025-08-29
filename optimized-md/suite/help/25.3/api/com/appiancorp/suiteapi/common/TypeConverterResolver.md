---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/TypeConverterResolver.html
original_path: api/com/appiancorp/suiteapi/common/TypeConverterResolver.html
version: "25.3"
title: "Class TypeConverterResolver"
page_id: "api/com/appiancorp/suiteapi/common/TypeConverterResolver"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class TypeConverterResolver

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.type.TypeMappingResolver<[TypeConverter](TypeConverter.html "class in com.appiancorp.suiteapi.common")\>

com.appiancorp.suiteapi.common.TypeConverterResolver

* * *

public class TypeConverterResolver extends com.appiancorp.type.TypeMappingResolver<[TypeConverter](TypeConverter.html "class in com.appiancorp.suiteapi.common")\>

This class defines mappings between datatypes and a set of [`TypeConverter`](TypeConverter.html "class in com.appiancorp.suiteapi.common")'s classes used for conversions between frontend and backend data representation.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected static final [TypeConverterResolver](TypeConverterResolver.html "class in com.appiancorp.suiteapi.common")`

    `[INSTANCE](#INSTANCE)`

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `protected`

    `[TypeConverterResolver](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static void`

    `[createTypeConverterMappings](#createTypeConverterMappings\(java.util.Map\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang"),[TypeConverter](TypeConverter.html "class in com.appiancorp.suiteapi.common")> m)`

    `protected final [TypeConverter](TypeConverter.html "class in com.appiancorp.suiteapi.common")`

    `[getSystemTypeMapping](#getSystemTypeMapping\(java.lang.Long,com.appiancorp.type.ExtendedDataTypeProvider\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") datatypeId, com.appiancorp.type.ExtendedDataTypeProvider dtProvider)`

    `static [TypeConverter](TypeConverter.html "class in com.appiancorp.suiteapi.common")`

    `[getTypeConverter](#getTypeConverter\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") datatypeId)`

    BEFORE calling this, check if the Parameter/ReturnConversionMap has a better version to return.

    `static boolean`

    `[hasTypeConverter](#hasTypeConverter\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") datatypeId)`

    ### Methods inherited from class com.appiancorp.type.TypeMappingResolver

    `getApplicationTypeMapping, getTypeMapping`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### INSTANCE

        protected static final [TypeConverterResolver](TypeConverterResolver.html "class in com.appiancorp.suiteapi.common") INSTANCE

-   ## Constructor Details

    -   ### TypeConverterResolver

        protected TypeConverterResolver()

-   ## Method Details

    -   ### getTypeConverter

        public static [TypeConverter](TypeConverter.html "class in com.appiancorp.suiteapi.common") getTypeConverter([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") datatypeId) throws [InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        BEFORE calling this, check if the Parameter/ReturnConversionMap has a better version to return. ONLY call this if it returns null. Returns a [`TypeConverter`](TypeConverter.html "class in com.appiancorp.suiteapi.common") instance that is able to handle the frontend to/from backend data conversions of a datatype's value of type datatypeId.

        Throws:

        `[InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")` - if datatypeId is not a valid type

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if datatypeId is null

    -   ### hasTypeConverter

        public static boolean hasTypeConverter([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") datatypeId)

    -   ### getSystemTypeMapping

        protected final [TypeConverter](TypeConverter.html "class in com.appiancorp.suiteapi.common") getSystemTypeMapping([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") datatypeId, com.appiancorp.type.ExtendedDataTypeProvider dtProvider) throws [InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Specified by:

        `getSystemTypeMapping` in class `com.appiancorp.type.TypeMappingResolver<[TypeConverter](TypeConverter.html "class in com.appiancorp.suiteapi.common")>`

        Throws:

        `[InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")`

    -   ### createTypeConverterMappings

        public static void createTypeConverterMappings([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang"),[TypeConverter](TypeConverter.html "class in com.appiancorp.suiteapi.common")\> m)