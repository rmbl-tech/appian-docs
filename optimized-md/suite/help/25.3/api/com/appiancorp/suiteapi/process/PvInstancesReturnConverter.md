---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/PvInstancesReturnConverter.html
original_path: api/com/appiancorp/suiteapi/process/PvInstancesReturnConverter.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class PvInstancesReturnConverter

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.kougar.mapper.returns.AbstractReturnConverter

[com.appiancorp.suiteapi.common.NamedTypedValueReturnConverter](../common/NamedTypedValueReturnConverter.html "class in com.appiancorp.suiteapi.common")

[com.appiancorp.suiteapi.process.TvReturnConverter](TvReturnConverter.html "class in com.appiancorp.suiteapi.process")

[com.appiancorp.suiteapi.process.PvReturnConverter](PvReturnConverter.html "class in com.appiancorp.suiteapi.process")

com.appiancorp.suiteapi.process.PvInstancesReturnConverter

All Implemented Interfaces:

`com.appiancorp.kougar.mapper.Converter`, `com.appiancorp.kougar.mapper.returns.FromDictionary`, `com.appiancorp.kougar.mapper.returns.FromNull`, `com.appiancorp.kougar.mapper.returns.ReturnConverter`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class PvInstancesReturnConverter extends [PvReturnConverter](PvReturnConverter.html "class in com.appiancorp.suiteapi.process")

Deprecated.

-   ## Field Summary

    ### Fields inherited from interface com.appiancorp.kougar.mapper.Converter

    `NULL_DOUBLE, NULL_INTEGER, NULL_INTEGER_LONG, NULL_STRING`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[PvInstancesReturnConverter](#%3Cinit%3E\(\))()`

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

    `[convert](#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") c_, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util") l_, com.appiancorp.kougar.mapper.returns.ReturnConversionMap m_)`

    Deprecated.

    convert method if list is provided

    `[Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")`

    `[getConversionClass](#getConversionClass\(\))()`

    Deprecated.

    provides the Converter with the conversion class type

    ### Methods inherited from class com.appiancorp.suiteapi.process.[PvReturnConverter](PvReturnConverter.html "class in com.appiancorp.suiteapi.process")

    `[convert](PvReturnConverter.html#convert\(java.lang.Class,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\)), [fillProcessVariable](PvReturnConverter.html#fillProcessVariable\(java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap,com.appiancorp.suiteapi.process.ProcessVariable,java.util.Map\)), [getValueClass](PvReturnConverter.html#getValueClass\(com.appiancorp.suiteapi.process.ProcessVariable\)), [integerToLong](PvReturnConverter.html#integerToLong\(java.lang.Integer\)), [setBaseAttributes](PvReturnConverter.html#setBaseAttributes\(com.appiancorp.suiteapi.process.TypedVariable,java.util.Map\)), [toBoolean](PvReturnConverter.html#toBoolean\(java.lang.Object\))`

    ### Methods inherited from class com.appiancorp.suiteapi.common.[NamedTypedValueReturnConverter](../common/NamedTypedValueReturnConverter.html "class in com.appiancorp.suiteapi.common")

    `[convert](../common/NamedTypedValueReturnConverter.html#convert\(com.appiancorp.kougar.mapper.returns.ReturnConversionMap,java.lang.String,java.lang.Object,java.lang.Object\))`

    ### Methods inherited from class com.appiancorp.kougar.mapper.returns.AbstractReturnConverter

    `convert, findInList, getClassFromString`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### PvInstancesReturnConverter

        public PvInstancesReturnConverter()

        Deprecated.

-   ## Method Details

    -   ### convert

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") convert([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") c\_, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util") l\_, com.appiancorp.kougar.mapper.returns.ReturnConversionMap m\_) throws com.appiancorp.kougar.mapper.exceptions.ReturnException

        Deprecated.

        Description copied from class: `[PvReturnConverter](PvReturnConverter.html#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\))`

        convert method if list is provided

        Specified by:

        `convert` in interface `com.appiancorp.kougar.mapper.returns.FromDictionary`

        Overrides:

        `[convert](PvReturnConverter.html#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\))` in class `[PvReturnConverter](PvReturnConverter.html "class in com.appiancorp.suiteapi.process")`

        Throws:

        `com.appiancorp.kougar.mapper.exceptions.ReturnException`

    -   ### getConversionClass

        public [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") getConversionClass()

        Deprecated.

        Description copied from class: `[PvReturnConverter](PvReturnConverter.html#getConversionClass\(\))`

        provides the Converter with the conversion class type

        Specified by:

        `getConversionClass` in interface `com.appiancorp.kougar.mapper.Converter`

        Overrides:

        `[getConversionClass](PvReturnConverter.html#getConversionClass\(\))` in class `[PvReturnConverter](PvReturnConverter.html "class in com.appiancorp.suiteapi.process")`

    -   ### convert

        protected [TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type") convert(com.appiancorp.kougar.mapper.returns.ReturnConversionMap m\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") instanceTypeObject\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value) throws [InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Throws:

        `[InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")`

    -   ### convert

        protected [TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type") convert(com.appiancorp.kougar.mapper.returns.ReturnConversionMap m\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") instanceType\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value) throws [InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Throws:

        `[InvalidTypeException](../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")`