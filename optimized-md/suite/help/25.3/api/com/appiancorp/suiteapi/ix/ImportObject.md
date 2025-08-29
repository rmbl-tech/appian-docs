---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/ix/ImportObject.html
original_path: api/com/appiancorp/suiteapi/ix/ImportObject.html
version: "25.3"
title: "Class ImportObject"
page_id: "api/com/appiancorp/suiteapi/ix/ImportObject"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.ix](package-summary.html)

# Class ImportObject

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.ix.ImportObject

* * *

public final class ImportObject extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Represents the resulting object after an import or inspect operation.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ImportObject](#%3Cinit%3E\(java.lang.Long,java.lang.String,java.lang.String,com.appiancorp.suiteapi.common.LocaleString,java.lang.Long,java.util.Locale,java.lang.Throwable\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") datatypeName, [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") nameLocalized, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") throwable)`

    `[ImportObject](#%3Cinit%3E\(java.lang.Object,java.lang.String,java.lang.String,com.appiancorp.suiteapi.common.LocaleString,java.lang.Long,java.util.Locale,java.lang.Throwable\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") datatypeName, [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") nameLocalized, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") throwable)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[containsError](#containsError\(com.appiancorp.suiteapi.common.exceptions.ErrorCode\))([ErrorCode](../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ec)`

    Checks whether a particular error was thrown while inspecting or importing this object.

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getErrorMessage](#getErrorMessage\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") targetLocale)`

    Returns the localized error message as it is displayed in Appian interfaces.

    `[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")`

    `[getException](#getException\(\))()`

    The exception thrown while inspecting or importing this object, if any.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Deprecated.

    use [`getObjectId()`](#getObjectId\(\))

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    The name of the imported or inspected object using the system locale.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") targetLocale)`

    The name of the imported or inspected object based on a custom locale.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getObjectId](#getObjectId\(\))()`

    The ID of type Object of the imported or inspected object.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getType](#getType\(\))()`

    The type of the imported object.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUuid](#getUuid\(\))()`

    The universal identifier of the imported or inspected object.

    `int`

    `[hashCode](#hashCode\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ImportObject

        public ImportObject([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") datatypeName, [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") nameLocalized, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") throwable)

    -   ### ImportObject

        public ImportObject([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") datatypeName, [LocaleString](../common/LocaleString.html "class in com.appiancorp.suiteapi.common") nameLocalized, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") throwable)

-   ## Method Details

    -   ### getId

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Deprecated.

        use [`getObjectId()`](#getObjectId\(\))

        The Long ID of the imported or inspected object.

        The ID will be null if the object does not exist on the system or is not of the type Long. If the object has an id that is not of type Long, use getObjectId instead. For inspect, this is any object that would be created. For both inspect and import, this is also any object that would have been created but failed instead.

        Returns:

        the local id.

    -   ### getObjectId

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getObjectId()

        The ID of type Object of the imported or inspected object.

        For any object that does not exist on the system, ID will be null. For inspect, this is any object that would be created. For both inspect and import, this is also any object that would have been created but failed instead.

        Returns:

        the local id.

    -   ### getUuid

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUuid()

        The universal identifier of the imported or inspected object.

        Returns:

        the UUID.

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        The name of the imported or inspected object using the system locale.

        Returns:

        name of the object in system locale.

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") targetLocale)

        The name of the imported or inspected object based on a custom locale. If the name does not exist in the requested locale, return the name of the object in the first available locale.

        Parameters:

        `targetLocale` - Locale of desired output name.

        Returns:

        name of the object in targetLocale or in the first available locale if targetLocale does not exist.

    -   ### getType

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getType()

        The type of the imported object. To see a list of Appian types, refer to [`AppianType`](../type/AppianType.html "interface in com.appiancorp.suiteapi.type"). Compare the result of getType() to AppianType by using getType().intValue() == AppianType.THE\_TYPE\_CONSTANT.

        Returns:

        type of the imported object.

    -   ### getException

        public [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") getException()

        The exception thrown while inspecting or importing this object, if any. This will be null if there was no error. The types of exceptions that may be returned by this method may change from release to release.

        Returns:

        exception if there is one thrown.

    -   ### containsError

        public boolean containsError([ErrorCode](../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") ec)

        Checks whether a particular error was thrown while inspecting or importing this object. This is used to check for known error cases during the import. This checks the entire nested series of AppianExceptions, stop either at the end of the chain or at the first exception that is not an AppianException. This will always be false when there is no error on this object.

        Parameters:

        `ec` - ErrorCode object to check against.

        Returns:

        boolean value of whether the error code exists in the current error object.

    -   ### getErrorMessage

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getErrorMessage([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") targetLocale)

        Returns the localized error message as it is displayed in Appian interfaces. This is used when errors during import should be displayed to users, and will display the first and second levels of error messages.

        Parameters:

        `targetLocale` - locale of the error message to retrieve.

        Returns:

        the error message with the locale.

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`