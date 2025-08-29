---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/TypeConverter.html
original_path: api/com/appiancorp/suiteapi/common/TypeConverter.html
version: "25.3"
title: "Class TypeConverter"
page_id: "api/com/appiancorp/suiteapi/common/TypeConverter"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class TypeConverter

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.TypeConverter

All Implemented Interfaces:

`com.appiancorp.kougar.mapper.parameters.TypeParameterConversion`, `com.appiancorp.kougar.mapper.returns.TypeReturnConversion`, `com.appiancorp.kougar.mapper.TypeConverter`

* * *

public class TypeConverter extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements com.appiancorp.kougar.mapper.TypeConverter, com.appiancorp.kougar.mapper.parameters.TypeParameterConversion, com.appiancorp.kougar.mapper.returns.TypeReturnConversion

Base class for conversions between frontend and backend data representation.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected final [TypeService](../type/TypeService.html "interface in com.appiancorp.suiteapi.type")`

    `[aTypeService](#aTypeService)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[TypeConverter](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[convertParameter](#convertParameter\(com.appiancorp.kougar.mapper.parameters.ParameterConversionMap,java.lang.Long,java.lang.Object\))(com.appiancorp.kougar.mapper.parameters.ParameterConversionMap m, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)`

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[convertParameter](#convertParameter\(com.appiancorp.kougar.mapper.parameters.ParameterConversionMap,java.lang.Long,java.lang.Object,com.appiancorp.suiteapi.common.TypeConverterState\))(com.appiancorp.kougar.mapper.parameters.ParameterConversionMap m, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value, com.appiancorp.suiteapi.common.TypeConverterState state)`

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[convertReturn](#convertReturn\(com.appiancorp.kougar.mapper.returns.ReturnConversionMap,java.lang.Long,java.lang.Object\))(com.appiancorp.kougar.mapper.returns.ReturnConversionMap m, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)`

    `protected static [TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")`

    `[frontEndTypedValue](#frontEndTypedValue\(com.appiancorp.suiteapi.type.TypedValue\))([TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type") tv)`

    `protected static [TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")`

    `[frontEndTypedValue](#frontEndTypedValue\(java.lang.Long,java.lang.Object\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)`

    `protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getParameter](#getParameter\(com.appiancorp.kougar.mapper.parameters.ParameterConversionMap,java.lang.Long,java.lang.Object\))(com.appiancorp.kougar.mapper.parameters.ParameterConversionMap m, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)`

    `protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getReturn](#getReturn\(com.appiancorp.kougar.mapper.returns.ReturnConversionMap,java.lang.Long,java.lang.Object\))(com.appiancorp.kougar.mapper.returns.ReturnConversionMap m, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)`

    `protected com.appiancorp.kougar.mapper.parameters.TypeParameterConversion`

    `[getTypeParameterConversion](#getTypeParameterConversion\(com.appiancorp.kougar.mapper.parameters.ParameterConversionMap,java.lang.Long\))(com.appiancorp.kougar.mapper.parameters.ParameterConversionMap m, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId)`

    `protected com.appiancorp.kougar.mapper.returns.TypeReturnConversion`

    `[getTypeReturnConversion](#getTypeReturnConversion\(com.appiancorp.kougar.mapper.returns.ReturnConversionMap,java.lang.Long\))(com.appiancorp.kougar.mapper.returns.ReturnConversionMap m, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### aTypeService

        protected final [TypeService](../type/TypeService.html "interface in com.appiancorp.suiteapi.type") aTypeService

-   ## Constructor Details

    -   ### TypeConverter

        public TypeConverter()

-   ## Method Details

    -   ### convertParameter

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") convertParameter(com.appiancorp.kougar.mapper.parameters.ParameterConversionMap m, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value, com.appiancorp.suiteapi.common.TypeConverterState state) throws [InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Throws:

        `[InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")`

    -   ### convertParameter

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") convertParameter(com.appiancorp.kougar.mapper.parameters.ParameterConversionMap m, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value) throws [InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Specified by:

        `convertParameter` in interface `com.appiancorp.kougar.mapper.TypeConverter`

        Specified by:

        `convertParameter` in interface `com.appiancorp.kougar.mapper.parameters.TypeParameterConversion`

        Throws:

        `[InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")`

    -   ### convertReturn

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") convertReturn(com.appiancorp.kougar.mapper.returns.ReturnConversionMap m, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value) throws [InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Specified by:

        `convertReturn` in interface `com.appiancorp.kougar.mapper.TypeConverter`

        Specified by:

        `convertReturn` in interface `com.appiancorp.kougar.mapper.returns.TypeReturnConversion`

        Throws:

        `[InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")`

    -   ### getTypeParameterConversion

        protected com.appiancorp.kougar.mapper.parameters.TypeParameterConversion getTypeParameterConversion(com.appiancorp.kougar.mapper.parameters.ParameterConversionMap m, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId) throws [InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Throws:

        `[InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")`

    -   ### getParameter

        protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getParameter(com.appiancorp.kougar.mapper.parameters.ParameterConversionMap m, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value) throws [InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Throws:

        `[InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")`

    -   ### getTypeReturnConversion

        protected com.appiancorp.kougar.mapper.returns.TypeReturnConversion getTypeReturnConversion(com.appiancorp.kougar.mapper.returns.ReturnConversionMap m, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId) throws [InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Throws:

        `[InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")`

    -   ### getReturn

        protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getReturn(com.appiancorp.kougar.mapper.returns.ReturnConversionMap m, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value) throws [InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Throws:

        `[InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")`

    -   ### frontEndTypedValue

        protected static [TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type") frontEndTypedValue([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") typeId, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)

    -   ### frontEndTypedValue

        protected static [TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type") frontEndTypedValue([TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type") tv)