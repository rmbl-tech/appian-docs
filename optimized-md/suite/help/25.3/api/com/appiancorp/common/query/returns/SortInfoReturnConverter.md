---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/returns/SortInfoReturnConverter.html
original_path: api/com/appiancorp/common/query/returns/SortInfoReturnConverter.html
version: "25.3"
---

Package [com.appiancorp.common.query.returns](package-summary.html)

# Class SortInfoReturnConverter

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.kougar.mapper.returns.AbstractReturnConverter

com.appiancorp.common.query.returns.SortInfoReturnConverter

All Implemented Interfaces:

`com.appiancorp.kougar.mapper.Converter`, `com.appiancorp.kougar.mapper.returns.FromDictionary`, `com.appiancorp.kougar.mapper.returns.FromNull`, `com.appiancorp.kougar.mapper.returns.ReturnConverter`

* * *

public class SortInfoReturnConverter extends com.appiancorp.kougar.mapper.returns.AbstractReturnConverter implements com.appiancorp.kougar.mapper.returns.FromNull, com.appiancorp.kougar.mapper.returns.FromDictionary

-   ## Field Summary

    ### Fields inherited from interface com.appiancorp.kougar.mapper.Converter

    `NULL_DOUBLE, NULL_INT, NULL_INTEGER, NULL_INTEGER_LONG, NULL_STRING`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[SortInfoReturnConverter](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[convert](#convert\(java.lang.Class,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") c, com.appiancorp.kougar.mapper.returns.ReturnConversionMap m)`

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[convert](#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") c, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util") l, com.appiancorp.kougar.mapper.returns.ReturnConversionMap m)`

    `[Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")`

    `[getConversionClass](#getConversionClass\(\))()`

    ### Methods inherited from class com.appiancorp.kougar.mapper.returns.AbstractReturnConverter

    `convert, findInList, getClassFromString`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### SortInfoReturnConverter

        public SortInfoReturnConverter()

-   ## Method Details

    -   ### getConversionClass

        public [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") getConversionClass()

        Specified by:

        `getConversionClass` in interface `com.appiancorp.kougar.mapper.Converter`

    -   ### convert

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") convert([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") c, com.appiancorp.kougar.mapper.returns.ReturnConversionMap m) throws com.appiancorp.kougar.mapper.exceptions.ReturnException

        Specified by:

        `convert` in interface `com.appiancorp.kougar.mapper.returns.FromNull`

        Throws:

        `com.appiancorp.kougar.mapper.exceptions.ReturnException`

    -   ### convert

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") convert([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") c, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util") l, com.appiancorp.kougar.mapper.returns.ReturnConversionMap m) throws com.appiancorp.kougar.mapper.exceptions.ReturnException

        Specified by:

        `convert` in interface `com.appiancorp.kougar.mapper.returns.FromDictionary`

        Throws:

        `com.appiancorp.kougar.mapper.exceptions.ReturnException`