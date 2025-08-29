---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/messaging/MappingReturnConverter.html
original_path: api/com/appiancorp/suiteapi/messaging/MappingReturnConverter.html
version: "25.3"
title: "Class MappingReturnConverter"
page_id: "api/com/appiancorp/suiteapi/messaging/MappingReturnConverter"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.messaging](package-summary.html)

# Class MappingReturnConverter

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.kougar.mapper.returns.AbstractReturnConverter

[com.appiancorp.suiteapi.common.NamedTypedValueReturnConverter](../common/NamedTypedValueReturnConverter.html "class in com.appiancorp.suiteapi.common")

[com.appiancorp.suiteapi.process.TvReturnConverter](../process/TvReturnConverter.html "class in com.appiancorp.suiteapi.process")

com.appiancorp.suiteapi.messaging.MappingReturnConverter

All Implemented Interfaces:

`com.appiancorp.kougar.mapper.Converter`, `com.appiancorp.kougar.mapper.returns.FromDictionary`, `com.appiancorp.kougar.mapper.returns.FromNull`, `com.appiancorp.kougar.mapper.returns.ReturnConverter`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class MappingReturnConverter extends [TvReturnConverter](../process/TvReturnConverter.html "class in com.appiancorp.suiteapi.process") implements com.appiancorp.kougar.mapper.returns.FromNull, com.appiancorp.kougar.mapper.returns.FromDictionary

Deprecated.

Return converter for converting data from the database format to a [`Mapping`](Mapping.html "class in com.appiancorp.suiteapi.messaging") object. Used when data is returned from a database API method.

-   ## Field Summary

    ### Fields inherited from interface com.appiancorp.kougar.mapper.Converter

    `NULL_DOUBLE, NULL_INTEGER, NULL_INTEGER_LONG, NULL_STRING`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[MappingReturnConverter](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `protected [TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")`

    `[convert](#convert\(com.appiancorp.kougar.mapper.returns.ReturnConversionMap,java.lang.Long,java.lang.Object\))(com.appiancorp.kougar.mapper.returns.ReturnConversionMap m_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") instanceType_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)`

    `protected [TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")`

    `[convert](#convert\(com.appiancorp.kougar.mapper.returns.ReturnConversionMap,java.lang.Object,java.lang.Object\))(com.appiancorp.kougar.mapper.returns.ReturnConversionMap m_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") instanceTypeObject_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)`

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[convert](#convert\(java.lang.Class,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") c_, com.appiancorp.kougar.mapper.returns.ReturnConversionMap m_)`

    Deprecated.

    Converts null to a [`Mapping`](Mapping.html "class in com.appiancorp.suiteapi.messaging") object (always returns `null`).

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[convert](#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") targetClass_, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util") l_, com.appiancorp.kougar.mapper.returns.ReturnConversionMap m_)`

    Deprecated.

    Converts the database-format data to a [`Mapping`](Mapping.html "class in com.appiancorp.suiteapi.messaging") object.

    `[Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")`

    `[getConversionClass](#getConversionClass\(\))()`

    Deprecated.

    Gets the class that it can convert to ([`Mapping`](Mapping.html "class in com.appiancorp.suiteapi.messaging")).

    ### Methods inherited from class com.appiancorp.suiteapi.common.[NamedTypedValueReturnConverter](../common/NamedTypedValueReturnConverter.html "class in com.appiancorp.suiteapi.common")

    `[convert](../common/NamedTypedValueReturnConverter.html#convert\(com.appiancorp.kougar.mapper.returns.ReturnConversionMap,java.lang.String,java.lang.Object,java.lang.Object\))`

    ### Methods inherited from class com.appiancorp.kougar.mapper.returns.AbstractReturnConverter

    `convert, findInList, getClassFromString`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### MappingReturnConverter

        public MappingReturnConverter()

        Deprecated.

-   ## Method Details

    -   ### convert

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") convert([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") c\_, com.appiancorp.kougar.mapper.returns.ReturnConversionMap m\_) throws com.appiancorp.kougar.mapper.exceptions.ReturnException

        Deprecated.

        Converts null to a [`Mapping`](Mapping.html "class in com.appiancorp.suiteapi.messaging") object (always returns `null`).

        Specified by:

        `convert` in interface `com.appiancorp.kougar.mapper.returns.FromNull`

        Overrides:

        `[convert](../process/TvReturnConverter.html#convert\(java.lang.Class,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\))` in class `[TvReturnConverter](../process/TvReturnConverter.html "class in com.appiancorp.suiteapi.process")`

        Parameters:

        `c_` - the class to convert to

        `m_` - the return conversion map

        Returns:

        `null`

        Throws:

        `com.appiancorp.kougar.mapper.exceptions.ReturnException` - if anything goes wrong

    -   ### convert

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") convert([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") targetClass\_, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util") l\_, com.appiancorp.kougar.mapper.returns.ReturnConversionMap m\_) throws com.appiancorp.kougar.mapper.exceptions.ReturnException

        Deprecated.

        Converts the database-format data to a [`Mapping`](Mapping.html "class in com.appiancorp.suiteapi.messaging") object.

        Specified by:

        `convert` in interface `com.appiancorp.kougar.mapper.returns.FromDictionary`

        Overrides:

        `[convert](../process/TvReturnConverter.html#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\))` in class `[TvReturnConverter](../process/TvReturnConverter.html "class in com.appiancorp.suiteapi.process")`

        Parameters:

        `targetClass_` - the class to convert to

        `l_` - the data in database format

        `m_` - the return conversion map

        Returns:

        the new [`Mapping`](Mapping.html "class in com.appiancorp.suiteapi.messaging") object

        Throws:

        `com.appiancorp.kougar.mapper.exceptions.ReturnException` - if anything goes wrong

    -   ### getConversionClass

        public [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") getConversionClass()

        Deprecated.

        Gets the class that it can convert to ([`Mapping`](Mapping.html "class in com.appiancorp.suiteapi.messaging")).

        Specified by:

        `getConversionClass` in interface `com.appiancorp.kougar.mapper.Converter`

        Overrides:

        `[getConversionClass](../process/TvReturnConverter.html#getConversionClass\(\))` in class `[TvReturnConverter](../process/TvReturnConverter.html "class in com.appiancorp.suiteapi.process")`

        Returns:

        `Mapping.class`

    -   ### convert

        protected [TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type") convert(com.appiancorp.kougar.mapper.returns.ReturnConversionMap m\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") instanceTypeObject\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value) throws [InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Throws:

        `[InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")`

    -   ### convert

        protected [TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type") convert(com.appiancorp.kougar.mapper.returns.ReturnConversionMap m\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") instanceType\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value) throws [InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Throws:

        `[InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")`