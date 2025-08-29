---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/events/EventTriggerReturnConverter.html
original_path: api/com/appiancorp/suiteapi/process/events/EventTriggerReturnConverter.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.events](package-summary.html)

# Class EventTriggerReturnConverter

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.kougar.mapper.returns.AbstractReturnConverter

com.appiancorp.suiteapi.process.events.EventTriggerReturnConverter

All Implemented Interfaces:

`com.appiancorp.kougar.mapper.Converter`, `com.appiancorp.kougar.mapper.returns.FromDictionary`, `com.appiancorp.kougar.mapper.returns.FromNull`, `com.appiancorp.kougar.mapper.returns.ReturnConverter`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class EventTriggerReturnConverter extends com.appiancorp.kougar.mapper.returns.AbstractReturnConverter implements com.appiancorp.kougar.mapper.returns.FromDictionary, com.appiancorp.kougar.mapper.returns.FromNull

Deprecated.

Return converter for converting data from the database format to an [`EventTrigger`](EventTrigger.html "class in com.appiancorp.suiteapi.process.events") object. Used when data is returned from a database API method.

-   ## Field Summary

    ### Fields inherited from interface com.appiancorp.kougar.mapper.Converter

    `NULL_DOUBLE, NULL_INT, NULL_INTEGER, NULL_INTEGER_LONG, NULL_STRING`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[EventTriggerReturnConverter](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[convert](#convert\(java.lang.Class,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") c_, com.appiancorp.kougar.mapper.returns.ReturnConversionMap m_)`

    Deprecated.

    Converts `null` to an [`EventTrigger`](EventTrigger.html "class in com.appiancorp.suiteapi.process.events") object.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[convert](#convert\(java.lang.Class,java.util.List,com.appiancorp.kougar.mapper.returns.ReturnConversionMap\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") targetClass_, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util") l_, com.appiancorp.kougar.mapper.returns.ReturnConversionMap m_)`

    Deprecated.

    Converts the database-format data to an [`EventTrigger`](EventTrigger.html "class in com.appiancorp.suiteapi.process.events") object.

    `[Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")`

    `[getConversionClass](#getConversionClass\(\))()`

    Deprecated.

    Gets the class that it can convert to ([`EventTrigger`](EventTrigger.html "class in com.appiancorp.suiteapi.process.events")).

    ### Methods inherited from class com.appiancorp.kougar.mapper.returns.AbstractReturnConverter

    `convert, findInList, getClassFromString`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### EventTriggerReturnConverter

        public EventTriggerReturnConverter()

        Deprecated.

-   ## Method Details

    -   ### convert

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") convert([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") c\_, com.appiancorp.kougar.mapper.returns.ReturnConversionMap m\_) throws com.appiancorp.kougar.mapper.exceptions.ReturnException

        Deprecated.

        Converts `null` to an [`EventTrigger`](EventTrigger.html "class in com.appiancorp.suiteapi.process.events") object. This method always returns `null`.

        Specified by:

        `convert` in interface `com.appiancorp.kougar.mapper.returns.FromNull`

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

        Converts the database-format data to an [`EventTrigger`](EventTrigger.html "class in com.appiancorp.suiteapi.process.events") object.

        Specified by:

        `convert` in interface `com.appiancorp.kougar.mapper.returns.FromDictionary`

        Parameters:

        `targetClass_` - the class to convert to

        `l_` - the data in database format

        `m_` - the return conversion map

        Returns:

        the new [`EventTrigger`](EventTrigger.html "class in com.appiancorp.suiteapi.process.events") object

        Throws:

        `com.appiancorp.kougar.mapper.exceptions.ReturnException` - if the type is `null` or anything goes wrong

    -   ### getConversionClass

        public [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") getConversionClass()

        Deprecated.

        Gets the class that it can convert to ([`EventTrigger`](EventTrigger.html "class in com.appiancorp.suiteapi.process.events")).

        Specified by:

        `getConversionClass` in interface `com.appiancorp.kougar.mapper.Converter`

        Returns:

        `EventTrigger.class`