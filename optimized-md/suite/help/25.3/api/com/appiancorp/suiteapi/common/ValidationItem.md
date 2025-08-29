---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/ValidationItem.html
original_path: api/com/appiancorp/suiteapi/common/ValidationItem.html
version: "25.3"
title: "Class ValidationItem"
page_id: "api/com/appiancorp/suiteapi/common/ValidationItem"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class ValidationItem

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.ValidationItem

* * *

public class ValidationItem extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

A `ValidationItem` associates a `ValidationCode` to the the supplied parameters. A call to [`getMessage(Locale)`](#getMessage\(java.util.Locale\)) returns the message associated with the `ValidationCode` passing the parameters to the `ValidationCode#getMessage(Locale, Object[])` method. `ValidationItem`s are to `ValidationCode`s what `ErrorCode`s are to `AppianException`s (a transport mechanism for [`AppianErrorCode`](../../exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions"))

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ValidationItem](#%3Cinit%3E\(com.appiancorp.suiteapi.common.ValidationCode\))([ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") code)`

    `[ValidationItem](#%3Cinit%3E\(com.appiancorp.suiteapi.common.ValidationCode,java.lang.Object...\))([ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") validationCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... validationCodeParams)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj_)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMessage](#getMessage\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

    Returns this validation items's message representation.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMessageWithValidationCode](#getMessageWithValidationCode\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

    Returns this validation items's default message representation with validation code information.

    `[ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common")`

    `[getValidationCode](#getValidationCode\(\))()`

    Gets the validation code that must be used to render this validation items's message representation.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[]`

    `[getValidationCodeParams](#getValidationCodeParams\(\))()`

    Gets the arguments that must be used to render this validation items's message representation.

    `int`

    `[hashCode](#hashCode\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Could be used for logging

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ValidationItem

        public ValidationItem([ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") code)

    -   ### ValidationItem

        public ValidationItem([ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") validationCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... validationCodeParams)

-   ## Method Details

    -   ### getValidationCode

        public [ValidationCode](ValidationCode.html "class in com.appiancorp.suiteapi.common") getValidationCode()

        Gets the validation code that must be used to render this validation items's message representation.

        Returns:

        the validation code tied to this validation item

    -   ### getValidationCodeParams

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] getValidationCodeParams()

        Gets the arguments that must be used to render this validation items's message representation.

        Returns:

        the arguments of the validation code tied to this validation item

    -   ### getMessage

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMessage([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)

        Returns this validation items's message representation. **This method should be used whenever the message is to be displayed to the end user**. The default representation do not include any validation code information because this may be rendered in different ways across the application. If needed, the validation items's validation code can be retrieved from [`getValidationCode()`](#getValidationCode\(\)).

        Parameters:

        `locale` - message's locale

        Returns:

        this validation item's message representation

        See Also:

        -   [`toString()`](#toString\(\))

    -   ### getMessageWithValidationCode

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMessageWithValidationCode([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)

        Returns this validation items's default message representation with validation code information. This method could be used whenever the message is to be displayed to the end user. Although the default representation [`getMessage(Locale)`](#getMessage\(java.util.Locale\)) does not include any error code information, as the representation could vary in different ways across the application, this method provides a utility for a representation with validation code. **Be sure while using this method as the requirements could vary, in which case use [`getMessage(Locale)`](#getMessage\(java.util.Locale\)) in conjunction with [`getValidationCode()`](#getValidationCode\(\))**.

        Parameters:

        `locale` - message's locale

        Returns:

        this validation items's default message representation with validation code

        See Also:

        -   [`getMessage(Locale)`](#getMessage\(java.util.Locale\))

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Could be used for logging

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj\_)

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`