---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/exceptions/AppianErrorCode.html
original_path: api/com/appiancorp/exceptions/AppianErrorCode.html
version: "25.3"
---

Package [com.appiancorp.exceptions](package-summary.html)

# Class AppianErrorCode

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.exceptions.AppianErrorCode

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[ErrorCode](../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[ValidationCode](../suiteapi/common/ValidationCode.html "class in com.appiancorp.suiteapi.common")`

* * *

public abstract class AppianErrorCode extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

See Also:

-   [Serialized Form](../../../serialized-form.html#com.appiancorp.exceptions.AppianErrorCode)

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `protected static class` 

    `[AppianErrorCode.InvalidErrorCode](AppianErrorCode.InvalidErrorCode.html "class in com.appiancorp.exceptions")`

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `protected`

    `[AppianErrorCode](#%3Cinit%3E\(\))()`

    `protected`

    `[AppianErrorCode](#%3Cinit%3E\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") code)`

    `protected`

    `[AppianErrorCode](#%3Cinit%3E\(java.lang.String,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") code, boolean hasTitle)`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") other)`

    `int`

    `[getCategory](#getCategory\(\))()`

    `int`

    `[getDetail](#getDetail\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMessage](#getMessage\(com.appiancorp.suiteapi.common.exceptions.AppianErrorCodeFormatter,java.lang.Object...\))([AppianErrorCodeFormatter](../suiteapi/common/exceptions/AppianErrorCodeFormatter.html "interface in com.appiancorp.suiteapi.common.exceptions") callback, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... arguments)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMessageWithCode](#getMessageWithCode\(com.appiancorp.suiteapi.common.exceptions.AppianErrorCodeFormatter,java.lang.Object...\))([AppianErrorCodeFormatter](../suiteapi/common/exceptions/AppianErrorCodeFormatter.html "interface in com.appiancorp.suiteapi.common.exceptions") callback, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... arguments)`

    `int`

    `[getNamespace](#getNamespace\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getStaticMessage](#getStaticMessage\(com.appiancorp.exceptions.AppianErrorCodeStaticMessageFormatter\))([AppianErrorCodeStaticMessageFormatter](AppianErrorCodeStaticMessageFormatter.html "interface in com.appiancorp.exceptions") callback)`

    Returns the .staticMessage field from the properties file if it exists or the error code text if it does not Note: this function does not take in arguments, and therefore will always return the same message for a given error code

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTitle](#getTitle\(com.appiancorp.exceptions.AppianErrorCodeTitleFormatter,java.lang.Object...\))([AppianErrorCodeTitleFormatter](AppianErrorCodeTitleFormatter.html "interface in com.appiancorp.exceptions") callback, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... arguments)`

    `int`

    `[hashCode](#hashCode\(\))()`

    `final boolean`

    `[hasTitle](#hasTitle\(\))()`

    Indicates whether or not the given ErrorCode has a title corresponding to its message.

    `static [AppianErrorCode](AppianErrorCode.html "class in com.appiancorp.exceptions")`

    `[toErrorCode](#toErrorCode\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") code)`

    Returns the error code.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### AppianErrorCode

        protected AppianErrorCode()

    -   ### AppianErrorCode

        protected AppianErrorCode([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") code) throws [AppianErrorCode.InvalidErrorCode](AppianErrorCode.InvalidErrorCode.html "class in com.appiancorp.exceptions")

        Throws:

        `[AppianErrorCode.InvalidErrorCode](AppianErrorCode.InvalidErrorCode.html "class in com.appiancorp.exceptions")`

    -   ### AppianErrorCode

        protected AppianErrorCode([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") code, boolean hasTitle) throws [AppianErrorCode.InvalidErrorCode](AppianErrorCode.InvalidErrorCode.html "class in com.appiancorp.exceptions")

        Throws:

        `[AppianErrorCode.InvalidErrorCode](AppianErrorCode.InvalidErrorCode.html "class in com.appiancorp.exceptions")`

-   ## Method Details

    -   ### hasTitle

        public final boolean hasTitle()

        Indicates whether or not the given ErrorCode has a title corresponding to its message.

        Returns:

        true if the error code has a title

    -   ### toErrorCode

        public static [AppianErrorCode](AppianErrorCode.html "class in com.appiancorp.exceptions") toErrorCode([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") code)

        Returns the error code. Will return null if the error code is not found. Codes should generally be referenced explicitly from a static member of [`ErrorCode`](../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions"). This is used currently in GWT and PMM Connected Environments so the server can send down the string code of an ErrorCode and an instance can be returned from the string code. See https://source.appian.com/cru/CR-AE-1752#CFR-23290

        Parameters:

        `code` - The string representation of an error code, example APNX-1-0000-000

        Returns:

        An [`AppianErrorCode`](AppianErrorCode.html "class in com.appiancorp.exceptions")

    -   ### getNamespace

        public int getNamespace()

    -   ### getCategory

        public int getCategory()

    -   ### getDetail

        public int getDetail()

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") other)

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### getMessage

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMessage([AppianErrorCodeFormatter](../suiteapi/common/exceptions/AppianErrorCodeFormatter.html "interface in com.appiancorp.suiteapi.common.exceptions") callback, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... arguments)

    -   ### getTitle

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTitle([AppianErrorCodeTitleFormatter](AppianErrorCodeTitleFormatter.html "interface in com.appiancorp.exceptions") callback, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... arguments)

    -   ### getMessageWithCode

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMessageWithCode([AppianErrorCodeFormatter](../suiteapi/common/exceptions/AppianErrorCodeFormatter.html "interface in com.appiancorp.suiteapi.common.exceptions") callback, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... arguments)

    -   ### getStaticMessage

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getStaticMessage([AppianErrorCodeStaticMessageFormatter](AppianErrorCodeStaticMessageFormatter.html "interface in com.appiancorp.exceptions") callback)

        Returns the .staticMessage field from the properties file if it exists or the error code text if it does not Note: this function does not take in arguments, and therefore will always return the same message for a given error code

        Parameters:

        `callback` - formatter to get the static message

        Returns:

        static message for an error code