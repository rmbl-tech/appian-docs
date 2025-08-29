---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/PvReturnConverter.html
original_path: api/com/appiancorp/suiteapi/process/PvReturnConverter.html
version: "25.3"
title: "Class PvReturnConverter"
page_id: "api/com/appiancorp/suiteapi/process/PvReturnConverter"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class PvReturnConverter

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.kougar.mapper.returns.AbstractReturnConverter

[com.appiancorp.suiteapi.common.NamedTypedValueReturnConverter](../common/NamedTypedValueReturnConverter.html "class in com.appiancorp.suiteapi.common")

[com.appiancorp.suiteapi.process.TvReturnConverter](TvReturnConverter.html "class in com.appiancorp.suiteapi.process")

com.appiancorp.suiteapi.process.PvReturnConverter

All Implemented Interfaces:

`com.appiancorp.kougar.mapper.Converter`, `com.appiancorp.kougar.mapper.returns.FromDictionary`, `com.appiancorp.kougar.mapper.returns.FromNull`, `com.appiancorp.kougar.mapper.returns.ReturnConverter`

Direct Known Subclasses:

`[PvInstancesReturnConverter](PvInstancesReturnConverter.html "class in com.appiancorp.suiteapi.process")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class PvReturnConverter extends [TvReturnConverter](TvReturnConverter.html "class in com.appiancorp.suiteapi.process") implements com.appiancorp.kougar.mapper.returns.FromNull, com.appiancorp.kougar.mapper.returns.FromDictionary

Deprecated.

Return converter for a ProcessVariable to handle the polymorphic _value_ field based on _type_.

-   ## Field Summary

    ### Fields inherited from interface com.appiancorp.kougar.mapper.Converter

    `NULL_DOUBLE, NULL_INTEGER, NULL_INTEGER_LONG, NULL_STRING`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[PvReturnConverter](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `protected [TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")`

    `[convert](#convert\(com.appiancorp.kougar.mapper.returns.ReturnConversionMap,java.lang.Long,java.lang.Object\))(com.appiancorp.kougar.mapper.returns.ReturnConversionMap m_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") instanceType_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)`

    `protected [TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")`

    `[convert](#convert\(com.appiancorp.kougar.mapper.returns.ReturnConversionMap,java.lang.Object,java.lang.Object\))(com.appiancorp.kougar.mapper.returns.ReturnConversionMap m_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") instanceTypeObject_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)`

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[convert](#convert\(java.lang.Class,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") d_, com.appiancorp.kougar.mapper.returns.ReturnConversionMap m_)`

    Deprecated.

    convert method if no list is provided

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[convert](#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") d_, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util") l_, com.appiancorp.kougar.mapper.returns.ReturnConversionMap m_)`

    Deprecated.

    convert method if list is provided

    `protected void`

    `[fillProcessVariable](#fillProcessVariable\(java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap,com.appiancorp.suiteapi.process.ProcessVariable,java.util.Map\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util") l_, com.appiancorp.kougar.mapper.returns.ReturnConversionMap m_, [ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process") pv, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") a)`

    Deprecated.

     

    `[Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")`

    `[getConversionClass](#getConversionClass\(\))()`

    Deprecated.

    provides the Converter with the conversion class type

    `protected [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")`

    `[getValueClass](#getValueClass\(com.appiancorp.suiteapi.process.ProcessVariable\))([ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process") pv)`

    Deprecated.

     

    `protected static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[integerToLong](#integerToLong\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") i_)`

    Deprecated.

     

    `protected static void`

    `[setBaseAttributes](#setBaseAttributes\(com.appiancorp.suiteapi.process.TypedVariable,java.util.Map\))([TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process") tv_, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") attributes_)`

    Deprecated.

    Sets the key, type, and isPossiblyMultiple properties of the given tv to the corresponding properties in the given map.

    `protected static boolean`

    `[toBoolean](#toBoolean\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") param_)`

    Deprecated.

     

    ### Methods inherited from class com.appiancorp.suiteapi.common.[NamedTypedValueReturnConverter](../common/NamedTypedValueReturnConverter.html "class in com.appiancorp.suiteapi.common")

    `[convert](../common/NamedTypedValueReturnConverter.html#convert\(com.appiancorp.kougar.mapper.returns.ReturnConversionMap,java.lang.String,java.lang.Object,java.lang.Object\))`

    ### Methods inherited from class com.appiancorp.kougar.mapper.returns.AbstractReturnConverter

    `convert, findInList, getClassFromString`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### PvReturnConverter

        public PvReturnConverter()

        Deprecated.

-   ## Method Details

    -   ### getConversionClass

        public [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") getConversionClass()

        Deprecated.

        provides the Converter with the conversion class type

        Specified by:

        `getConversionClass` in interface `com.appiancorp.kougar.mapper.Converter`

        Overrides:

        `[getConversionClass](TvReturnConverter.html#getConversionClass\(\))` in class `[TvReturnConverter](TvReturnConverter.html "class in com.appiancorp.suiteapi.process")`

    -   ### convert

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") convert([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") d\_, com.appiancorp.kougar.mapper.returns.ReturnConversionMap m\_)

        Deprecated.

        convert method if no list is provided

        Specified by:

        `convert` in interface `com.appiancorp.kougar.mapper.returns.FromNull`

        Overrides:

        `[convert](TvReturnConverter.html#convert\(java.lang.Class,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\))` in class `[TvReturnConverter](TvReturnConverter.html "class in com.appiancorp.suiteapi.process")`

    -   ### setBaseAttributes

        protected static void setBaseAttributes([TypedVariable](TypedVariable.html "class in com.appiancorp.suiteapi.process") tv\_, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") attributes\_)

        Deprecated.

        Sets the key, type, and isPossiblyMultiple properties of the given tv to the corresponding properties in the given map. Other classes in this package use this method when converting other types of typed variables.

        Parameters:

        `tv_` - a typed variable

        `attributes_` - a map of attributes coming from K

    -   ### convert

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") convert([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") d\_, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util") l\_, com.appiancorp.kougar.mapper.returns.ReturnConversionMap m\_) throws com.appiancorp.kougar.mapper.exceptions.ReturnException

        Deprecated.

        convert method if list is provided

        Specified by:

        `convert` in interface `com.appiancorp.kougar.mapper.returns.FromDictionary`

        Overrides:

        `[convert](TvReturnConverter.html#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\))` in class `[TvReturnConverter](TvReturnConverter.html "class in com.appiancorp.suiteapi.process")`

        Throws:

        `com.appiancorp.kougar.mapper.exceptions.ReturnException`

    -   ### fillProcessVariable

        protected void fillProcessVariable([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util") l\_, com.appiancorp.kougar.mapper.returns.ReturnConversionMap m\_, [ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process") pv, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") a)

        Deprecated.

    -   ### getValueClass

        protected [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") getValueClass([ProcessVariable](ProcessVariable.html "class in com.appiancorp.suiteapi.process") pv)

        Deprecated.

    -   ### integerToLong

        protected static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") integerToLong([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") i\_)

        Deprecated.

    -   ### toBoolean

        protected static boolean toBoolean([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") param\_)

        Deprecated.

    -   ### convert

        protected [TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type") convert(com.appiancorp.kougar.mapper.returns.ReturnConversionMap m\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") instanceTypeObject\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value) throws [InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Throws:

        `[InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")`

    -   ### convert

        protected [TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type") convert(com.appiancorp.kougar.mapper.returns.ReturnConversionMap m\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") instanceType\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value) throws [InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Throws:

        `[InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")`