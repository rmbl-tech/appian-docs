---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/exceptions/LocaleFormatter.html
original_path: api/com/appiancorp/suiteapi/common/exceptions/LocaleFormatter.html
version: "25.3"
title: "Class LocaleFormatter"
page_id: "api/com/appiancorp/suiteapi/common/exceptions/LocaleFormatter"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common.exceptions](package-summary.html)

# Class LocaleFormatter

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.exceptions.LocaleFormatter

All Implemented Interfaces:

`[AppianErrorCodeStaticMessageFormatter](../../../exceptions/AppianErrorCodeStaticMessageFormatter.html "interface in com.appiancorp.exceptions")`, `[AppianErrorCodeTitleFormatter](../../../exceptions/AppianErrorCodeTitleFormatter.html "interface in com.appiancorp.exceptions")`, `[AppianErrorCodeFormatter](AppianErrorCodeFormatter.html "interface in com.appiancorp.suiteapi.common.exceptions")`

* * *

public class LocaleFormatter extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [AppianErrorCodeFormatter](AppianErrorCodeFormatter.html "interface in com.appiancorp.suiteapi.common.exceptions"), [AppianErrorCodeTitleFormatter](../../../exceptions/AppianErrorCodeTitleFormatter.html "interface in com.appiancorp.exceptions"), [AppianErrorCodeStaticMessageFormatter](../../../exceptions/AppianErrorCodeStaticMessageFormatter.html "interface in com.appiancorp.exceptions")

ErrorCodeFormatter based upon a Locale.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[LocaleFormatter](#%3Cinit%3E\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[format](#format\(com.appiancorp.exceptions.AppianErrorCode,java.lang.Object...\))([AppianErrorCode](../../../exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... arguments)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[formatStaticMessage](#formatStaticMessage\(com.appiancorp.exceptions.AppianErrorCode\))([AppianErrorCode](../../../exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions") errorCode)`

    Returns the localized static message if it exists.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[formatTitle](#formatTitle\(com.appiancorp.exceptions.AppianErrorCode,java.lang.Object...\))([AppianErrorCode](../../../exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... arguments)`

    Returns the localized title, rendered with the included arguments if the error title supports them.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getStaticMessageFromErrorCode](#getStaticMessageFromErrorCode\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") errorCode)`

    Returns the localized static message for a given error code string This method should NOT be used for strings that don't correspond to an ErrorCode (i.e. this will not work on ValidationCode)

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getText](#getText\(java.lang.Class,java.util.Locale,java.lang.String\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<?> clazz, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") targetLocale, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key)`

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getText](#getText\(java.lang.Class,java.util.Locale,java.lang.String,java.lang.Object%5B%5D\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<?> clazz, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") targetLocale, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[] params)`

    Manually fetch error code text Useful in case that the locale is not available in context and error code is not automatically converted to correct locale text

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### LocaleFormatter

        public LocaleFormatter([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)

-   ## Method Details

    -   ### format

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") format([AppianErrorCode](../../../exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... arguments)

        Specified by:

        `[format](AppianErrorCodeFormatter.html#format\(com.appiancorp.exceptions.AppianErrorCode,java.lang.Object...\))` in interface `[AppianErrorCodeFormatter](AppianErrorCodeFormatter.html "interface in com.appiancorp.suiteapi.common.exceptions")`

    -   ### formatTitle

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") formatTitle([AppianErrorCode](../../../exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... arguments)

        Returns the localized title, rendered with the included arguments if the error title supports them. If the title does not exist, the method returns "".

        Specified by:

        `[formatTitle](../../../exceptions/AppianErrorCodeTitleFormatter.html#formatTitle\(com.appiancorp.exceptions.AppianErrorCode,java.lang.Object...\))` in interface `[AppianErrorCodeTitleFormatter](../../../exceptions/AppianErrorCodeTitleFormatter.html "interface in com.appiancorp.exceptions")`

        Parameters:

        `errorCode` - The code corresponding to the thrown exception

        `arguments` - Additional parameters required to render the title

        Returns:

        The title, localized and rendered with the included arguments where applicable.

    -   ### formatStaticMessage

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") formatStaticMessage([AppianErrorCode](../../../exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions") errorCode)

        Returns the localized static message if it exists. Note that currently only ErrorCode objects have staticMessage set

        Specified by:

        `[formatStaticMessage](../../../exceptions/AppianErrorCodeStaticMessageFormatter.html#formatStaticMessage\(com.appiancorp.exceptions.AppianErrorCode\))` in interface `[AppianErrorCodeStaticMessageFormatter](../../../exceptions/AppianErrorCodeStaticMessageFormatter.html "interface in com.appiancorp.exceptions")`

        Parameters:

        `errorCode` - The code corresponding to the thrown exception

        Returns:

        The static message, localized.

    -   ### getStaticMessageFromErrorCode

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getStaticMessageFromErrorCode([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") errorCode)

        Returns the localized static message for a given error code string This method should NOT be used for strings that don't correspond to an ErrorCode (i.e. this will not work on ValidationCode)

        Specified by:

        `[getStaticMessageFromErrorCode](../../../exceptions/AppianErrorCodeStaticMessageFormatter.html#getStaticMessageFromErrorCode\(java.lang.String\))` in interface `[AppianErrorCodeStaticMessageFormatter](../../../exceptions/AppianErrorCodeStaticMessageFormatter.html "interface in com.appiancorp.exceptions")`

        Parameters:

        `errorCode` - string representation of an error code (should be equivalent to ErrorCode#toString)

        Returns:

        the localized static message for that error code

    -   ### getText

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getText([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<?> clazz, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") targetLocale, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] params)

        Manually fetch error code text Useful in case that the locale is not available in context and error code is not automatically converted to correct locale text

    -   ### getText

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getText([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<?> clazz, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") targetLocale, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key)